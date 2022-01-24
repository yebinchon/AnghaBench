#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  groups; int /*<<< orphan*/  of_node; TYPE_3__* parent; int /*<<< orphan*/ * bus; int /*<<< orphan*/ * type; } ;
struct nvmem_device {int id; int stride; int word_size; int read_only; TYPE_2__ dev; int /*<<< orphan*/  reg_write; int /*<<< orphan*/  reg_read; int /*<<< orphan*/  type; int /*<<< orphan*/  priv; int /*<<< orphan*/  size; scalar_t__ owner; int /*<<< orphan*/  cells; int /*<<< orphan*/  refcnt; } ;
struct nvmem_config {int id; scalar_t__ compat; int /*<<< orphan*/  ncells; int /*<<< orphan*/  cells; scalar_t__ name; scalar_t__ read_only; TYPE_3__* dev; int /*<<< orphan*/  no_of_node; int /*<<< orphan*/  reg_write; int /*<<< orphan*/  reg_read; int /*<<< orphan*/  type; int /*<<< orphan*/  priv; int /*<<< orphan*/  size; scalar_t__ word_size; scalar_t__ stride; scalar_t__ owner; } ;
struct TYPE_11__ {int /*<<< orphan*/  of_node; TYPE_1__* driver; } ;
struct TYPE_9__ {scalar_t__ owner; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct nvmem_device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NVMEM_ADD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nvmem_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,char*,...) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_3__*,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nvmem_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct nvmem_device* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct nvmem_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct nvmem_device*) ; 
 int FUNC15 (struct nvmem_device*) ; 
 int /*<<< orphan*/  nvmem_bus_type ; 
 int /*<<< orphan*/  FUNC16 (struct nvmem_device*) ; 
 int /*<<< orphan*/  nvmem_ida ; 
 int /*<<< orphan*/  nvmem_notifier ; 
 int /*<<< orphan*/  nvmem_provider_type ; 
 int /*<<< orphan*/  FUNC17 (struct nvmem_device*,struct nvmem_config const*) ; 
 int /*<<< orphan*/  FUNC18 (struct nvmem_device*,struct nvmem_config const*) ; 
 int FUNC19 (struct nvmem_device*,struct nvmem_config const*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 

struct nvmem_device *FUNC21(const struct nvmem_config *config)
{
	struct nvmem_device *nvmem;
	int rval;

	if (!config->dev)
		return FUNC0(-EINVAL);

	nvmem = FUNC12(sizeof(*nvmem), GFP_KERNEL);
	if (!nvmem)
		return FUNC0(-ENOMEM);

	rval  = FUNC9(&nvmem_ida, 0, 0, GFP_KERNEL);
	if (rval < 0) {
		FUNC10(nvmem);
		return FUNC0(rval);
	}

	FUNC11(&nvmem->refcnt);
	FUNC1(&nvmem->cells);

	nvmem->id = rval;
	nvmem->owner = config->owner;
	if (!nvmem->owner && config->dev->driver)
		nvmem->owner = config->dev->driver->owner;
	nvmem->stride = config->stride ?: 1;
	nvmem->word_size = config->word_size ?: 1;
	nvmem->size = config->size;
	nvmem->dev.type = &nvmem_provider_type;
	nvmem->dev.bus = &nvmem_bus_type;
	nvmem->dev.parent = config->dev;
	nvmem->priv = config->priv;
	nvmem->type = config->type;
	nvmem->reg_read = config->reg_read;
	nvmem->reg_write = config->reg_write;
	if (!config->no_of_node)
		nvmem->dev.of_node = config->dev->of_node;

	if (config->id == -1 && config->name) {
		FUNC4(&nvmem->dev, "%s", config->name);
	} else {
		FUNC4(&nvmem->dev, "%s%d",
			     config->name ? : "nvmem",
			     config->name ? config->id : nvmem->id);
	}

	nvmem->read_only = FUNC8(config->dev, "read-only") ||
			   config->read_only || !nvmem->reg_write;

	nvmem->dev.groups = FUNC17(nvmem, config);

	FUNC7(&nvmem->dev);

	FUNC3(&nvmem->dev, "Registering nvmem device %s\n", config->name);

	rval = FUNC5(&nvmem->dev);
	if (rval)
		goto err_put_device;

	if (config->compat) {
		rval = FUNC19(nvmem, config);
		if (rval)
			goto err_device_del;
	}

	if (config->cells) {
		rval = FUNC13(nvmem, config->cells, config->ncells);
		if (rval)
			goto err_teardown_compat;
	}

	rval = FUNC15(nvmem);
	if (rval)
		goto err_remove_cells;

	rval = FUNC14(nvmem);
	if (rval)
		goto err_remove_cells;

	FUNC2(&nvmem_notifier, NVMEM_ADD, nvmem);

	return nvmem;

err_remove_cells:
	FUNC16(nvmem);
err_teardown_compat:
	if (config->compat)
		FUNC18(nvmem, config);
err_device_del:
	FUNC6(&nvmem->dev);
err_put_device:
	FUNC20(&nvmem->dev);

	return FUNC0(rval);
}