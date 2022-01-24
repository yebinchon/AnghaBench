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
struct vm_area_struct {struct privcmd_buf_vma_private* vm_private_data; } ;
struct privcmd_buf_vma_private {TYPE_1__* file_priv; int /*<<< orphan*/  users; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct vm_area_struct *vma)
{
	struct privcmd_buf_vma_private *vma_priv = vma->vm_private_data;

	if (!vma_priv)
		return;

	FUNC0(&vma_priv->file_priv->lock);
	vma_priv->users++;
	FUNC1(&vma_priv->file_priv->lock);
}