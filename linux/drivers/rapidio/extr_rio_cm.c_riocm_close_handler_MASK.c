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
struct rio_channel {int /*<<< orphan*/  id; } ;
struct rio_ch_chan_hdr {int /*<<< orphan*/  dst_ch; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  RIO_CM_DISCONNECT ; 
 int /*<<< orphan*/  RX_CMD ; 
 int /*<<< orphan*/  ch_idr ; 
 struct rio_channel* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  idr_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rio_channel*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rio_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(void *data)
{
	struct rio_channel *ch;
	struct rio_ch_chan_hdr *hh = data;
	int ret;

	FUNC4(RX_CMD, "for ch=%d", FUNC2(hh->dst_ch));

	FUNC6(&idr_lock);
	ch = FUNC0(&ch_idr, FUNC2(hh->dst_ch));
	if (!ch) {
		FUNC7(&idr_lock);
		return -ENODEV;
	}
	FUNC1(&ch_idr, ch->id);
	FUNC7(&idr_lock);

	FUNC5(ch, RIO_CM_DISCONNECT);

	ret = FUNC3(ch);
	if (ret)
		FUNC4(RX_CMD, "riocm_ch_close() returned %d", ret);

	return 0;
}