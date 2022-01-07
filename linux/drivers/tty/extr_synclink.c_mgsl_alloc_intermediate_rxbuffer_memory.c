
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgsl_struct {int * intermediate_rxbuffer; int flag_buf; int max_frame_size; } ;


 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kmalloc (int ,int) ;
 int kzalloc (int ,int) ;

__attribute__((used)) static int mgsl_alloc_intermediate_rxbuffer_memory(struct mgsl_struct *info)
{
 info->intermediate_rxbuffer = kmalloc(info->max_frame_size, GFP_KERNEL | GFP_DMA);
 if ( info->intermediate_rxbuffer == ((void*)0) )
  return -ENOMEM;

 info->flag_buf = kzalloc(info->max_frame_size, GFP_KERNEL);
 if (!info->flag_buf) {
  kfree(info->intermediate_rxbuffer);
  info->intermediate_rxbuffer = ((void*)0);
  return -ENOMEM;
 }
 return 0;

}
