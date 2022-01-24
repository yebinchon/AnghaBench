#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct resource {int end; int start; int flags; TYPE_4__* parent; } ;
struct pcmcia_socket {int state; int map_size; int features; int /*<<< orphan*/  ops_mutex; TYPE_1__* ops; TYPE_2__* win; } ;
struct pcmcia_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  _win; struct pcmcia_socket* socket; } ;
struct TYPE_6__ {int map; int flags; unsigned int speed; int static_start; TYPE_4__* res; scalar_t__ card_start; } ;
typedef  TYPE_2__ pccard_mem_map ;
struct TYPE_7__ {int start; } ;
struct TYPE_5__ {scalar_t__ (* set_mem_map ) (struct pcmcia_socket*,TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int EIO ; 
 int ENODEV ; 
 int IORESOURCE_MEM ; 
 int MAX_WIN ; 
 int SOCKET_PRESENT ; 
 int FUNC1 (int) ; 
 int SS_CAP_MEM_ALIGN ; 
 int SS_CAP_STATIC_MAP ; 
 int WIN_FLAGS_MAP ; 
 int WIN_FLAGS_REQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  iomem_resource ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC5 (int,int,int,int /*<<< orphan*/ ,struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct resource*) ; 
 scalar_t__ FUNC7 (struct pcmcia_socket*,TYPE_2__*) ; 

int FUNC8(struct pcmcia_device *p_dev, struct resource *res,
			unsigned int speed)
{
	struct pcmcia_socket *s = p_dev->socket;
	pccard_mem_map *win;
	u_long align;
	int w;

	FUNC2(&p_dev->dev, "request_window %pR %d\n", res, speed);

	if (!(s->state & SOCKET_PRESENT)) {
		FUNC2(&p_dev->dev, "No card present\n");
		return -ENODEV;
	}

	/* Window size defaults to smallest available */
	if (res->end == 0)
		res->end = s->map_size;
	align = (s->features & SS_CAP_MEM_ALIGN) ? res->end : s->map_size;
	if (res->end & (s->map_size-1)) {
		FUNC2(&p_dev->dev, "invalid map size\n");
		return -EINVAL;
	}
	if ((res->start && (s->features & SS_CAP_STATIC_MAP)) ||
	    (res->start & (align-1))) {
		FUNC2(&p_dev->dev, "invalid base address\n");
		return -EINVAL;
	}
	if (res->start)
		align = 0;

	/* Allocate system memory window */
	FUNC3(&s->ops_mutex);
	for (w = 0; w < MAX_WIN; w++)
		if (!(s->state & FUNC1(w)))
			break;
	if (w == MAX_WIN) {
		FUNC2(&p_dev->dev, "all windows are used already\n");
		FUNC4(&s->ops_mutex);
		return -EINVAL;
	}

	win = &s->win[w];

	if (!(s->features & SS_CAP_STATIC_MAP)) {
		win->res = FUNC5(res->start, res->end, align,
						0, s);
		if (!win->res) {
			FUNC2(&p_dev->dev, "allocating mem region failed\n");
			FUNC4(&s->ops_mutex);
			return -EINVAL;
		}
	}
	p_dev->_win |= FUNC0(w);

	/* Configure the socket controller */
	win->map = w+1;
	win->flags = res->flags & WIN_FLAGS_MAP;
	win->speed = speed;
	win->card_start = 0;

	if (s->ops->set_mem_map(s, win) != 0) {
		FUNC2(&p_dev->dev, "failed to set memory mapping\n");
		FUNC4(&s->ops_mutex);
		return -EIO;
	}
	s->state |= FUNC1(w);

	/* Return window handle */
	if (s->features & SS_CAP_STATIC_MAP)
		res->start = win->static_start;
	else
		res->start = win->res->start;

	/* convert to new-style resources */
	res->end += res->start - 1;
	res->flags &= ~WIN_FLAGS_REQ;
	res->flags |= (win->map << 2) | IORESOURCE_MEM;
	res->parent = win->res;
	if (win->res)
		FUNC6(&iomem_resource, res);

	FUNC2(&p_dev->dev, "request_window results in %pR\n", res);

	FUNC4(&s->ops_mutex);

	return 0;
}