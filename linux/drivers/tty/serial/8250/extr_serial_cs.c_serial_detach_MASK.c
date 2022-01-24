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
struct serial_info {int dummy; } ;
struct pcmcia_device {int /*<<< orphan*/  dev; struct serial_info* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct serial_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcmcia_device*) ; 

__attribute__((used)) static void FUNC3(struct pcmcia_device *link)
{
	struct serial_info *info = link->priv;

	FUNC0(&link->dev, "serial_detach\n");

	/*
	 * Ensure that the ports have been released.
	 */
	FUNC2(link);

	/* free bits */
	FUNC1(info);
}