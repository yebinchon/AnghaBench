
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_dev {struct gdm** gdm; } ;
struct gdm {TYPE_1__* tty_dev; int port; } ;
struct TYPE_2__ {int priv_dev; int (* recv_func ) (int ,int (*) (void*,int,int,struct tty_dev*,int)) ;} ;


 int GDM_TTY_READY (struct gdm*) ;
 int RECV_PACKET_PROCESS_COMPLETE ;
 int TO_HOST_BUFFER_REQUEST_FAIL ;
 int TO_HOST_PORT_CLOSE ;
 int stub1 (int ,int (*) (void*,int,int,struct tty_dev*,int)) ;
 int stub2 (int ,int (*) (void*,int,int,struct tty_dev*,int)) ;
 int tty_buffer_request_room (int *,int) ;
 int tty_flip_buffer_push (int *) ;
 int tty_insert_flip_string (int *,void*,int) ;

__attribute__((used)) static int gdm_tty_recv_complete(void *data,
     int len,
     int index,
     struct tty_dev *tty_dev,
     int complete)
{
 struct gdm *gdm = tty_dev->gdm[index];

 if (!GDM_TTY_READY(gdm)) {
  if (complete == RECV_PACKET_PROCESS_COMPLETE)
   gdm->tty_dev->recv_func(gdm->tty_dev->priv_dev,
      gdm_tty_recv_complete);
  return TO_HOST_PORT_CLOSE;
 }

 if (data && len) {
  if (tty_buffer_request_room(&gdm->port, len) == len) {
   tty_insert_flip_string(&gdm->port, data, len);
   tty_flip_buffer_push(&gdm->port);
  } else {
   return TO_HOST_BUFFER_REQUEST_FAIL;
  }
 }

 if (complete == RECV_PACKET_PROCESS_COMPLETE)
  gdm->tty_dev->recv_func(gdm->tty_dev->priv_dev,
     gdm_tty_recv_complete);

 return 0;
}
