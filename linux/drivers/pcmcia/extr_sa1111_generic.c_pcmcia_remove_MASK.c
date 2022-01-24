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
struct sa1111_pcmcia_socket {int /*<<< orphan*/  soc; struct sa1111_pcmcia_socket* next; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;
struct sa1111_dev {TYPE_1__ res; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct sa1111_pcmcia_socket* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sa1111_pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sa1111_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct sa1111_dev *dev)
{
	struct sa1111_pcmcia_socket *next, *s = FUNC0(&dev->dev);

	FUNC1(&dev->dev, NULL);

	for (; s; s = next) {
		next = s->next;
		FUNC5(&s->soc);
		FUNC2(s);
	}

	FUNC3(dev->res.start, 512);
	FUNC4(dev);
	return 0;
}