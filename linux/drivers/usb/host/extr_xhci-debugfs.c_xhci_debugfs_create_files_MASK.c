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
struct xhci_hcd {int dummy; } ;
struct xhci_file_map {int /*<<< orphan*/  name; } ;
struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct dentry*,void*,struct file_operations const*) ; 

__attribute__((used)) static void FUNC1(struct xhci_hcd *xhci,
				      struct xhci_file_map *files,
				      size_t nentries, void *data,
				      struct dentry *parent,
				      const struct file_operations *fops)
{
	int			i;

	for (i = 0; i < nentries; i++)
		FUNC0(files[i].name, 0444, parent, data, fops);
}