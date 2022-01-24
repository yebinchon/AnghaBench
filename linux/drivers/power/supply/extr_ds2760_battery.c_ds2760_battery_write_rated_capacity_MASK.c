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
struct ds2760_device_info {unsigned char* raw; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS2760_EEPROM_BLOCK1 ; 
 size_t DS2760_RATED_CAPACITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char*,size_t,int) ; 

__attribute__((used)) static void FUNC3(struct ds2760_device_info *di,
						unsigned char rated_capacity)
{
	if (rated_capacity == di->raw[DS2760_RATED_CAPACITY])
		return;

	FUNC2(di->dev, &rated_capacity, DS2760_RATED_CAPACITY, 1);
	FUNC1(di->dev, DS2760_EEPROM_BLOCK1);
	FUNC0(di->dev, DS2760_EEPROM_BLOCK1);
}