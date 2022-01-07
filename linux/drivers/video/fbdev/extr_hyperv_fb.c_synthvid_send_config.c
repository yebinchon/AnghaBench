
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct synthvid_vram_location {int dummy; } ;
struct synthvid_msg_hdr {int dummy; } ;
struct TYPE_7__ {scalar_t__ user_ctx; } ;
struct TYPE_6__ {scalar_t__ user_ctx; scalar_t__ vram_gpa; int is_vram_gpa_specified; } ;
struct TYPE_5__ {int size; int type; } ;
struct synthvid_msg {TYPE_3__ vram_ack; TYPE_2__ vram; TYPE_1__ vid_hdr; } ;
struct hvfb_par {int wait; scalar_t__ init_buf; } ;
struct hv_device {int dummy; } ;
struct TYPE_8__ {scalar_t__ smem_start; } ;
struct fb_info {TYPE_4__ fix; struct hvfb_par* par; } ;


 int ENODEV ;
 int ETIMEDOUT ;
 int SYNTHVID_VRAM_LOCATION ;
 int VSP_TIMEOUT ;
 struct fb_info* hv_get_drvdata (struct hv_device*) ;
 int memset (struct synthvid_msg*,int ,int) ;
 int pr_err (char*) ;
 int synthvid_send (struct hv_device*,struct synthvid_msg*) ;
 int synthvid_send_ptr (struct hv_device*) ;
 int synthvid_send_situ (struct hv_device*) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int synthvid_send_config(struct hv_device *hdev)
{
 struct fb_info *info = hv_get_drvdata(hdev);
 struct hvfb_par *par = info->par;
 struct synthvid_msg *msg = (struct synthvid_msg *)par->init_buf;
 int ret = 0;
 unsigned long t;


 memset(msg, 0, sizeof(struct synthvid_msg));
 msg->vid_hdr.type = SYNTHVID_VRAM_LOCATION;
 msg->vid_hdr.size = sizeof(struct synthvid_msg_hdr) +
  sizeof(struct synthvid_vram_location);
 msg->vram.user_ctx = msg->vram.vram_gpa = info->fix.smem_start;
 msg->vram.is_vram_gpa_specified = 1;
 synthvid_send(hdev, msg);

 t = wait_for_completion_timeout(&par->wait, VSP_TIMEOUT);
 if (!t) {
  pr_err("Time out on waiting vram location ack\n");
  ret = -ETIMEDOUT;
  goto out;
 }
 if (msg->vram_ack.user_ctx != info->fix.smem_start) {
  pr_err("Unable to set VRAM location\n");
  ret = -ENODEV;
  goto out;
 }


 synthvid_send_ptr(hdev);
 synthvid_send_situ(hdev);

out:
 return ret;
}
