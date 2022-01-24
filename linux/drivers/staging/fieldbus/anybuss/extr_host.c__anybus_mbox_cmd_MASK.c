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
typedef  int u16 ;
struct anybus_mbox_hdr {void* extended; void* offset_low; void* offset_high; void* frame_num; void* frame_count; void* data_size; void* cmd_num; void* info; } ;
struct mbox_priv {void* msg; size_t msg_out_sz; size_t msg_in_sz; struct anybus_mbox_hdr hdr; } ;
struct anybuss_host {int /*<<< orphan*/  dev; int /*<<< orphan*/  wq; int /*<<< orphan*/  qlock; int /*<<< orphan*/  powerq; int /*<<< orphan*/  qcache; } ;
struct ab_task {struct mbox_priv mbox_pd; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int INFO_COMMAND ; 
 int INFO_TYPE_APP ; 
 int INFO_TYPE_FB ; 
 size_t MAX_MBOX_MSG_SZ ; 
 struct ab_task* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ab_task*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ab_task*) ; 
 void* FUNC3 (int) ; 
 size_t FUNC4 (size_t,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct mbox_priv*) ; 
 int /*<<< orphan*/  FUNC6 (void*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct anybus_mbox_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  task_fn_mbox ; 

__attribute__((used)) static int FUNC8(struct anybuss_host *cd,
			    u16 cmd_num, bool is_fb_cmd,
				const void *msg_out, size_t msg_out_sz,
				void *msg_in, size_t msg_in_sz,
				const void *ext, size_t ext_sz)
{
	struct ab_task *t;
	struct mbox_priv *pd;
	struct anybus_mbox_hdr *h;
	size_t msg_sz = FUNC4(msg_in_sz, msg_out_sz);
	u16 info;
	int err;

	if (msg_sz > MAX_MBOX_MSG_SZ)
		return -EINVAL;
	if (ext && ext_sz > sizeof(h->extended))
		return -EINVAL;
	t = FUNC0(cd->qcache, task_fn_mbox);
	if (!t)
		return -ENOMEM;
	pd = &t->mbox_pd;
	h = &pd->hdr;
	info = is_fb_cmd ? INFO_TYPE_FB : INFO_TYPE_APP;
	/*
	 * prevent uninitialized memory in the header from being sent
	 * across the anybus
	 */
	FUNC7(h, 0, sizeof(*h));
	h->info = FUNC3(info | INFO_COMMAND);
	h->cmd_num = FUNC3(cmd_num);
	h->data_size = FUNC3(msg_out_sz);
	h->frame_count = FUNC3(1);
	h->frame_num = FUNC3(1);
	h->offset_high = FUNC3(0);
	h->offset_low = FUNC3(0);
	if (ext)
		FUNC6(h->extended, ext, ext_sz);
	FUNC6(pd->msg, msg_out, msg_out_sz);
	pd->msg_out_sz = msg_out_sz;
	pd->msg_in_sz = msg_in_sz;
	err = FUNC1(t, cd->powerq, &cd->qlock, &cd->wq);
	if (err)
		goto out;
	/*
	 * mailbox mechanism worked ok, but maybe the mbox response
	 * contains an error ?
	 */
	err = FUNC5(cd->dev, pd);
	if (err)
		goto out;
	FUNC6(msg_in, pd->msg, msg_in_sz);
out:
	FUNC2(t);
	return err;
}