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
struct TYPE_3__ {void* cache; } ;
struct rt2x00_dev {void* rf; TYPE_2__* ops; void* eeprom; TYPE_1__ csr; } ;
struct TYPE_4__ {int /*<<< orphan*/  rf_size; int /*<<< orphan*/  eeprom_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_CACHE_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*) ; 

__attribute__((used)) static int FUNC3(struct rt2x00_dev *rt2x00dev)
{
	rt2x00dev->csr.cache = FUNC0(CSR_CACHE_SIZE, GFP_KERNEL);
	if (!rt2x00dev->csr.cache)
		goto exit;

	rt2x00dev->eeprom = FUNC0(rt2x00dev->ops->eeprom_size, GFP_KERNEL);
	if (!rt2x00dev->eeprom)
		goto exit;

	rt2x00dev->rf = FUNC0(rt2x00dev->ops->rf_size, GFP_KERNEL);
	if (!rt2x00dev->rf)
		goto exit;

	return 0;

exit:
	FUNC1("Failed to allocate registers\n");

	FUNC2(rt2x00dev);

	return -ENOMEM;
}