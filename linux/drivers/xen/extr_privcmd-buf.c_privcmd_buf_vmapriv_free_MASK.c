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
struct privcmd_buf_vma_private {unsigned int n_pages; int /*<<< orphan*/ * pages; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct privcmd_buf_vma_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct privcmd_buf_vma_private *vma_priv)
{
	unsigned int i;

	FUNC2(&vma_priv->list);

	for (i = 0; i < vma_priv->n_pages; i++)
		FUNC0(vma_priv->pages[i]);

	FUNC1(vma_priv);
}