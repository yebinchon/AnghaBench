#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int region_count; int /*<<< orphan*/  id; } ;
struct device {int dummy; } ;
struct fsl_mc_device {int /*<<< orphan*/  mc_io; int /*<<< orphan*/  mc_handle; TYPE_2__* regions; TYPE_1__ obj_desc; struct device dev; } ;
struct dpio_priv {int /*<<< orphan*/  io; } ;
struct dpio_attr {int num_priorities; int /*<<< orphan*/  qbman_version; } ;
struct dpaa2_io_desc {int receives_notifications; int has_8prio; int cpu; int /*<<< orphan*/  regs_cinh; void* regs_cena; int /*<<< orphan*/  dpio_id; int /*<<< orphan*/  qman_version; } ;
struct TYPE_4__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int ERANGE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  MEMREMAP_WB ; 
 int /*<<< orphan*/  MEMREMAP_WC ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpus_unused_mask ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct dpio_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dpio_priv* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC10 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct fsl_mc_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct dpaa2_io_desc*,struct device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dpio_attr*) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC20 (struct fsl_mc_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct fsl_mc_device*) ; 
 int FUNC22 (struct fsl_mc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int nr_cpu_ids ; 
 int FUNC24 (struct fsl_mc_device*,int) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC26 (struct fsl_mc_device*) ; 

__attribute__((used)) static int FUNC27(struct fsl_mc_device *dpio_dev)
{
	struct dpio_attr dpio_attrs;
	struct dpaa2_io_desc desc;
	struct dpio_priv *priv;
	int err = -ENOMEM;
	struct device *dev = &dpio_dev->dev;
	int possible_next_cpu;
	int sdest;

	priv = FUNC9(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		goto err_priv_alloc;

	FUNC7(dev, priv);

	err = FUNC22(dpio_dev, 0, &dpio_dev->mc_io);
	if (err) {
		FUNC4(dev, "MC portal allocation failed\n");
		err = -EPROBE_DEFER;
		goto err_priv_alloc;
	}

	err = FUNC17(dpio_dev->mc_io, 0, dpio_dev->obj_desc.id,
			&dpio_dev->mc_handle);
	if (err) {
		FUNC5(dev, "dpio_open() failed\n");
		goto err_open;
	}

	err = FUNC18(dpio_dev->mc_io, 0, dpio_dev->mc_handle);
	if (err) {
		FUNC5(dev, "dpio_reset() failed\n");
		goto err_reset;
	}

	err = FUNC16(dpio_dev->mc_io, 0, dpio_dev->mc_handle,
				  &dpio_attrs);
	if (err) {
		FUNC5(dev, "dpio_get_attributes() failed %d\n", err);
		goto err_get_attr;
	}
	desc.qman_version = dpio_attrs.qbman_version;

	err = FUNC15(dpio_dev->mc_io, 0, dpio_dev->mc_handle);
	if (err) {
		FUNC5(dev, "dpio_enable() failed %d\n", err);
		goto err_get_attr;
	}

	/* initialize DPIO descriptor */
	desc.receives_notifications = dpio_attrs.num_priorities ? 1 : 0;
	desc.has_8prio = dpio_attrs.num_priorities == 8 ? 1 : 0;
	desc.dpio_id = dpio_dev->obj_desc.id;

	/* get the cpu to use for the affinity hint */
	possible_next_cpu = FUNC3(cpus_unused_mask);
	if (possible_next_cpu >= nr_cpu_ids) {
		FUNC5(dev, "probe failed. Number of DPIOs exceeds NR_CPUS.\n");
		err = -ERANGE;
		goto err_allocate_irqs;
	}
	desc.cpu = possible_next_cpu;
	FUNC2(possible_next_cpu, cpus_unused_mask);

	sdest = FUNC11(dpio_dev, desc.cpu);
	if (sdest >= 0) {
		err = FUNC19(dpio_dev->mc_io, 0,
						    dpio_dev->mc_handle,
						    sdest);
		if (err)
			FUNC5(dev, "dpio_set_stashing_destination failed for cpu%d\n",
				desc.cpu);
	}

	if (dpio_dev->obj_desc.region_count < 3) {
		/* No support for DDR backed portals, use classic mapping */
		/*
		 * Set the CENA regs to be the cache inhibited area of the
		 * portal to avoid coherency issues if a user migrates to
		 * another core.
		 */
		desc.regs_cena = FUNC10(dev, dpio_dev->regions[1].start,
					FUNC25(&dpio_dev->regions[1]),
					MEMREMAP_WC);
	} else {
		desc.regs_cena = FUNC10(dev, dpio_dev->regions[2].start,
					FUNC25(&dpio_dev->regions[2]),
					MEMREMAP_WB);
	}

	if (FUNC0(desc.regs_cena)) {
		FUNC5(dev, "devm_memremap failed\n");
		err = FUNC1(desc.regs_cena);
		goto err_allocate_irqs;
	}

	desc.regs_cinh = FUNC8(dev, dpio_dev->regions[1].start,
				      FUNC25(&dpio_dev->regions[1]));
	if (!desc.regs_cinh) {
		err = -ENOMEM;
		FUNC5(dev, "devm_ioremap failed\n");
		goto err_allocate_irqs;
	}

	err = FUNC20(dpio_dev);
	if (err) {
		FUNC5(dev, "fsl_mc_allocate_irqs failed. err=%d\n", err);
		goto err_allocate_irqs;
	}

	err = FUNC24(dpio_dev, desc.cpu);
	if (err)
		goto err_register_dpio_irq;

	priv->io = FUNC12(&desc, dev);
	if (!priv->io) {
		FUNC5(dev, "dpaa2_io_create failed\n");
		err = -ENOMEM;
		goto err_dpaa2_io_create;
	}

	FUNC6(dev, "probed\n");
	FUNC4(dev, "   receives_notifications = %d\n",
		desc.receives_notifications);
	FUNC13(dpio_dev->mc_io, 0, dpio_dev->mc_handle);

	return 0;

err_dpaa2_io_create:
	FUNC26(dpio_dev);
err_register_dpio_irq:
	FUNC21(dpio_dev);
err_allocate_irqs:
	FUNC14(dpio_dev->mc_io, 0, dpio_dev->mc_handle);
err_get_attr:
err_reset:
	FUNC13(dpio_dev->mc_io, 0, dpio_dev->mc_handle);
err_open:
	FUNC23(dpio_dev->mc_io);
err_priv_alloc:
	return err;
}