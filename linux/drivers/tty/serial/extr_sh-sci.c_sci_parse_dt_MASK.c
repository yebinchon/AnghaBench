#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sci_port {int /*<<< orphan*/  has_rtscts; } ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct plat_sci_port {int /*<<< orphan*/  regtype; int /*<<< orphan*/  type; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sci_port*) ; 
 int /*<<< orphan*/  CONFIG_OF ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void const*) ; 
 int /*<<< orphan*/  FUNC3 (void const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 struct plat_sci_port* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device_node*,char*) ; 
 void* FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*,char*) ; 
 struct sci_port* sci_ports ; 
 int /*<<< orphan*/  sci_ports_in_use ; 

__attribute__((used)) static struct plat_sci_port *FUNC10(struct platform_device *pdev,
					  unsigned int *dev_id)
{
	struct device_node *np = pdev->dev.of_node;
	struct plat_sci_port *p;
	struct sci_port *sp;
	const void *data;
	int id;

	if (!FUNC1(CONFIG_OF) || !np)
		return NULL;

	data = FUNC8(&pdev->dev);

	p = FUNC5(&pdev->dev, sizeof(struct plat_sci_port), GFP_KERNEL);
	if (!p)
		return NULL;

	/* Get the line number from the aliases node. */
	id = FUNC7(np, "serial");
	if (id < 0 && ~sci_ports_in_use)
		id = FUNC6(sci_ports_in_use);
	if (id < 0) {
		FUNC4(&pdev->dev, "failed to get alias id (%d)\n", id);
		return NULL;
	}
	if (id >= FUNC0(sci_ports)) {
		FUNC4(&pdev->dev, "serial%d out of range\n", id);
		return NULL;
	}

	sp = &sci_ports[id];
	*dev_id = id;

	p->type = FUNC3(data);
	p->regtype = FUNC2(data);

	sp->has_rtscts = FUNC9(np, "uart-has-rtscts");

	return p;
}