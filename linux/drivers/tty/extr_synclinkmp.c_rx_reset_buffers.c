
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rx_buf_count; } ;
typedef TYPE_1__ SLMP_INFO ;


 int rx_free_frame_buffers (TYPE_1__*,int ,scalar_t__) ;

__attribute__((used)) static void rx_reset_buffers(SLMP_INFO *info)
{
 rx_free_frame_buffers(info, 0, info->rx_buf_count - 1);
}
