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
struct vm_area_struct {struct vme_user_vma_priv* vm_private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  mmap_count; } ;

/* Variables and functions */
 TYPE_1__* image ; 
 int /*<<< orphan*/  FUNC0 (struct vme_user_vma_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct vm_area_struct *vma)
{
	struct vme_user_vma_priv *vma_priv = vma->vm_private_data;
	unsigned int minor = vma_priv->minor;

	if (!FUNC3(&vma_priv->refcnt))
		return;

	FUNC1(&image[minor].mutex);
	image[minor].mmap_count--;
	FUNC2(&image[minor].mutex);

	FUNC0(vma_priv);
}