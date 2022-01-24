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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * parent; } ;
struct rio_net {TYPE_1__ dev; int /*<<< orphan*/  id; struct rio_mport* hport; int /*<<< orphan*/  release; struct rio_id_table* enum_data; } ;
struct rio_mport {int /*<<< orphan*/  dev; int /*<<< orphan*/  id; int /*<<< orphan*/  sys_size; } ;
struct rio_id_table {int /*<<< orphan*/  lock; int /*<<< orphan*/  max; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 struct rio_id_table* FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct rio_net*) ; 
 struct rio_net* FUNC6 (struct rio_mport*) ; 
 int /*<<< orphan*/  FUNC7 (struct rio_net*) ; 
 int /*<<< orphan*/  rio_scan_release_dev ; 
 int /*<<< orphan*/  rio_scan_release_net ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct rio_net *FUNC9(struct rio_mport *mport,
					  int do_enum, u16 start)
{
	struct rio_net *net;

	net = FUNC6(mport);

	if (net && do_enum) {
		struct rio_id_table *idtab;
		size_t size;

		size = sizeof(struct rio_id_table) +
				FUNC0(
					FUNC1(mport->sys_size)
					) * sizeof(long);

		idtab = FUNC3(size, GFP_KERNEL);

		if (idtab == NULL) {
			FUNC4("RIO: failed to allocate destID table\n");
			FUNC7(net);
			net = NULL;
		} else {
			net->enum_data = idtab;
			net->release = rio_scan_release_net;
			idtab->start = start;
			idtab->max = FUNC1(mport->sys_size);
			FUNC8(&idtab->lock);
		}
	}

	if (net) {
		net->id = mport->id;
		net->hport = mport;
		FUNC2(&net->dev, "rnet_%d", net->id);
		net->dev.parent = &mport->dev;
		net->dev.release = rio_scan_release_dev;
		FUNC5(net);
	}

	return net;
}