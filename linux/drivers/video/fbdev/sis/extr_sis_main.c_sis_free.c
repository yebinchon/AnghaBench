
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sis_video_info {int dummy; } ;
struct TYPE_2__ {struct sis_video_info* vinfo; } ;


 int sis_int_free (struct sis_video_info*,int ) ;
 TYPE_1__* sisfb_heap ;

void
sis_free(u32 base)
{
 struct sis_video_info *ivideo = sisfb_heap->vinfo;

 sis_int_free(ivideo, base);
}
