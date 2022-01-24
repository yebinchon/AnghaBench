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
typedef  int uint16_t ;
struct w1_slave {int dummy; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef  int ssize_t ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  DS2438_ADC_INPUT_VAD ; 
 int EINVAL ; 
 int EIO ; 
 struct w1_slave* FUNC0 (struct kobject*) ; 
 int FUNC1 (char*,size_t,char*,int) ; 
 scalar_t__ FUNC2 (struct w1_slave*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static ssize_t FUNC3(struct file *filp, struct kobject *kobj,
			struct bin_attribute *bin_attr, char *buf,
			loff_t off, size_t count)
{
	struct w1_slave *sl = FUNC0(kobj);
	int ret;
	uint16_t voltage;

	if (off != 0)
		return 0;
	if (!buf)
		return -EINVAL;

	if (FUNC2(sl, DS2438_ADC_INPUT_VAD, &voltage) == 0) {
		ret = FUNC1(buf, count, "%u\n", voltage);
	} else
		ret = -EIO;

	return ret;
}