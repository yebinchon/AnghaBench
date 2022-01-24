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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct scsi_target {size_t id; TYPE_1__ dev; } ;
struct esp_target_data {int nego_goal_width; int /*<<< orphan*/  flags; } ;
struct esp {struct esp_target_data* target; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_TGT_CHECK_NEGO ; 
 struct Scsi_Host* FUNC0 (int /*<<< orphan*/ ) ; 
 struct esp* FUNC1 (struct Scsi_Host*) ; 

__attribute__((used)) static void FUNC2(struct scsi_target *target, int width)
{
	struct Scsi_Host *host = FUNC0(target->dev.parent);
	struct esp *esp = FUNC1(host);
	struct esp_target_data *tp = &esp->target[target->id];

	tp->nego_goal_width = (width ? 1 : 0);
	tp->flags |= ESP_TGT_CHECK_NEGO;
}