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
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct ufx_data*,int,int) ; 
 int FUNC3 (struct ufx_data*,int,int) ; 

__attribute__((used)) static int FUNC4(struct ufx_data *dev)
{
	int status = FUNC3(dev, 0x700C, 0x8000000F);
	FUNC0(status, "error writing 0x700C");

	status = FUNC3(dev, 0x7014, 0x0010024F);
	FUNC0(status, "error writing 0x7014");

	status = FUNC3(dev, 0x7010, 0x00000000);
	FUNC0(status, "error writing 0x7010");

	status = FUNC2(dev, 0x700C, 0x0000000A);
	FUNC0(status, "error clearing PLL1 bypass in 0x700C");
	FUNC1(1);

	status = FUNC2(dev, 0x700C, 0x80000000);
	FUNC0(status, "error clearing output gate in 0x700C");

	return 0;
}