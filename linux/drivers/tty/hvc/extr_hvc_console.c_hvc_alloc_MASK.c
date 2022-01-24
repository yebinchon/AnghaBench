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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/ * ops; } ;
struct hvc_struct {scalar_t__ vtermno; int data; int outbuf_size; char* outbuf; int index; int /*<<< orphan*/  next; struct hv_ops const* ops; int /*<<< orphan*/  lock; int /*<<< orphan*/  tty_resize; TYPE_1__ port; } ;
struct hv_ops {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int,int) ; 
 int ENOMEM ; 
 struct hvc_struct* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MAX_NR_HVC_CONSOLES ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct hv_ops const** cons_ops ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  hvc_needs_init ; 
 int /*<<< orphan*/  hvc_port_ops ; 
 int /*<<< orphan*/  hvc_set_winsz ; 
 int /*<<< orphan*/  hvc_structs ; 
 int /*<<< orphan*/  hvc_structs_mutex ; 
 struct hvc_struct* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int last_hvc ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 scalar_t__* vtermnos ; 

struct hvc_struct *FUNC12(uint32_t vtermno, int data,
			     const struct hv_ops *ops,
			     int outbuf_size)
{
	struct hvc_struct *hp;
	int i;

	/* We wait until a driver actually comes along */
	if (FUNC3(&hvc_needs_init)) {
		int err = FUNC5();
		if (err)
			return FUNC1(err);
	}

	hp = FUNC6(FUNC0(sizeof(*hp), sizeof(long)) + outbuf_size,
			GFP_KERNEL);
	if (!hp)
		return FUNC1(-ENOMEM);

	hp->vtermno = vtermno;
	hp->data = data;
	hp->ops = ops;
	hp->outbuf_size = outbuf_size;
	hp->outbuf = &((char *)hp)[FUNC0(sizeof(*hp), sizeof(long))];

	FUNC11(&hp->port);
	hp->port.ops = &hvc_port_ops;

	FUNC2(&hp->tty_resize, hvc_set_winsz);
	FUNC10(&hp->lock);
	FUNC8(&hvc_structs_mutex);

	/*
	 * find index to use:
	 * see if this vterm id matches one registered for console.
	 */
	for (i=0; i < MAX_NR_HVC_CONSOLES; i++)
		if (vtermnos[i] == hp->vtermno &&
		    cons_ops[i] == hp->ops)
			break;

	/* no matching slot, just use a counter */
	if (i >= MAX_NR_HVC_CONSOLES)
		i = ++last_hvc;

	hp->index = i;
	cons_ops[i] = ops;
	vtermnos[i] = vtermno;

	FUNC7(&(hp->next), &hvc_structs);
	FUNC9(&hvc_structs_mutex);

	/* check if we need to re-register the kernel console */
	FUNC4(i);

	return hp;
}