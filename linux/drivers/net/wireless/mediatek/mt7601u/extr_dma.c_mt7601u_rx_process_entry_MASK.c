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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct page {int dummy; } ;
struct mt7601u_dma_buf_rx {struct page* p; TYPE_1__* urb; } ;
struct mt7601u_dev {int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int actual_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT7601U_STATE_INITIALIZED ; 
 int /*<<< orphan*/  MT_RX_ORDER ; 
 int /*<<< orphan*/  FUNC0 (struct page*,int /*<<< orphan*/ ) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7601u_dev*,int /*<<< orphan*/ *,int,struct page*) ; 
 int /*<<< orphan*/ * FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mt7601u_dev*,int,int) ; 

__attribute__((used)) static void
FUNC7(struct mt7601u_dev *dev, struct mt7601u_dma_buf_rx *e)
{
	u32 seg_len, data_len = e->urb->actual_length;
	u8 *data = FUNC4(e->p);
	struct page *new_p = NULL;
	int cnt = 0;

	if (!FUNC5(MT7601U_STATE_INITIALIZED, &dev->state))
		return;

	/* Copy if there is very little data in the buffer. */
	if (data_len > 512)
		new_p = FUNC1(MT_RX_ORDER);

	while ((seg_len = FUNC2(data, data_len))) {
		FUNC3(dev, data, seg_len, new_p ? e->p : NULL);

		data_len -= seg_len;
		data += seg_len;
		cnt++;
	}

	if (cnt > 1)
		FUNC6(dev, cnt, !!new_p);

	if (new_p) {
		/* we have one extra ref from the allocator */
		FUNC0(e->p, MT_RX_ORDER);

		e->p = new_p;
	}
}