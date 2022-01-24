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
struct mt7601u_tx_queue {int entries; TYPE_1__* e; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  urb; scalar_t__ skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mt7601u_tx_queue *q)
{
	int i;

	for (i = 0; i < q->entries; i++)  {
		FUNC2(q->e[i].urb);
		if (q->e[i].skb)
			FUNC0(q->dev, q->e[i].skb);
		FUNC1(q->e[i].urb);
	}
}