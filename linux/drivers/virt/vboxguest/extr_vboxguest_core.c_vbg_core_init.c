
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {void* get_req; void* change_req; int work; } ;
struct vbg_dev {int fixed_events; TYPE_1__ mem_balloon; void* cancel_req; void* ack_events_req; void* mouse_status_req; int heartbeat_timer; int cancel_req_mutex; int session_mutex; int event_spinlock; int hgcm_wq; int event_wq; void* guest_caps_host; void* event_filter_host; } ;


 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 void* U32_MAX ;
 int VBG_KERNEL_REQUEST ;
 int VMMDEVREQ_ACKNOWLEDGE_EVENTS ;
 int VMMDEVREQ_CHANGE_MEMBALLOON ;
 int VMMDEVREQ_GET_MEMBALLOON_CHANGE_REQ ;
 int VMMDEVREQ_GET_MOUSE_STATUS ;
 int VMMDEVREQ_HGCM_CANCEL2 ;
 int VMMDEV_EVENT_HGCM ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 int vbg_balloon_work ;
 int vbg_core_set_mouse_status (struct vbg_dev*,int ) ;
 int vbg_err (char*,int) ;
 int vbg_guest_mappings_init (struct vbg_dev*) ;
 int vbg_heartbeat_init (struct vbg_dev*) ;
 int vbg_heartbeat_timer ;
 int vbg_query_host_version (struct vbg_dev*) ;
 int vbg_report_driver_status (struct vbg_dev*,int) ;
 int vbg_report_guest_info (struct vbg_dev*) ;
 void* vbg_req_alloc (int,int ,int ) ;
 int vbg_req_free (void*,int) ;
 int vbg_reset_host_capabilities (struct vbg_dev*) ;
 int vbg_reset_host_event_filter (struct vbg_dev*,int) ;

int vbg_core_init(struct vbg_dev *gdev, u32 fixed_events)
{
 int ret = -ENOMEM;

 gdev->fixed_events = fixed_events | VMMDEV_EVENT_HGCM;
 gdev->event_filter_host = U32_MAX;
 gdev->guest_caps_host = U32_MAX;

 init_waitqueue_head(&gdev->event_wq);
 init_waitqueue_head(&gdev->hgcm_wq);
 spin_lock_init(&gdev->event_spinlock);
 mutex_init(&gdev->session_mutex);
 mutex_init(&gdev->cancel_req_mutex);
 timer_setup(&gdev->heartbeat_timer, vbg_heartbeat_timer, 0);
 INIT_WORK(&gdev->mem_balloon.work, vbg_balloon_work);

 gdev->mem_balloon.get_req =
  vbg_req_alloc(sizeof(*gdev->mem_balloon.get_req),
         VMMDEVREQ_GET_MEMBALLOON_CHANGE_REQ,
         VBG_KERNEL_REQUEST);
 gdev->mem_balloon.change_req =
  vbg_req_alloc(sizeof(*gdev->mem_balloon.change_req),
         VMMDEVREQ_CHANGE_MEMBALLOON,
         VBG_KERNEL_REQUEST);
 gdev->cancel_req =
  vbg_req_alloc(sizeof(*(gdev->cancel_req)),
         VMMDEVREQ_HGCM_CANCEL2,
         VBG_KERNEL_REQUEST);
 gdev->ack_events_req =
  vbg_req_alloc(sizeof(*gdev->ack_events_req),
         VMMDEVREQ_ACKNOWLEDGE_EVENTS,
         VBG_KERNEL_REQUEST);
 gdev->mouse_status_req =
  vbg_req_alloc(sizeof(*gdev->mouse_status_req),
         VMMDEVREQ_GET_MOUSE_STATUS,
         VBG_KERNEL_REQUEST);

 if (!gdev->mem_balloon.get_req || !gdev->mem_balloon.change_req ||
     !gdev->cancel_req || !gdev->ack_events_req ||
     !gdev->mouse_status_req)
  goto err_free_reqs;

 ret = vbg_query_host_version(gdev);
 if (ret)
  goto err_free_reqs;

 ret = vbg_report_guest_info(gdev);
 if (ret) {
  vbg_err("vboxguest: vbg_report_guest_info error: %d\n", ret);
  goto err_free_reqs;
 }

 ret = vbg_reset_host_event_filter(gdev, gdev->fixed_events);
 if (ret) {
  vbg_err("vboxguest: Error setting fixed event filter: %d\n",
   ret);
  goto err_free_reqs;
 }

 ret = vbg_reset_host_capabilities(gdev);
 if (ret) {
  vbg_err("vboxguest: Error clearing guest capabilities: %d\n",
   ret);
  goto err_free_reqs;
 }

 ret = vbg_core_set_mouse_status(gdev, 0);
 if (ret) {
  vbg_err("vboxguest: Error clearing mouse status: %d\n", ret);
  goto err_free_reqs;
 }


 vbg_guest_mappings_init(gdev);
 vbg_heartbeat_init(gdev);


 ret = vbg_report_driver_status(gdev, 1);
 if (ret < 0)
  vbg_err("vboxguest: Error reporting driver status: %d\n", ret);

 return 0;

err_free_reqs:
 vbg_req_free(gdev->mouse_status_req,
       sizeof(*gdev->mouse_status_req));
 vbg_req_free(gdev->ack_events_req,
       sizeof(*gdev->ack_events_req));
 vbg_req_free(gdev->cancel_req,
       sizeof(*gdev->cancel_req));
 vbg_req_free(gdev->mem_balloon.change_req,
       sizeof(*gdev->mem_balloon.change_req));
 vbg_req_free(gdev->mem_balloon.get_req,
       sizeof(*gdev->mem_balloon.get_req));
 return ret;
}
