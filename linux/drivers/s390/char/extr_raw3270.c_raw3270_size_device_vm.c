
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3270 {int model; int rows; int cols; int cdev; } ;
struct diag210 {int vrdclen; int vrdccrmd; int vrdcdvno; } ;
struct ccw_dev_id {int devno; } ;


 int ccw_device_get_id (int ,struct ccw_dev_id*) ;
 int diag210 (struct diag210*) ;

__attribute__((used)) static void
raw3270_size_device_vm(struct raw3270 *rp)
{
 int rc, model;
 struct ccw_dev_id dev_id;
 struct diag210 diag_data;

 ccw_device_get_id(rp->cdev, &dev_id);
 diag_data.vrdcdvno = dev_id.devno;
 diag_data.vrdclen = sizeof(struct diag210);
 rc = diag210(&diag_data);
 model = diag_data.vrdccrmd;

 if (rc || model < 2 || model > 5)
  model = 2;
 switch (model) {
 case 2:
  rp->model = model;
  rp->rows = 24;
  rp->cols = 80;
  break;
 case 3:
  rp->model = model;
  rp->rows = 32;
  rp->cols = 80;
  break;
 case 4:
  rp->model = model;
  rp->rows = 43;
  rp->cols = 80;
  break;
 case 5:
  rp->model = model;
  rp->rows = 27;
  rp->cols = 132;
  break;
 }
}
