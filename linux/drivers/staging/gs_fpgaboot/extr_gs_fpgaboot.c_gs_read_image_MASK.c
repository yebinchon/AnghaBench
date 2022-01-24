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
struct fpgaimage {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  f_bit 128 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct fpgaimage*) ; 
 int FUNC2 (struct fpgaimage*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct fpgaimage *fimage)
{
	int img_fmt;
	int err;

	img_fmt = FUNC0();

	switch (img_fmt) {
	case f_bit:
		FUNC4("image is bitstream format\n");
		err = FUNC2(fimage);
		if (err)
			return err;
		break;
	default:
		FUNC3("unsupported fpga image format\n");
		return -EINVAL;
	}

	FUNC1(fimage);

	return 0;
}