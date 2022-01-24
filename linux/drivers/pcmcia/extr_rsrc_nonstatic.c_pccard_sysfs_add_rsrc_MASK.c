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
struct pcmcia_socket {int /*<<< orphan*/ * resource_ops; } ;
struct device {int /*<<< orphan*/  kobj; } ;
struct class_interface {int dummy; } ;

/* Variables and functions */
 struct pcmcia_socket* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  pccard_nonstatic_ops ; 
 int /*<<< orphan*/  rsrc_attributes ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct device *dev,
					   struct class_interface *class_intf)
{
	struct pcmcia_socket *s = FUNC0(dev);

	if (s->resource_ops != &pccard_nonstatic_ops)
		return 0;
	return FUNC1(&dev->kobj, &rsrc_attributes);
}