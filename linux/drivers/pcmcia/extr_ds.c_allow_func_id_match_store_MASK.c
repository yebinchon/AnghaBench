#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pcmcia_device {int allow_func_id_match; TYPE_1__* socket; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  ops_mutex; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  PCMCIA_UEVENT_REQUERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct pcmcia_device* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct pcmcia_device *p_dev = FUNC3(dev);

	if (!count)
		return -EINVAL;

	FUNC0(&p_dev->socket->ops_mutex);
	p_dev->allow_func_id_match = 1;
	FUNC1(&p_dev->socket->ops_mutex);
	FUNC2(p_dev->socket, PCMCIA_UEVENT_REQUERY);

	return count;
}