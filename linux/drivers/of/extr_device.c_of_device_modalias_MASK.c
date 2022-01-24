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
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct device*,char*,int) ; 

ssize_t FUNC1(struct device *dev, char *str, ssize_t len)
{
	ssize_t sl = FUNC0(dev, str, len - 2);
	if (sl < 0)
		return sl;
	if (sl > len - 2)
		return -ENOMEM;

	str[sl++] = '\n';
	str[sl] = 0;
	return sl;
}