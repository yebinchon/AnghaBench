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
struct vmmdev_hgcm_function_parameter {int dummy; } ;
struct TYPE_2__ {int result; } ;
struct vmmdev_hgcm_call {TYPE_1__ header; } ;
struct vbg_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  VMMDEVREQ_HGCM_CALL ; 
 int FUNC0 (struct vmmdev_hgcm_call*,struct vmmdev_hgcm_function_parameter*,int,void**) ; 
 int /*<<< orphan*/  FUNC1 (struct vmmdev_hgcm_call*,int,int,struct vmmdev_hgcm_function_parameter*,int,void**) ; 
 int FUNC2 (struct vmmdev_hgcm_function_parameter*,int,void***,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (void**) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int FUNC5 (struct vbg_dev*,struct vmmdev_hgcm_call*,int,int*) ; 
 struct vmmdev_hgcm_call* FUNC6 (size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct vmmdev_hgcm_call*,size_t) ; 

int FUNC8(struct vbg_dev *gdev, u32 requestor, u32 client_id,
		  u32 function, u32 timeout_ms,
		  struct vmmdev_hgcm_function_parameter *parms, u32 parm_count,
		  int *vbox_status)
{
	struct vmmdev_hgcm_call *call;
	void **bounce_bufs = NULL;
	bool leak_it;
	size_t size;
	int i, ret;

	size = sizeof(struct vmmdev_hgcm_call) +
		   parm_count * sizeof(struct vmmdev_hgcm_function_parameter);
	/*
	 * Validate and buffer the parameters for the call. This also increases
	 * call_size with the amount of extra space needed for page lists.
	 */
	ret = FUNC2(parms, parm_count, &bounce_bufs, &size);
	if (ret) {
		/* Even on error bounce bufs may still have been allocated */
		goto free_bounce_bufs;
	}

	call = FUNC6(size, VMMDEVREQ_HGCM_CALL, requestor);
	if (!call) {
		ret = -ENOMEM;
		goto free_bounce_bufs;
	}

	FUNC1(call, client_id, function, parms, parm_count,
			    bounce_bufs);

	ret = FUNC5(gdev, call, timeout_ms, &leak_it);
	if (ret == 0) {
		*vbox_status = call->header.result;
		ret = FUNC0(call, parms, parm_count,
						 bounce_bufs);
	}

	if (!leak_it)
		FUNC7(call, size);

free_bounce_bufs:
	if (bounce_bufs) {
		for (i = 0; i < parm_count; i++)
			FUNC4(bounce_bufs[i]);
		FUNC3(bounce_bufs);
	}

	return ret;
}