#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  groups; struct device_node* of_node; int /*<<< orphan*/  release; struct device* parent; } ;
struct qcom_smd_edge {TYPE_1__ dev; int /*<<< orphan*/  mbox_chan; int /*<<< orphan*/  scan_work; int /*<<< orphan*/  new_channel_event; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct qcom_smd_edge* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ,struct device_node*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct qcom_smd_edge* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int FUNC12 (struct qcom_smd_edge*) ; 
 int /*<<< orphan*/  qcom_smd_edge_groups ; 
 int /*<<< orphan*/  qcom_smd_edge_release ; 
 int FUNC13 (TYPE_1__*,struct device_node*,struct qcom_smd_edge*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

struct qcom_smd_edge *FUNC15(struct device *parent,
					     struct device_node *node)
{
	struct qcom_smd_edge *edge;
	int ret;

	edge = FUNC8(sizeof(*edge), GFP_KERNEL);
	if (!edge)
		return FUNC0(-ENOMEM);

	FUNC7(&edge->new_channel_event);

	edge->dev.parent = parent;
	edge->dev.release = qcom_smd_edge_release;
	edge->dev.of_node = node;
	edge->dev.groups = qcom_smd_edge_groups;
	FUNC4(&edge->dev, "%s:%pOFn", FUNC3(parent), node);
	ret = FUNC5(&edge->dev);
	if (ret) {
		FUNC10("failed to register smd edge\n");
		FUNC11(&edge->dev);
		return FUNC0(ret);
	}

	ret = FUNC13(&edge->dev, node, edge);
	if (ret) {
		FUNC2(&edge->dev, "failed to parse smd edge\n");
		goto unregister_dev;
	}

	ret = FUNC12(edge);
	if (ret) {
		FUNC2(&edge->dev, "failed to register chrdev for edge\n");
		goto unregister_dev;
	}

	FUNC14(&edge->scan_work);

	return edge;

unregister_dev:
	if (!FUNC1(edge->mbox_chan))
		FUNC9(edge->mbox_chan);

	FUNC6(&edge->dev);
	return FUNC0(ret);
}