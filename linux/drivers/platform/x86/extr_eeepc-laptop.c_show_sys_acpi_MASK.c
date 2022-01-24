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
struct eeepc_laptop {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 struct eeepc_laptop* FUNC0 (struct device*) ; 
 int FUNC1 (struct eeepc_laptop*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, int cm, char *buf)
{
	struct eeepc_laptop *eeepc = FUNC0(dev);
	int value = FUNC1(eeepc, cm);

	if (value < 0)
		return -EIO;
	return FUNC2(buf, "%d\n", value);
}