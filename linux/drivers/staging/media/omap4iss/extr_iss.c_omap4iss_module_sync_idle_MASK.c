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
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct media_entity {int dummy; } ;
struct iss_video {int dmaqueue_flags; int /*<<< orphan*/  qlock; } ;
struct iss_pipeline {scalar_t__ stream_state; struct iss_video* output; } ;
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ ISS_PIPELINE_STREAM_SINGLESHOT ; 
 scalar_t__ ISS_PIPELINE_STREAM_STOPPED ; 
 int ISS_VIDEO_DMAQUEUE_UNDERRUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct media_entity*) ; 
 int /*<<< orphan*/  FUNC3 (struct iss_pipeline*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct iss_pipeline* FUNC8 (struct media_entity*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC10(struct media_entity *me, wait_queue_head_t *wait,
			      atomic_t *stopping)
{
	struct iss_pipeline *pipe = FUNC8(me);
	struct iss_video *video = pipe->output;
	unsigned long flags;

	if (pipe->stream_state == ISS_PIPELINE_STREAM_STOPPED ||
	    (pipe->stream_state == ISS_PIPELINE_STREAM_SINGLESHOT &&
	     !FUNC3(pipe)))
		return 0;

	/*
	 * atomic_set() doesn't include memory barrier on ARM platform for SMP
	 * scenario. We'll call it here to avoid race conditions.
	 */
	FUNC1(stopping, 1);
	FUNC5();

	/*
	 * If module is the last one, it's writing to memory. In this case,
	 * it's necessary to check if the module is already paused due to
	 * DMA queue underrun or if it has to wait for next interrupt to be
	 * idle.
	 * If it isn't the last one, the function won't sleep but *stopping
	 * will still be set to warn next submodule caller's interrupt the
	 * module wants to be idle.
	 */
	if (!FUNC2(me))
		return 0;

	FUNC6(&video->qlock, flags);
	if (video->dmaqueue_flags & ISS_VIDEO_DMAQUEUE_UNDERRUN) {
		FUNC7(&video->qlock, flags);
		FUNC1(stopping, 0);
		FUNC5();
		return 0;
	}
	FUNC7(&video->qlock, flags);
	if (!FUNC9(*wait, !FUNC0(stopping),
				FUNC4(1000))) {
		FUNC1(stopping, 0);
		FUNC5();
		return -ETIMEDOUT;
	}

	return 0;
}