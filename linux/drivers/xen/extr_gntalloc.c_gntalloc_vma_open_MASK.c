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
struct vm_area_struct {struct gntalloc_vma_private_data* vm_private_data; } ;
struct gntalloc_vma_private_data {int /*<<< orphan*/  users; } ;

/* Variables and functions */
 int /*<<< orphan*/  gref_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct vm_area_struct *vma)
{
	struct gntalloc_vma_private_data *priv = vma->vm_private_data;

	if (!priv)
		return;

	FUNC0(&gref_mutex);
	priv->users++;
	FUNC1(&gref_mutex);
}