
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * tmp_rx_buf; int flag_buf; int max_frame_size; } ;
typedef TYPE_1__ SLMP_INFO ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kmalloc (int ,int ) ;
 int kzalloc (int ,int ) ;

__attribute__((used)) static int alloc_tmp_rx_buf(SLMP_INFO *info)
{
 info->tmp_rx_buf = kmalloc(info->max_frame_size, GFP_KERNEL);
 if (info->tmp_rx_buf == ((void*)0))
  return -ENOMEM;

 info->flag_buf = kzalloc(info->max_frame_size, GFP_KERNEL);
 if (!info->flag_buf) {
  kfree(info->tmp_rx_buf);
  info->tmp_rx_buf = ((void*)0);
  return -ENOMEM;
 }
 return 0;
}
