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
struct llcc_slice_desc {size_t slice_size; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct llcc_slice_desc*) ; 

size_t FUNC1(struct llcc_slice_desc *desc)
{
	if (FUNC0(desc))
		return 0;

	return desc->slice_size;
}