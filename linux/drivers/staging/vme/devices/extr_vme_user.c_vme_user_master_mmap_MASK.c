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
struct vme_user_vma_priv {unsigned int minor; int /*<<< orphan*/  refcnt; } ;
struct vm_area_struct {struct vme_user_vma_priv* vm_private_data; int /*<<< orphan*/ * vm_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  mmap_count; int /*<<< orphan*/  resource; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__* image ; 
 struct vme_user_vma_priv* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct vm_area_struct*) ; 
 int /*<<< orphan*/  vme_user_vm_ops ; 

__attribute__((used)) static int FUNC5(unsigned int minor, struct vm_area_struct *vma)
{
	int err;
	struct vme_user_vma_priv *vma_priv;

	FUNC1(&image[minor].mutex);

	err = FUNC4(image[minor].resource, vma);
	if (err) {
		FUNC2(&image[minor].mutex);
		return err;
	}

	vma_priv = FUNC0(sizeof(*vma_priv), GFP_KERNEL);
	if (!vma_priv) {
		FUNC2(&image[minor].mutex);
		return -ENOMEM;
	}

	vma_priv->minor = minor;
	FUNC3(&vma_priv->refcnt, 1);
	vma->vm_ops = &vme_user_vm_ops;
	vma->vm_private_data = vma_priv;

	image[minor].mmap_count++;

	FUNC2(&image[minor].mutex);

	return 0;
}