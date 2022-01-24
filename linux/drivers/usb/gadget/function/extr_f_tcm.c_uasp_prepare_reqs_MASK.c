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
struct TYPE_2__ {int /*<<< orphan*/  req; } ;
struct f_uas {int flags; int /*<<< orphan*/ * stream; TYPE_1__ cmd; int /*<<< orphan*/  ep_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int UASP_SS_EP_COMP_NUM_STREAMS ; 
 int USBG_USE_STREAMS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct f_uas*) ; 
 int FUNC2 (struct f_uas*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct f_uas*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct f_uas*) ; 
 int /*<<< orphan*/  FUNC5 (struct f_uas*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct f_uas *fu)
{
	int ret;
	int i;
	int max_streams;

	if (fu->flags & USBG_USE_STREAMS)
		max_streams = UASP_SS_EP_COMP_NUM_STREAMS;
	else
		max_streams = 1;

	for (i = 0; i < max_streams; i++) {
		ret = FUNC2(fu, &fu->stream[i]);
		if (ret)
			goto err_cleanup;
	}

	ret = FUNC1(fu);
	if (ret)
		goto err_free_stream;
	FUNC5(fu, max_streams);

	ret = FUNC6(fu->ep_cmd, fu->cmd.req, GFP_ATOMIC);
	if (ret)
		goto err_free_stream;

	return 0;

err_free_stream:
	FUNC4(fu);

err_cleanup:
	if (i) {
		do {
			FUNC3(fu, &fu->stream[i - 1]);
			i--;
		} while (i);
	}
	FUNC0("UASP: endpoint setup failed\n");
	return ret;
}