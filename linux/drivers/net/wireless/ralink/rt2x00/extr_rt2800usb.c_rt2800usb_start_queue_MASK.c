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
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {int dummy; } ;
struct data_queue {int qid; struct rt2x00_dev* rt2x00dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCN_TIME_CFG ; 
 int /*<<< orphan*/  BCN_TIME_CFG_BEACON_GEN ; 
 int /*<<< orphan*/  BCN_TIME_CFG_TBTT_ENABLE ; 
 int /*<<< orphan*/  BCN_TIME_CFG_TSF_TICKING ; 
 int /*<<< orphan*/  MAC_SYS_CTRL ; 
 int /*<<< orphan*/  MAC_SYS_CTRL_ENABLE_RX ; 
#define  QID_BEACON 129 
#define  QID_RX 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct data_queue *queue)
{
	struct rt2x00_dev *rt2x00dev = queue->rt2x00dev;
	u32 reg;

	switch (queue->qid) {
	case QID_RX:
		reg = FUNC1(rt2x00dev, MAC_SYS_CTRL);
		FUNC0(&reg, MAC_SYS_CTRL_ENABLE_RX, 1);
		FUNC2(rt2x00dev, MAC_SYS_CTRL, reg);
		break;
	case QID_BEACON:
		reg = FUNC1(rt2x00dev, BCN_TIME_CFG);
		FUNC0(&reg, BCN_TIME_CFG_TSF_TICKING, 1);
		FUNC0(&reg, BCN_TIME_CFG_TBTT_ENABLE, 1);
		FUNC0(&reg, BCN_TIME_CFG_BEACON_GEN, 1);
		FUNC2(rt2x00dev, BCN_TIME_CFG, reg);
		break;
	default:
		break;
	}
}