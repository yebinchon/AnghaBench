#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct wilc_vif {scalar_t__ monitor_flag; TYPE_2__* frame_reg; } ;
struct wilc {int vif_num; int /*<<< orphan*/  vif_mutex; int /*<<< orphan*/  monitor_dev; TYPE_1__** vif; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ reg; } ;
struct TYPE_3__ {int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct wilc_vif* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wilc_vif*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(struct wilc *wilc, u8 *buff, u32 size)
{
	int i = 0;
	struct wilc_vif *vif;

	FUNC1(&wilc->vif_mutex);
	for (i = 0; i < wilc->vif_num; i++) {
		u16 type = FUNC0((__le16 *)buff);

		vif = FUNC3(wilc->vif[i]->ndev);
		if ((type == vif->frame_reg[0].type && vif->frame_reg[0].reg) ||
		    (type == vif->frame_reg[1].type && vif->frame_reg[1].reg)) {
			FUNC5(vif, buff, size);
			break;
		}

		if (vif->monitor_flag) {
			FUNC4(wilc->monitor_dev, buff, size);
			break;
		}
	}
	FUNC2(&wilc->vif_mutex);
}