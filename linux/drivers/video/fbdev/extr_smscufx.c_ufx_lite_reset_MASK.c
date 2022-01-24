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
typedef  scalar_t__ u32 ;
struct ufx_data {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct ufx_data*,int,scalar_t__*) ; 
 int FUNC2 (struct ufx_data*,int,int) ; 

__attribute__((used)) static int FUNC3(struct ufx_data *dev)
{
	int status;
	u32 value;

	status = FUNC2(dev, 0x3008, 0x00000001);
	FUNC0(status, "ufx_lite_reset error writing 0x3008");

	status = FUNC1(dev, 0x3008, &value);
	FUNC0(status, "ufx_lite_reset error reading 0x3008");

	return (value == 0) ? 0 : -EIO;
}