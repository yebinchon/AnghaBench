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
struct resource {scalar_t__ start; scalar_t__ end; int /*<<< orphan*/  flags; scalar_t__ parent; } ;
struct pcmcia_socket {TYPE_1__* io; int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ resource_size_t ;
struct TYPE_2__ {scalar_t__ InUse; struct resource* res; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_IO ; 
 int MAX_IO_WIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct resource*) ; 
 int /*<<< orphan*/  FUNC1 (struct resource*) ; 
 int /*<<< orphan*/  FUNC2 (struct resource*) ; 
 scalar_t__ FUNC3 (struct resource*) ; 

__attribute__((used)) static void FUNC4(struct pcmcia_socket *s, struct resource *res)
{
	resource_size_t num = FUNC3(res);
	int i;

	FUNC0(&s->dev, "release_io_space for %pR\n", res);

	for (i = 0; i < MAX_IO_WIN; i++) {
		if (!s->io[i].res)
			continue;
		if ((s->io[i].res->start <= res->start) &&
		    (s->io[i].res->end >= res->end)) {
			s->io[i].InUse -= num;
			if (res->parent)
				FUNC2(res);
			res->start = res->end = 0;
			res->flags = IORESOURCE_IO;
			/* Free the window if no one else is using it */
			if (s->io[i].InUse == 0) {
				FUNC2(s->io[i].res);
				FUNC1(s->io[i].res);
				s->io[i].res = NULL;
			}
		}
	}
}