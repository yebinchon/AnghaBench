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
struct cm_dev {scalar_t__ rx_slots; int /*<<< orphan*/ ** rx_buf; int /*<<< orphan*/  mport; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int RIOCM_RX_RING_SIZE ; 
 int /*<<< orphan*/  RIO_MAX_MSG_SIZE ; 
 int /*<<< orphan*/  cmbox ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct cm_dev *cm, int nent)
{
	int i;

	if (cm->rx_slots == 0)
		return;

	for (i = 0; i < RIOCM_RX_RING_SIZE && cm->rx_slots && nent; i++) {
		if (cm->rx_buf[i] == NULL) {
			cm->rx_buf[i] = FUNC0(RIO_MAX_MSG_SIZE, GFP_KERNEL);
			if (cm->rx_buf[i] == NULL)
				break;
			FUNC1(cm->mport, cmbox, cm->rx_buf[i]);
			cm->rx_slots--;
			nent--;
		}
	}
}