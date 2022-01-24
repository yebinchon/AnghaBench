#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct qtnf_sta_list {int /*<<< orphan*/  size; int /*<<< orphan*/  head; } ;
struct qtnf_vif {int /*<<< orphan*/  generation; struct qtnf_sta_list sta_list; } ;
struct qtnf_sta_node {int /*<<< orphan*/  list; int /*<<< orphan*/  mac_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 struct qtnf_sta_node* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct qtnf_sta_node* FUNC4 (struct qtnf_sta_list*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int) ; 

struct qtnf_sta_node *FUNC6(struct qtnf_vif *vif,
					const u8 *mac)
{
	struct qtnf_sta_list *list = &vif->sta_list;
	struct qtnf_sta_node *node;

	if (FUNC5(!mac))
		return NULL;

	node = FUNC4(list, mac);

	if (node)
		goto done;

	node = FUNC2(sizeof(*node), GFP_KERNEL);
	if (FUNC5(!node))
		goto done;

	FUNC1(node->mac_addr, mac);
	FUNC3(&node->list, &list->head);
	FUNC0(&list->size);
	++vif->generation;

done:
	return node;
}