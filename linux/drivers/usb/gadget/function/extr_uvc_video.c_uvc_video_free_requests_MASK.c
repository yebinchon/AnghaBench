#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct uvc_video {scalar_t__ req_size; int /*<<< orphan*/  req_free; int /*<<< orphan*/ ** req_buffer; int /*<<< orphan*/ ** req; int /*<<< orphan*/  ep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int UVC_NUM_REQUESTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct uvc_video *video)
{
	unsigned int i;

	for (i = 0; i < UVC_NUM_REQUESTS; ++i) {
		if (video->req[i]) {
			FUNC2(video->ep, video->req[i]);
			video->req[i] = NULL;
		}

		if (video->req_buffer[i]) {
			FUNC1(video->req_buffer[i]);
			video->req_buffer[i] = NULL;
		}
	}

	FUNC0(&video->req_free);
	video->req_size = 0;
	return 0;
}