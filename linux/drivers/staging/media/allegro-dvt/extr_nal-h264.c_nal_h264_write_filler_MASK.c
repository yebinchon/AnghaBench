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
struct rbsp {int /*<<< orphan*/  pos; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  EINVAL ; 
 unsigned int FILLER_DATA ; 
 int /*<<< orphan*/  FUNC1 (struct rbsp*) ; 
 int /*<<< orphan*/  FUNC2 (struct rbsp*) ; 
 int /*<<< orphan*/  FUNC3 (struct rbsp*) ; 
 int /*<<< orphan*/  FUNC4 (struct rbsp*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (struct rbsp*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (struct rbsp*,void*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  write ; 

ssize_t FUNC7(const struct device *dev, void *dest, size_t n)
{
	struct rbsp rbsp;
	unsigned int forbidden_zero_bit = 0;
	unsigned int nal_ref_idc = 0;
	unsigned int nal_unit_type = FILLER_DATA;

	if (!dest)
		return -EINVAL;

	FUNC6(&rbsp, dest, n, &write);

	FUNC3(&rbsp);

	FUNC4(&rbsp, &forbidden_zero_bit);
	FUNC5(&rbsp, 2, &nal_ref_idc);
	FUNC5(&rbsp, 5, &nal_unit_type);

	FUNC2(&rbsp);

	FUNC1(&rbsp);

	return FUNC0(rbsp.pos, 8);
}