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
struct rbsp {int /*<<< orphan*/  pos; scalar_t__ error; } ;
struct nal_h264_pps {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ EINVAL ; 
 unsigned int PICTURE_PARAMETER_SET ; 
 int /*<<< orphan*/  FUNC1 (struct rbsp*,struct nal_h264_pps*) ; 
 int /*<<< orphan*/  FUNC2 (struct rbsp*) ; 
 int /*<<< orphan*/  FUNC3 (struct rbsp*) ; 
 int /*<<< orphan*/  FUNC4 (struct rbsp*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (struct rbsp*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (struct rbsp*,void*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  write ; 

ssize_t FUNC7(const struct device *dev,
			   void *dest, size_t n, struct nal_h264_pps *pps)
{
	struct rbsp rbsp;
	unsigned int forbidden_zero_bit = 0;
	unsigned int nal_ref_idc = 0;
	unsigned int nal_unit_type = PICTURE_PARAMETER_SET;

	if (!dest)
		return -EINVAL;

	FUNC6(&rbsp, dest, n, &write);

	FUNC3(&rbsp);

	/* NAL unit header */
	FUNC4(&rbsp, &forbidden_zero_bit);
	FUNC5(&rbsp, 2, &nal_ref_idc);
	FUNC5(&rbsp, 5, &nal_unit_type);

	FUNC1(&rbsp, pps);

	FUNC2(&rbsp);

	if (rbsp.error)
		return rbsp.error;

	return FUNC0(rbsp.pos, 8);
}