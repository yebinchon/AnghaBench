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
struct mt7601u_dma_buf_rx {TYPE_1__* urb; } ;
struct mt7601u_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ status; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct mt7601u_dma_buf_rx* FUNC0 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mt7601u_dev*,struct mt7601u_dma_buf_rx*) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7601u_dev*,struct mt7601u_dma_buf_rx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(unsigned long data)
{
	struct mt7601u_dev *dev = (struct mt7601u_dev *) data;
	struct mt7601u_dma_buf_rx *e;

	while ((e = FUNC0(dev))) {
		if (e->urb->status)
			continue;

		FUNC1(dev, e);
		FUNC2(dev, e, GFP_ATOMIC);
	}
}