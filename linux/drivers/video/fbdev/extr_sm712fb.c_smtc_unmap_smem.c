
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smtcfb_info {TYPE_1__* fb; } ;
struct TYPE_2__ {int * screen_base; } ;


 int iounmap (int *) ;

__attribute__((used)) static void smtc_unmap_smem(struct smtcfb_info *sfb)
{
 if (sfb && sfb->fb->screen_base) {
  iounmap(sfb->fb->screen_base);
  sfb->fb->screen_base = ((void*)0);
 }
}
