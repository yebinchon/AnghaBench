
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vbg_dev {int input; TYPE_1__* mouse_status_req; } ;
struct TYPE_2__ {scalar_t__ pointer_pos_y; scalar_t__ pointer_pos_x; scalar_t__ mouse_features; } ;


 int ABS_X ;
 int ABS_Y ;
 int input_report_abs (int ,int ,scalar_t__) ;
 int input_sync (int ) ;
 int vbg_req_perform (struct vbg_dev*,TYPE_1__*) ;

void vbg_linux_mouse_event(struct vbg_dev *gdev)
{
 int rc;


 gdev->mouse_status_req->mouse_features = 0;
 gdev->mouse_status_req->pointer_pos_x = 0;
 gdev->mouse_status_req->pointer_pos_y = 0;
 rc = vbg_req_perform(gdev, gdev->mouse_status_req);
 if (rc >= 0) {
  input_report_abs(gdev->input, ABS_X,
     gdev->mouse_status_req->pointer_pos_x);
  input_report_abs(gdev->input, ABS_Y,
     gdev->mouse_status_req->pointer_pos_y);
  input_sync(gdev->input);
 }
}
