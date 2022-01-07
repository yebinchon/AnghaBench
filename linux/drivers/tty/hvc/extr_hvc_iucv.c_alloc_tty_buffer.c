
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {int length; } ;
struct iucv_tty_buffer {TYPE_2__* mbuf; TYPE_1__ msg; } ;
typedef int gfp_t ;
struct TYPE_4__ {scalar_t__ datalen; int type; int version; } ;


 int GFP_DMA ;
 int MSG_SIZE (size_t) ;
 int MSG_TYPE_DATA ;
 int MSG_VERSION ;
 int hvc_iucv_mempool ;
 TYPE_2__* kmalloc (int ,int) ;
 struct iucv_tty_buffer* mempool_alloc (int ,int) ;
 int mempool_free (struct iucv_tty_buffer*,int ) ;
 int memset (struct iucv_tty_buffer*,int ,int) ;

__attribute__((used)) static struct iucv_tty_buffer *alloc_tty_buffer(size_t size, gfp_t flags)
{
 struct iucv_tty_buffer *bufp;

 bufp = mempool_alloc(hvc_iucv_mempool, flags);
 if (!bufp)
  return ((void*)0);
 memset(bufp, 0, sizeof(*bufp));

 if (size > 0) {
  bufp->msg.length = MSG_SIZE(size);
  bufp->mbuf = kmalloc(bufp->msg.length, flags | GFP_DMA);
  if (!bufp->mbuf) {
   mempool_free(bufp, hvc_iucv_mempool);
   return ((void*)0);
  }
  bufp->mbuf->version = MSG_VERSION;
  bufp->mbuf->type = MSG_TYPE_DATA;
  bufp->mbuf->datalen = (u16) size;
 }
 return bufp;
}
