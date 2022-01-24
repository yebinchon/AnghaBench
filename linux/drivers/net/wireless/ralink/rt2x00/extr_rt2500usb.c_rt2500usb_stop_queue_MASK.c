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
typedef  int /*<<< orphan*/  u16 ;
struct rt2x00_dev {int dummy; } ;
struct data_queue {int qid; struct rt2x00_dev* rt2x00dev; } ;

/* Variables and functions */
#define  QID_BEACON 129 
#define  QID_RX 128 
 int /*<<< orphan*/  TXRX_CSR19 ; 
 int /*<<< orphan*/  TXRX_CSR19_BEACON_GEN ; 
 int /*<<< orphan*/  TXRX_CSR19_TBCN ; 
 int /*<<< orphan*/  TXRX_CSR19_TSF_COUNT ; 
 int /*<<< orphan*/  TXRX_CSR2 ; 
 int /*<<< orphan*/  TXRX_CSR2_DISABLE_RX ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct data_queue *queue)
{
	struct rt2x00_dev *rt2x00dev = queue->rt2x00dev;
	u16 reg;

	switch (queue->qid) {
	case QID_RX:
		reg = FUNC0(rt2x00dev, TXRX_CSR2);
		FUNC2(&reg, TXRX_CSR2_DISABLE_RX, 1);
		FUNC1(rt2x00dev, TXRX_CSR2, reg);
		break;
	case QID_BEACON:
		reg = FUNC0(rt2x00dev, TXRX_CSR19);
		FUNC2(&reg, TXRX_CSR19_TSF_COUNT, 0);
		FUNC2(&reg, TXRX_CSR19_TBCN, 0);
		FUNC2(&reg, TXRX_CSR19_BEACON_GEN, 0);
		FUNC1(rt2x00dev, TXRX_CSR19, reg);
		break;
	default:
		break;
	}
}