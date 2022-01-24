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
struct scsi_device {struct esp_lun_data* hostdata; } ;
struct esp_lun_data {scalar_t__ hold; int /*<<< orphan*/  num_tagged; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct scsi_device *dev, void *data)
{
	struct esp_lun_data *lp = dev->hostdata;

	FUNC0(lp->num_tagged);
	lp->hold = 0;
}