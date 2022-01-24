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
struct ufx_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct ufx_data*,int,int,int) ; 
 int FUNC2 (struct ufx_data*,int,int) ; 

__attribute__((used)) static int FUNC3(struct ufx_data *dev)
{
	int status = FUNC2(dev, 0x106C, 0x00);
	FUNC0(status, "failed to disable I2C");

	status = FUNC2(dev, 0x3010, 0x00000000);
	FUNC0(status, "failed to write 0x3010");

	/* A0h is std for any EDID, right shifted by one */
	status = FUNC1(dev, 0x1004, 0x3FF,	(0xA0 >> 1));
	FUNC0(status, "failed to set TAR bits in 0x1004");

	status = FUNC2(dev, 0x106C, 0x01);
	FUNC0(status, "failed to enable I2C");

	return 0;
}