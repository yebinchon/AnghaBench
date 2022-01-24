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
struct soc_pcmcia_socket {int dummy; } ;
struct platform_device {int id; } ;

/* Variables and functions */
 struct soc_pcmcia_socket* FUNC0 (struct platform_device*) ; 
 int FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct soc_pcmcia_socket*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *dev)
{
	struct soc_pcmcia_socket *skt;

	if (dev->id == -1)
		return FUNC1(dev);

	skt = FUNC0(dev);

	FUNC2(skt);

	return 0;
}