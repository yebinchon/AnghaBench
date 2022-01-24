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
struct resource {unsigned int start; unsigned int end; int /*<<< orphan*/ * parent; int /*<<< orphan*/  flags; } ;
struct pcmcia_socket {int /*<<< orphan*/  dev; TYPE_1__* resource_ops; } ;
struct TYPE_2__ {int (* find_io ) (struct pcmcia_socket*,int /*<<< orphan*/ ,unsigned int*,unsigned int,unsigned int,int /*<<< orphan*/ **) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IORESOURCE_IO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,struct resource*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pcmcia_socket*,struct resource*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct resource*) ; 
 int FUNC4 (struct pcmcia_socket*,int /*<<< orphan*/ ,unsigned int*,unsigned int,unsigned int,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC5(struct pcmcia_socket *s, struct resource *res,
			unsigned int lines)
{
	unsigned int align;
	unsigned int base = res->start;
	unsigned int num = res->end;
	int ret;

	res->flags |= IORESOURCE_IO;

	FUNC0(&s->dev, "alloc_io_space request for %pR, %d lines\n",
		res, lines);

	align = base ? (lines ? 1<<lines : 0) : 1;
	if (align && (align < num)) {
		if (base) {
			FUNC0(&s->dev, "odd IO request\n");
			align = 0;
		} else
			while (align && (align < num))
				align <<= 1;
	}
	if (base & ~(align-1)) {
		FUNC0(&s->dev, "odd IO request\n");
		align = 0;
	}

	ret = s->resource_ops->find_io(s, res->flags, &base, num, align,
				&res->parent);
	if (ret) {
		FUNC0(&s->dev, "alloc_io_space request failed (%d)\n", ret);
		return -EINVAL;
	}

	res->start = base;
	res->end = res->start + num - 1;

	if (res->parent) {
		ret = FUNC3(res->parent, res);
		if (ret) {
			FUNC1(&s->dev,
				"request_resource %pR failed: %d\n", res, ret);
			res->parent = NULL;
			FUNC2(s, res);
		}
	}
	FUNC0(&s->dev, "alloc_io_space request result %d: %pR\n", ret, res);
	return ret;
}