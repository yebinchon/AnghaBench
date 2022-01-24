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
typedef  void* u16 ;
struct rio_channel {scalar_t__ state; int /*<<< orphan*/  comp; void* rem_channel; } ;
struct rio_ch_chan_hdr {int /*<<< orphan*/  src_ch; int /*<<< orphan*/  dst_ch; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ RIO_CM_CONNECT ; 
 int /*<<< orphan*/  RIO_CM_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rio_channel*,int /*<<< orphan*/ ) ; 
 struct rio_channel* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct rio_channel*) ; 

__attribute__((used)) static int FUNC5(void *resp_data)
{
	struct rio_channel *ch;
	struct rio_ch_chan_hdr *hh = resp_data;
	u16 chnum;

	chnum = FUNC1(hh->dst_ch);
	ch = FUNC3(chnum);
	if (!ch)
		return -ENODEV;

	if (ch->state != RIO_CM_CONNECT) {
		FUNC4(ch);
		return -EINVAL;
	}

	FUNC2(ch, RIO_CM_CONNECTED);
	ch->rem_channel = FUNC1(hh->src_ch);
	FUNC0(&ch->comp);
	FUNC4(ch);

	return 0;
}