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

/* Variables and functions */
 int /*<<< orphan*/  RAVE_SP_EEPROM_WRITE ; 
 int FUNC0 (void*,int /*<<< orphan*/ ,unsigned int,void*,size_t) ; 

__attribute__((used)) static int FUNC1(void *eeprom, unsigned int offset,
				    void *val, size_t bytes)
{
	return FUNC0(eeprom, RAVE_SP_EEPROM_WRITE,
				     offset, val, bytes);
}