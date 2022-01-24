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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 int PM_SUSPEND_MODE_FIRST ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int suspend_mode ; 
 char** suspend_modes ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
				 struct device_attribute *attr, char *buf)
{
	char *s = buf;
	int md;

	for (md = PM_SUSPEND_MODE_FIRST; md < FUNC0(suspend_modes); md++)
		if (suspend_modes[md]) {
			if (md == suspend_mode)
				s += FUNC1(s, "[%s] ", suspend_modes[md]);
			else
				s += FUNC1(s, "%s ", suspend_modes[md]);
		}

	/* Convert last space to newline */
	if (s != buf)
		*(s - 1) = '\n';
	return (s - buf);
}