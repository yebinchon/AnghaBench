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
struct rbsp {int pos; scalar_t__ error; } ;
struct nal_h264_pps {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct rbsp*,struct nal_h264_pps*) ; 
 int /*<<< orphan*/  FUNC2 (struct rbsp*) ; 
 int /*<<< orphan*/  FUNC3 (struct rbsp*) ; 
 int /*<<< orphan*/  FUNC4 (struct rbsp*,void*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  read ; 

ssize_t FUNC5(const struct device *dev,
			  struct nal_h264_pps *pps, void *src, size_t n)
{
	struct rbsp rbsp;

	if (!src)
		return -EINVAL;

	FUNC4(&rbsp, src, n, &read);

	FUNC3(&rbsp);

	/* NAL unit header */
	rbsp.pos += 8;

	FUNC1(&rbsp, pps);

	FUNC2(&rbsp);

	if (rbsp.error)
		return rbsp.error;

	return FUNC0(rbsp.pos, 8);
}