#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct clk_init_data const* init; } ;
struct qmp {TYPE_1__ qdss_clk; TYPE_2__* dev; } ;
struct clk_init_data {char* name; int /*<<< orphan*/ * ops; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  of_clk_hw_simple_get ; 
 int /*<<< orphan*/  qmp_qdss_clk_ops ; 

__attribute__((used)) static int FUNC4(struct qmp *qmp)
{
	static const struct clk_init_data qdss_init = {
		.ops = &qmp_qdss_clk_ops,
		.name = "qdss",
	};
	int ret;

	qmp->qdss_clk.init = &qdss_init;
	ret = FUNC0(qmp->dev, &qmp->qdss_clk);
	if (ret < 0) {
		FUNC2(qmp->dev, "failed to register qdss clock\n");
		return ret;
	}

	ret = FUNC3(qmp->dev->of_node, of_clk_hw_simple_get,
				     &qmp->qdss_clk);
	if (ret < 0) {
		FUNC2(qmp->dev, "unable to register of clk hw provider\n");
		FUNC1(&qmp->qdss_clk);
	}

	return ret;
}