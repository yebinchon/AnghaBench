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
struct inode {int dummy; } ;
struct file {struct ashmem_area* private_data; } ;
struct ashmem_area {int /*<<< orphan*/  prot_mask; int /*<<< orphan*/  name; int /*<<< orphan*/  unpinned_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASHMEM_NAME_PREFIX ; 
 int /*<<< orphan*/  ASHMEM_NAME_PREFIX_LEN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PROT_MASK ; 
 int /*<<< orphan*/  ashmem_area_cachep ; 
 int FUNC1 (struct inode*,struct file*) ; 
 struct ashmem_area* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	struct ashmem_area *asma;
	int ret;

	ret = FUNC1(inode, file);
	if (ret)
		return ret;

	asma = FUNC2(ashmem_area_cachep, GFP_KERNEL);
	if (!asma)
		return -ENOMEM;

	FUNC0(&asma->unpinned_list);
	FUNC3(asma->name, ASHMEM_NAME_PREFIX, ASHMEM_NAME_PREFIX_LEN);
	asma->prot_mask = PROT_MASK;
	file->private_data = asma;

	return 0;
}