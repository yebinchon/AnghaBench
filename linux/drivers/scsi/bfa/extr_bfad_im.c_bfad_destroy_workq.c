
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_im_s {int * drv_workq; } ;


 int destroy_workqueue (int *) ;
 int flush_workqueue (int *) ;

void
bfad_destroy_workq(struct bfad_im_s *im)
{
 if (im && im->drv_workq) {
  flush_workqueue(im->drv_workq);
  destroy_workqueue(im->drv_workq);
  im->drv_workq = ((void*)0);
 }
}
