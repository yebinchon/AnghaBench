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
struct nvmem_device {int /*<<< orphan*/  eeprom; int /*<<< orphan*/  base_dev; } ;
struct nvmem_config {scalar_t__ compat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC1(struct nvmem_device *nvmem,
			      const struct nvmem_config *config)
{
	if (config->compat)
		FUNC0(nvmem->base_dev, &nvmem->eeprom);
}