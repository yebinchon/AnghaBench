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
struct pcmcia_socket {int /*<<< orphan*/  present; scalar_t__ device_count; scalar_t__ pcmcia_pfc; int /*<<< orphan*/  devices_list; } ;
struct device {int /*<<< orphan*/  kobj; } ;
struct class_interface {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct pcmcia_socket* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  pccard_cis_attr ; 
 int FUNC4 (struct pcmcia_socket*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pcmcia_bus_callback ; 
 struct pcmcia_socket* FUNC5 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC6 (struct pcmcia_socket*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct device *dev,
					   struct class_interface *class_intf)
{
	struct pcmcia_socket *socket = FUNC3(dev);
	int ret;

	socket = FUNC5(socket);
	if (!socket) {
		FUNC2(dev, "PCMCIA obtaining reference to socket failed\n");
		return -ENODEV;
	}

	ret = FUNC7(&dev->kobj, &pccard_cis_attr);
	if (ret) {
		FUNC2(dev, "PCMCIA registration failed\n");
		FUNC6(socket);
		return ret;
	}

	FUNC0(&socket->devices_list);
	socket->pcmcia_pfc = 0;
	socket->device_count = 0;
	FUNC1(&socket->present, 0);

	ret = FUNC4(socket, &pcmcia_bus_callback);
	if (ret) {
		FUNC2(dev, "PCMCIA registration failed\n");
		FUNC6(socket);
		return ret;
	}

	return 0;
}