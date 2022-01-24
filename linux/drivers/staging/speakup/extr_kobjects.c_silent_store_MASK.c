#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vc_data {int dummy; } ;
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  spinlock; } ;
struct TYPE_3__ {struct vc_data* d; } ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t fg_console ; 
 int /*<<< orphan*/  FUNC0 (char*,char) ; 
 TYPE_2__ speakup_info ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char spk_shut_up ; 
 int FUNC4 (char const*) ; 
 TYPE_1__* vc_cons ; 

__attribute__((used)) static ssize_t FUNC5(struct kobject *kobj, struct kobj_attribute *attr,
			    const char *buf, size_t count)
{
	int len;
	struct vc_data *vc = vc_cons[fg_console].d;
	char ch = 0;
	char shut;
	unsigned long flags;

	len = FUNC4(buf);
	if (len > 0 && len < 3) {
		ch = buf[0];
		if (ch == '\n')
			ch = '0';
	}
	if (ch < '0' || ch > '7') {
		FUNC0("silent value '%c' not in range (0,7)\n", ch);
		return -EINVAL;
	}
	FUNC1(&speakup_info.spinlock, flags);
	if (ch & 2) {
		shut = 1;
		FUNC3();
	} else {
		shut = 0;
	}
	if (ch & 4)
		shut |= 0x40;
	if (ch & 1)
		spk_shut_up |= shut;
	else
		spk_shut_up &= ~shut;
	FUNC2(&speakup_info.spinlock, flags);
	return count;
}