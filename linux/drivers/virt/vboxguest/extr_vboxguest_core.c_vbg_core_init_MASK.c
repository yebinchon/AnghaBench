#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {void* get_req; void* change_req; int /*<<< orphan*/  work; } ;
struct vbg_dev {int fixed_events; TYPE_1__ mem_balloon; void* cancel_req; void* ack_events_req; void* mouse_status_req; int /*<<< orphan*/  heartbeat_timer; int /*<<< orphan*/  cancel_req_mutex; int /*<<< orphan*/  session_mutex; int /*<<< orphan*/  event_spinlock; int /*<<< orphan*/  hgcm_wq; int /*<<< orphan*/  event_wq; void* guest_caps_host; void* event_filter_host; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* U32_MAX ; 
 int /*<<< orphan*/  VBG_KERNEL_REQUEST ; 
 int /*<<< orphan*/  VMMDEVREQ_ACKNOWLEDGE_EVENTS ; 
 int /*<<< orphan*/  VMMDEVREQ_CHANGE_MEMBALLOON ; 
 int /*<<< orphan*/  VMMDEVREQ_GET_MEMBALLOON_CHANGE_REQ ; 
 int /*<<< orphan*/  VMMDEVREQ_GET_MOUSE_STATUS ; 
 int /*<<< orphan*/  VMMDEVREQ_HGCM_CANCEL2 ; 
 int VMMDEV_EVENT_HGCM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vbg_balloon_work ; 
 int FUNC5 (struct vbg_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct vbg_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct vbg_dev*) ; 
 int /*<<< orphan*/  vbg_heartbeat_timer ; 
 int FUNC9 (struct vbg_dev*) ; 
 int FUNC10 (struct vbg_dev*,int) ; 
 int FUNC11 (struct vbg_dev*) ; 
 void* FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (void*,int) ; 
 int FUNC14 (struct vbg_dev*) ; 
 int FUNC15 (struct vbg_dev*,int) ; 

int FUNC16(struct vbg_dev *gdev, u32 fixed_events)
{
	int ret = -ENOMEM;

	gdev->fixed_events = fixed_events | VMMDEV_EVENT_HGCM;
	gdev->event_filter_host = U32_MAX;	/* forces a report */
	gdev->guest_caps_host = U32_MAX;	/* forces a report */

	FUNC1(&gdev->event_wq);
	FUNC1(&gdev->hgcm_wq);
	FUNC3(&gdev->event_spinlock);
	FUNC2(&gdev->session_mutex);
	FUNC2(&gdev->cancel_req_mutex);
	FUNC4(&gdev->heartbeat_timer, vbg_heartbeat_timer, 0);
	FUNC0(&gdev->mem_balloon.work, vbg_balloon_work);

	gdev->mem_balloon.get_req =
		FUNC12(sizeof(*gdev->mem_balloon.get_req),
			      VMMDEVREQ_GET_MEMBALLOON_CHANGE_REQ,
			      VBG_KERNEL_REQUEST);
	gdev->mem_balloon.change_req =
		FUNC12(sizeof(*gdev->mem_balloon.change_req),
			      VMMDEVREQ_CHANGE_MEMBALLOON,
			      VBG_KERNEL_REQUEST);
	gdev->cancel_req =
		FUNC12(sizeof(*(gdev->cancel_req)),
			      VMMDEVREQ_HGCM_CANCEL2,
			      VBG_KERNEL_REQUEST);
	gdev->ack_events_req =
		FUNC12(sizeof(*gdev->ack_events_req),
			      VMMDEVREQ_ACKNOWLEDGE_EVENTS,
			      VBG_KERNEL_REQUEST);
	gdev->mouse_status_req =
		FUNC12(sizeof(*gdev->mouse_status_req),
			      VMMDEVREQ_GET_MOUSE_STATUS,
			      VBG_KERNEL_REQUEST);

	if (!gdev->mem_balloon.get_req || !gdev->mem_balloon.change_req ||
	    !gdev->cancel_req || !gdev->ack_events_req ||
	    !gdev->mouse_status_req)
		goto err_free_reqs;

	ret = FUNC9(gdev);
	if (ret)
		goto err_free_reqs;

	ret = FUNC11(gdev);
	if (ret) {
		FUNC6("vboxguest: vbg_report_guest_info error: %d\n", ret);
		goto err_free_reqs;
	}

	ret = FUNC15(gdev, gdev->fixed_events);
	if (ret) {
		FUNC6("vboxguest: Error setting fixed event filter: %d\n",
			ret);
		goto err_free_reqs;
	}

	ret = FUNC14(gdev);
	if (ret) {
		FUNC6("vboxguest: Error clearing guest capabilities: %d\n",
			ret);
		goto err_free_reqs;
	}

	ret = FUNC5(gdev, 0);
	if (ret) {
		FUNC6("vboxguest: Error clearing mouse status: %d\n", ret);
		goto err_free_reqs;
	}

	/* These may fail without requiring the driver init to fail. */
	FUNC7(gdev);
	FUNC8(gdev);

	/* All Done! */
	ret = FUNC10(gdev, true);
	if (ret < 0)
		FUNC6("vboxguest: Error reporting driver status: %d\n", ret);

	return 0;

err_free_reqs:
	FUNC13(gdev->mouse_status_req,
		     sizeof(*gdev->mouse_status_req));
	FUNC13(gdev->ack_events_req,
		     sizeof(*gdev->ack_events_req));
	FUNC13(gdev->cancel_req,
		     sizeof(*gdev->cancel_req));
	FUNC13(gdev->mem_balloon.change_req,
		     sizeof(*gdev->mem_balloon.change_req));
	FUNC13(gdev->mem_balloon.get_req,
		     sizeof(*gdev->mem_balloon.get_req));
	return ret;
}