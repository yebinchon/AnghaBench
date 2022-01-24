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
typedef  long u8 ;
struct seq_file {void* private; } ;
struct pnp_bios_node {int size; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_node_size; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct pnp_bios_node*) ; 
 struct pnp_bios_node* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ node_info ; 
 scalar_t__ FUNC2 (long*,int,struct pnp_bios_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct seq_file *m, void *v)
{
	void *data = m->private;
	struct pnp_bios_node *node;
	int boot = (long)data >> 8;
	u8 nodenum = (long)data;
	int len;

	node = FUNC1(node_info.max_node_size, GFP_KERNEL);
	if (!node)
		return -ENOMEM;
	if (FUNC2(&nodenum, boot, node)) {
		FUNC0(node);
		return -EIO;
	}
	len = node->size - sizeof(struct pnp_bios_node);
	FUNC3(m, node->data, len);
	FUNC0(node);
	return 0;
}