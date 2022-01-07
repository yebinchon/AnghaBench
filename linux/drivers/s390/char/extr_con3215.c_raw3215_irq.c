
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct raw3215_req {int len; int type; int residual; struct raw3215_info* info; } ;
struct raw3215_info {char* inbuf; int flags; int written; int count; int empty_wait; int * queued_read; int * queued_write; int port; } ;
struct TYPE_3__ {int cstat; int dstat; int count; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;
struct irb {TYPE_2__ scsw; } ;
struct ccw_device {int dev; } ;



 unsigned int CTRLCHAR_MASK ;


 int EBCASC (char*,int) ;
 int RAW3215_FREE ;
 int RAW3215_READ ;
 int RAW3215_WORKING ;
 int RAW3215_WRITE ;
 int TTY_NORMAL ;
 unsigned int ctrlchar_handle (char*,int,struct tty_struct*) ;
 struct raw3215_info* dev_get_drvdata (int *) ;
 int raw3215_free_req (struct raw3215_req*) ;
 int raw3215_mk_read_req (struct raw3215_info*) ;
 int raw3215_next_io (struct raw3215_info*,struct tty_struct*) ;
 int strncmp (int ,char*,int) ;
 int tty_flip_buffer_push (int *) ;
 int tty_insert_flip_char (int *,unsigned int,int ) ;
 int tty_insert_flip_string (int *,char*,int) ;
 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_port_tty_get (int *) ;
 int waitqueue_active (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void raw3215_irq(struct ccw_device *cdev, unsigned long intparm,
   struct irb *irb)
{
 struct raw3215_info *raw;
 struct raw3215_req *req;
 struct tty_struct *tty;
 int cstat, dstat;
 int count;

 raw = dev_get_drvdata(&cdev->dev);
 req = (struct raw3215_req *) intparm;
 tty = tty_port_tty_get(&raw->port);
 cstat = irb->scsw.cmd.cstat;
 dstat = irb->scsw.cmd.dstat;
 if (cstat != 0)
  raw3215_next_io(raw, tty);
 if (dstat & 0x01) {
  dstat &= ~0x01;
 }
 switch (dstat) {
 case 0x80:
  if (cstat != 0)
   break;

  raw3215_mk_read_req(raw);
  raw3215_next_io(raw, tty);
  break;
 case 0x08:
 case 0x0C:

  if ((raw = req->info) == ((void*)0))
   goto put_tty;
  if (req->type == RAW3215_READ) {

   req->residual = irb->scsw.cmd.count;
  }
  if (dstat == 0x08)
   break;

 case 0x04:

  if ((raw = req->info) == ((void*)0))
   goto put_tty;
  if (req->type == RAW3215_READ && tty != ((void*)0)) {
   unsigned int cchar;

   count = 160 - req->residual;
   EBCASC(raw->inbuf, count);
   cchar = ctrlchar_handle(raw->inbuf, count, tty);
   switch (cchar & CTRLCHAR_MASK) {
   case 128:
    break;

   case 130:
    tty_insert_flip_char(&raw->port, cchar,
      TTY_NORMAL);
    tty_flip_buffer_push(&raw->port);
    break;

   case 129:
    if (count < 2 ||
        (strncmp(raw->inbuf+count-2, "\252n", 2) &&
         strncmp(raw->inbuf+count-2, "^n", 2)) ) {

     raw->inbuf[count] = '\n';
     count++;
    } else
     count -= 2;
    tty_insert_flip_string(&raw->port, raw->inbuf,
      count);
    tty_flip_buffer_push(&raw->port);
    break;
   }
  } else if (req->type == RAW3215_WRITE) {
   raw->count -= req->len;
   raw->written -= req->len;
  }
  raw->flags &= ~RAW3215_WORKING;
  raw3215_free_req(req);

  if (waitqueue_active(&raw->empty_wait) &&
      raw->queued_write == ((void*)0) &&
      raw->queued_read == ((void*)0)) {
   wake_up_interruptible(&raw->empty_wait);
  }
  raw3215_next_io(raw, tty);
  break;
 default:

  if (req != ((void*)0) && req->type != RAW3215_FREE) {
   if (req->type == RAW3215_WRITE) {
    raw->count -= req->len;
    raw->written -= req->len;
   }
   raw->flags &= ~RAW3215_WORKING;
   raw3215_free_req(req);
  }
  raw3215_next_io(raw, tty);
 }
put_tty:
 tty_kref_put(tty);
}
