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
struct xhci_ring {int dummy; } ;
struct xhci_hcd {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC1 (char const*,struct dentry*) ; 
 int /*<<< orphan*/  ring_files ; 
 int /*<<< orphan*/  FUNC2 (struct xhci_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xhci_ring**,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xhci_ring_fops ; 

__attribute__((used)) static struct dentry *FUNC3(struct xhci_hcd *xhci,
						   struct xhci_ring **ring,
						   const char *name,
						   struct dentry *parent)
{
	struct dentry		*dir;

	dir = FUNC1(name, parent);
	FUNC2(xhci, ring_files, FUNC0(ring_files),
				  ring, dir, &xhci_ring_fops);

	return dir;
}