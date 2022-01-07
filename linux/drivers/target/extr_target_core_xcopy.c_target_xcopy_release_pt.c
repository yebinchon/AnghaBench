
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_workqueue (scalar_t__) ;
 scalar_t__ xcopy_wq ;

void target_xcopy_release_pt(void)
{
 if (xcopy_wq)
  destroy_workqueue(xcopy_wq);
}
