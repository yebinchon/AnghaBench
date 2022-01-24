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
struct TYPE_2__ {unsigned int boot_sram_len; int /*<<< orphan*/  boot_sram; } ;

/* Variables and functions */
 unsigned int FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FNCPY_ALIGN ; 
 TYPE_1__ ctrl ; 
 void* FUNC1 (int /*<<< orphan*/ ,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void *FUNC3(void *fn, size_t len)
{
	unsigned int size = FUNC0(len, FNCPY_ALIGN);

	if (ctrl.boot_sram_len < size) {
		FUNC2("standby code will not fit in SRAM\n");
		return NULL;
	}

	return FUNC1(ctrl.boot_sram, fn, size);
}