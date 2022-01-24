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
struct device {int dummy; } ;
struct rproc {struct resource_table* cached_table; struct resource_table* table_ptr; TYPE_1__* ops; int /*<<< orphan*/  name; int /*<<< orphan*/  state; int /*<<< orphan*/  table_sz; struct device dev; } ;
struct resource_table {int dummy; } ;
struct firmware {int dummy; } ;
struct TYPE_2__ {int (* start ) (struct rproc*) ;int /*<<< orphan*/  (* stop ) (struct rproc*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  RPROC_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct resource_table*,struct resource_table*,int /*<<< orphan*/ ) ; 
 struct resource_table* FUNC3 (struct rproc*,struct firmware const*) ; 
 int FUNC4 (struct rproc*,struct firmware const*) ; 
 int FUNC5 (struct rproc*) ; 
 int FUNC6 (struct rproc*) ; 
 int /*<<< orphan*/  FUNC7 (struct rproc*) ; 
 int FUNC8 (struct rproc*) ; 
 int /*<<< orphan*/  FUNC9 (struct rproc*) ; 

__attribute__((used)) static int FUNC10(struct rproc *rproc, const struct firmware *fw)
{
	struct resource_table *loaded_table;
	struct device *dev = &rproc->dev;
	int ret;

	/* load the ELF segments to memory */
	ret = FUNC4(rproc, fw);
	if (ret) {
		FUNC0(dev, "Failed to load program segments: %d\n", ret);
		return ret;
	}

	/*
	 * The starting device has been given the rproc->cached_table as the
	 * resource table. The address of the vring along with the other
	 * allocated resources (carveouts etc) is stored in cached_table.
	 * In order to pass this information to the remote device we must copy
	 * this information to device memory. We also update the table_ptr so
	 * that any subsequent changes will be applied to the loaded version.
	 */
	loaded_table = FUNC3(rproc, fw);
	if (loaded_table) {
		FUNC2(loaded_table, rproc->cached_table, rproc->table_sz);
		rproc->table_ptr = loaded_table;
	}

	ret = FUNC5(rproc);
	if (ret) {
		FUNC0(dev, "failed to prepare subdevices for %s: %d\n",
			rproc->name, ret);
		goto reset_table_ptr;
	}

	/* power up the remote processor */
	ret = rproc->ops->start(rproc);
	if (ret) {
		FUNC0(dev, "can't start rproc %s: %d\n", rproc->name, ret);
		goto unprepare_subdevices;
	}

	/* Start any subdevices for the remote processor */
	ret = FUNC6(rproc);
	if (ret) {
		FUNC0(dev, "failed to probe subdevices for %s: %d\n",
			rproc->name, ret);
		goto stop_rproc;
	}

	rproc->state = RPROC_RUNNING;

	FUNC1(dev, "remote processor %s is now up\n", rproc->name);

	return 0;

stop_rproc:
	rproc->ops->stop(rproc);
unprepare_subdevices:
	FUNC7(rproc);
reset_table_ptr:
	rproc->table_ptr = rproc->cached_table;

	return ret;
}