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
struct vm_area_struct {struct privcmd_buf_vma_private* vm_private_data; } ;
struct privcmd_buf_vma_private {int /*<<< orphan*/  users; struct privcmd_buf_private* file_priv; } ;
struct privcmd_buf_private {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct privcmd_buf_vma_private*) ; 

__attribute__((used)) static void FUNC3(struct vm_area_struct *vma)
{
	struct privcmd_buf_vma_private *vma_priv = vma->vm_private_data;
	struct privcmd_buf_private *file_priv;

	if (!vma_priv)
		return;

	file_priv = vma_priv->file_priv;

	FUNC0(&file_priv->lock);

	vma_priv->users--;
	if (!vma_priv->users)
		FUNC2(vma_priv);

	FUNC1(&file_priv->lock);
}