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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct acpi_buffer {int /*<<< orphan*/  pointer; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASUS_WMI_METHODID_AGFN ; 
 int ENOMEM ; 
 int ENXIO ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const struct acpi_buffer args)
{
	struct acpi_buffer input;
	u64 phys_addr;
	u32 retval;
	u32 status = -1;

	/*
	 * Copy to dma capable address otherwise memory corruption occurs as
	 * bios has to be able to access it.
	 */
	input.pointer = FUNC2(args.pointer, args.length, GFP_DMA | GFP_KERNEL);
	input.length = args.length;
	if (!input.pointer)
		return -ENOMEM;
	phys_addr = FUNC4(input.pointer);

	status = FUNC0(ASUS_WMI_METHODID_AGFN,
					phys_addr, 0, &retval);
	if (!status)
		FUNC3(args.pointer, input.pointer, args.length);

	FUNC1(input.pointer);
	if (status)
		return -ENXIO;

	return retval;
}