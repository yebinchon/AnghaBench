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
typedef  int u8 ;
struct bq2415x_device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FUNC0 (struct bq2415x_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int) ; 

__attribute__((used)) static ssize_t FUNC2(struct bq2415x_device *bq,
				       u8 reg,
				       char *buf)
{
	int ret = FUNC0(bq, reg);

	if (ret < 0)
		return FUNC1(buf, "%#.2x=error %d\n", reg, ret);
	return FUNC1(buf, "%#.2x=%#.2x\n", reg, ret);
}