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
struct pcmcia_socket {int /*<<< orphan*/  skt_mutex; } ;
struct device {int /*<<< orphan*/  kobj; } ;
struct class_interface {int dummy; } ;

/* Variables and functions */
 struct pcmcia_socket* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pccard_cis_attr ; 
 int /*<<< orphan*/  FUNC3 (struct pcmcia_socket*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pcmcia_socket*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC6 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct device *dev,
				     struct class_interface *class_intf)
{
	struct pcmcia_socket *socket = FUNC0(dev);

	if (!socket)
		return;

	FUNC3(socket, NULL);

	/* unregister any unbound devices */
	FUNC1(&socket->skt_mutex);
	FUNC4(socket, NULL);
	FUNC6(socket);
	FUNC2(&socket->skt_mutex);

	FUNC7(&dev->kobj, &pccard_cis_attr);

	FUNC5(socket);

	return;
}