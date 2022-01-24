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
struct pcmcia_socket {int /*<<< orphan*/  sock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct pcmcia_socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  pcmcia_bus_suspend_callback ; 
 int /*<<< orphan*/  pcmcia_bus_type ; 

__attribute__((used)) static int FUNC3(struct pcmcia_socket *skt)
{
	FUNC1(&skt->dev, "suspending socket %d\n", skt->sock);
	if (FUNC0(&pcmcia_bus_type, NULL, skt,
			     pcmcia_bus_suspend_callback)) {
		FUNC2(skt);
		return -EIO;
	}
	return 0;
}