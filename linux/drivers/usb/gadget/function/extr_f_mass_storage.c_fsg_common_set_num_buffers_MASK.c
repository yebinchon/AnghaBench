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
struct fsg_common {unsigned int fsg_num_buffers; struct fsg_buffhd* buffhds; } ;
struct fsg_buffhd {struct fsg_buffhd* next; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FSG_BUFLEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct fsg_buffhd*,unsigned int) ; 
 struct fsg_buffhd* FUNC1 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(struct fsg_common *common, unsigned int n)
{
	struct fsg_buffhd *bh, *buffhds;
	int i;

	buffhds = FUNC1(n, sizeof(*buffhds), GFP_KERNEL);
	if (!buffhds)
		return -ENOMEM;

	/* Data buffers cyclic list */
	bh = buffhds;
	i = n;
	goto buffhds_first_it;
	do {
		bh->next = bh + 1;
		++bh;
buffhds_first_it:
		bh->buf = FUNC2(FSG_BUFLEN, GFP_KERNEL);
		if (FUNC3(!bh->buf))
			goto error_release;
	} while (--i);
	bh->next = buffhds;

	FUNC0(common->buffhds, common->fsg_num_buffers);
	common->fsg_num_buffers = n;
	common->buffhds = buffhds;

	return 0;

error_release:
	/*
	 * "buf"s pointed to by heads after n - i are NULL
	 * so releasing them won't hurt
	 */
	FUNC0(buffhds, n);

	return -ENOMEM;
}