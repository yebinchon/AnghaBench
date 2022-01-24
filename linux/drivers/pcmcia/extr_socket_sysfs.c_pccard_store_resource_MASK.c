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
struct pcmcia_socket {int resource_setup_done; int /*<<< orphan*/  ops_mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  PCMCIA_UEVENT_REQUERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pcmcia_socket*,int /*<<< orphan*/ ) ; 
 struct pcmcia_socket* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t count)
{
	struct pcmcia_socket *s = FUNC3(dev);

	if (!count)
		return -EINVAL;

	FUNC0(&s->ops_mutex);
	if (!s->resource_setup_done)
		s->resource_setup_done = 1;
	FUNC1(&s->ops_mutex);

	FUNC2(s, PCMCIA_UEVENT_REQUERY);

	return count;
}