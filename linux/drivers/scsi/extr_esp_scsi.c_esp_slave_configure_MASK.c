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
struct scsi_device {size_t id; int /*<<< orphan*/  sdev_target; scalar_t__ tagged_supported; int /*<<< orphan*/  host; } ;
struct esp_target_data {int /*<<< orphan*/  flags; } ;
struct esp {int /*<<< orphan*/  num_tags; struct esp_target_data* target; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_TGT_DISCONNECT ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 struct esp* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct scsi_device *dev)
{
	struct esp *esp = FUNC1(dev->host);
	struct esp_target_data *tp = &esp->target[dev->id];

	if (dev->tagged_supported)
		FUNC0(dev, esp->num_tags);

	tp->flags |= ESP_TGT_DISCONNECT;

	if (!FUNC3(dev->sdev_target))
		FUNC2(dev);

	return 0;
}