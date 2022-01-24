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
struct pcmcia_socket {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  PCMCIA_UEVENT_RESUME ; 
 int /*<<< orphan*/  PCMCIA_UEVENT_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (struct pcmcia_socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 
 struct pcmcia_socket* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
					  struct device_attribute *attr,
					  const char *buf, size_t count)
{
	struct pcmcia_socket *s = FUNC2(dev);
	ssize_t ret = count;

	if (!count)
		return -EINVAL;

	if (!FUNC1(buf, "off", 3))
		FUNC0(s, PCMCIA_UEVENT_SUSPEND);
	else {
		if (!FUNC1(buf, "on", 2))
			FUNC0(s, PCMCIA_UEVENT_RESUME);
		else
			ret = -EINVAL;
	}

	return ret;
}