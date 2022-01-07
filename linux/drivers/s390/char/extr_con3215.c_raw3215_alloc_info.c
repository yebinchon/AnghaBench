
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3215_info {int port; int tlet; int empty_wait; int timer; struct raw3215_info* buffer; struct raw3215_info* inbuf; } ;


 int GFP_DMA ;
 int GFP_KERNEL ;
 int RAW3215_BUFFER_SIZE ;
 int RAW3215_INBUF_SIZE ;
 int init_waitqueue_head (int *) ;
 int kfree (struct raw3215_info*) ;
 void* kzalloc (int,int) ;
 int raw3215_timeout ;
 int raw3215_wakeup ;
 int tasklet_init (int *,int ,unsigned long) ;
 int timer_setup (int *,int ,int ) ;
 int tty_port_init (int *) ;

__attribute__((used)) static struct raw3215_info *raw3215_alloc_info(void)
{
 struct raw3215_info *info;

 info = kzalloc(sizeof(struct raw3215_info), GFP_KERNEL | GFP_DMA);
 if (!info)
  return ((void*)0);

 info->buffer = kzalloc(RAW3215_BUFFER_SIZE, GFP_KERNEL | GFP_DMA);
 info->inbuf = kzalloc(RAW3215_INBUF_SIZE, GFP_KERNEL | GFP_DMA);
 if (!info->buffer || !info->inbuf) {
  kfree(info->inbuf);
  kfree(info->buffer);
  kfree(info);
  return ((void*)0);
 }

 timer_setup(&info->timer, raw3215_timeout, 0);
 init_waitqueue_head(&info->empty_wait);
 tasklet_init(&info->tlet, raw3215_wakeup, (unsigned long)info);
 tty_port_init(&info->port);

 return info;
}
