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
struct dpaa2_io_desc {size_t cpu; scalar_t__ receives_notifications; int /*<<< orphan*/  qman_version; int /*<<< orphan*/  regs_cinh; int /*<<< orphan*/  regs_cena; } ;
struct TYPE_2__ {int /*<<< orphan*/  qman_version; int /*<<< orphan*/  cinh_bar; int /*<<< orphan*/  cena_bar; } ;
struct dpaa2_io {struct device* dev; int /*<<< orphan*/  node; int /*<<< orphan*/  swp; struct dpaa2_io_desc dpio_desc; int /*<<< orphan*/  notifications; int /*<<< orphan*/  lock_notifications; int /*<<< orphan*/  lock_mgmt_cmd; TYPE_1__ swp_desc; } ;
struct device {int dummy; } ;

/* Variables and functions */
 size_t DPAA2_IO_ANY_CPU ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  QBMAN_SWP_INTERRUPT_DQRI ; 
 struct dpaa2_io** dpio_by_cpu ; 
 int /*<<< orphan*/  dpio_list ; 
 int /*<<< orphan*/  dpio_list_lock ; 
 int /*<<< orphan*/  FUNC1 (struct dpaa2_io*) ; 
 struct dpaa2_io* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

struct dpaa2_io *FUNC12(const struct dpaa2_io_desc *desc,
				 struct device *dev)
{
	struct dpaa2_io *obj = FUNC2(sizeof(*obj), GFP_KERNEL);

	if (!obj)
		return NULL;

	/* check if CPU is out of range (-1 means any cpu) */
	if (desc->cpu != DPAA2_IO_ANY_CPU && desc->cpu >= FUNC4()) {
		FUNC1(obj);
		return NULL;
	}

	obj->dpio_desc = *desc;
	obj->swp_desc.cena_bar = obj->dpio_desc.regs_cena;
	obj->swp_desc.cinh_bar = obj->dpio_desc.regs_cinh;
	obj->swp_desc.qman_version = obj->dpio_desc.qman_version;
	obj->swp = FUNC5(&obj->swp_desc);

	if (!obj->swp) {
		FUNC1(obj);
		return NULL;
	}

	FUNC0(&obj->node);
	FUNC10(&obj->lock_mgmt_cmd);
	FUNC10(&obj->lock_notifications);
	FUNC0(&obj->notifications);

	/* For now only enable DQRR interrupts */
	FUNC7(obj->swp,
					QBMAN_SWP_INTERRUPT_DQRI);
	FUNC6(obj->swp, 0xffffffff);
	if (obj->dpio_desc.receives_notifications)
		FUNC8(obj->swp, 0, 1);

	FUNC9(&dpio_list_lock);
	FUNC3(&obj->node, &dpio_list);
	if (desc->cpu >= 0 && !dpio_by_cpu[desc->cpu])
		dpio_by_cpu[desc->cpu] = obj;
	FUNC11(&dpio_list_lock);

	obj->dev = dev;

	return obj;
}