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
struct uvc_video {int /*<<< orphan*/  encode; scalar_t__ payload_size; scalar_t__ max_payload_size; int /*<<< orphan*/  queue; scalar_t__* req; int /*<<< orphan*/ * ep; TYPE_1__* uvc; } ;
struct TYPE_2__ {int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int ENODEV ; 
 unsigned int UVC_NUM_REQUESTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC1 (struct uvc_video*) ; 
 int /*<<< orphan*/  uvc_video_encode_bulk ; 
 int /*<<< orphan*/  uvc_video_encode_isoc ; 
 int /*<<< orphan*/  FUNC2 (struct uvc_video*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct uvc_video*) ; 

int FUNC6(struct uvc_video *video, int enable)
{
	unsigned int i;
	int ret;

	if (video->ep == NULL) {
		FUNC3(&video->uvc->func,
			  "Video enable failed, device is uninitialized.\n");
		return -ENODEV;
	}

	if (!enable) {
		for (i = 0; i < UVC_NUM_REQUESTS; ++i)
			if (video->req[i])
				FUNC0(video->ep, video->req[i]);

		FUNC2(video);
		FUNC4(&video->queue, 0);
		return 0;
	}

	if ((ret = FUNC4(&video->queue, 1)) < 0)
		return ret;

	if ((ret = FUNC1(video)) < 0)
		return ret;

	if (video->max_payload_size) {
		video->encode = uvc_video_encode_bulk;
		video->payload_size = 0;
	} else
		video->encode = uvc_video_encode_isoc;

	return FUNC5(video);
}