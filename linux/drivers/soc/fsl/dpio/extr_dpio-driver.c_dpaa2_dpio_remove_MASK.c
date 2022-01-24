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
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct device {int dummy; } ;
struct fsl_mc_device {int /*<<< orphan*/  mc_io; int /*<<< orphan*/  mc_handle; TYPE_1__ obj_desc; struct device dev; } ;
struct dpio_priv {int /*<<< orphan*/  io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpus_unused_mask ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct dpio_priv* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct fsl_mc_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct fsl_mc_device *dpio_dev)
{
	struct device *dev;
	struct dpio_priv *priv;
	int err = 0, cpu;

	dev = &dpio_dev->dev;
	priv = FUNC2(dev);
	cpu = FUNC4(priv->io);

	FUNC3(priv->io);

	FUNC8(dpio_dev);

	FUNC0(cpu, cpus_unused_mask);

	err = FUNC7(dpio_dev->mc_io, 0, dpio_dev->obj_desc.id,
			&dpio_dev->mc_handle);
	if (err) {
		FUNC1(dev, "dpio_open() failed\n");
		goto err_open;
	}

	FUNC6(dpio_dev->mc_io, 0, dpio_dev->mc_handle);

	FUNC5(dpio_dev->mc_io, 0, dpio_dev->mc_handle);

	FUNC9(dpio_dev->mc_io);

	return 0;

err_open:
	FUNC9(dpio_dev->mc_io);

	return err;
}