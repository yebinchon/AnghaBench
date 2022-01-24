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
struct rproc {unsigned int state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 unsigned int RPROC_LAST ; 
 char** rproc_state_string ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 struct rproc* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev, struct device_attribute *attr,
			  char *buf)
{
	struct rproc *rproc = FUNC1(dev);
	unsigned int state;

	state = rproc->state > RPROC_LAST ? RPROC_LAST : rproc->state;
	return FUNC0(buf, "%s\n", rproc_state_string[state]);
}