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
struct vm_area_struct {int vm_flags; struct privcmd_buf_vma_private* vm_private_data; int /*<<< orphan*/ * vm_ops; } ;
struct privcmd_buf_vma_private {unsigned long n_pages; int users; int /*<<< orphan*/ * pages; int /*<<< orphan*/  list; struct privcmd_buf_private* file_priv; } ;
struct privcmd_buf_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct file {struct privcmd_buf_private* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int VM_DONTEXPAND ; 
 int VM_IO ; 
 int VM_SHARED ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct privcmd_buf_vma_private* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pages ; 
 int /*<<< orphan*/  privcmd_buf_vm_ops ; 
 int /*<<< orphan*/  FUNC5 (struct privcmd_buf_vma_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct privcmd_buf_vma_private*,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC7 (struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC8 (struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC9(struct file *file, struct vm_area_struct *vma)
{
	struct privcmd_buf_private *file_priv = file->private_data;
	struct privcmd_buf_vma_private *vma_priv;
	unsigned long count = FUNC8(vma);
	unsigned int i;
	int ret = 0;

	if (!(vma->vm_flags & VM_SHARED))
		return -EINVAL;

	vma_priv = FUNC1(FUNC6(vma_priv, pages, count), GFP_KERNEL);
	if (!vma_priv)
		return -ENOMEM;

	for (i = 0; i < count; i++) {
		vma_priv->pages[i] = FUNC0(GFP_KERNEL | __GFP_ZERO);
		if (!vma_priv->pages[i])
			break;
		vma_priv->n_pages++;
	}

	FUNC3(&file_priv->lock);

	vma_priv->file_priv = file_priv;
	vma_priv->users = 1;

	vma->vm_flags |= VM_IO | VM_DONTEXPAND;
	vma->vm_ops = &privcmd_buf_vm_ops;
	vma->vm_private_data = vma_priv;

	FUNC2(&vma_priv->list, &file_priv->list);

	if (vma_priv->n_pages != count)
		ret = -ENOMEM;
	else
		ret = FUNC7(vma, vma_priv->pages,
						vma_priv->n_pages);

	if (ret)
		FUNC5(vma_priv);

	FUNC4(&file_priv->lock);

	return ret;
}