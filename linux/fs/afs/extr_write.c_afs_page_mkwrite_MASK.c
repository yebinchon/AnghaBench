#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_fault_t ;
struct vm_fault {TYPE_3__* page; TYPE_1__* vma; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {int /*<<< orphan*/  cache; TYPE_2__ fid; } ;
struct TYPE_12__ {int /*<<< orphan*/  index; } ;
struct TYPE_10__ {struct file* vm_file; } ;

/* Variables and functions */
 struct afs_vnode* FUNC0 (struct inode*) ; 
 unsigned long AFS_PRIV_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  PG_writeback ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  VM_FAULT_LOCKED ; 
 int /*<<< orphan*/  VM_FAULT_RETRY ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct afs_vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 

vm_fault_t FUNC14(struct vm_fault *vmf)
{
	struct file *file = vmf->vma->vm_file;
	struct inode *inode = FUNC4(file);
	struct afs_vnode *vnode = FUNC0(inode);
	unsigned long priv;

	FUNC3("{{%llx:%llu}},{%lx}",
	       vnode->fid.vid, vnode->fid.vnode, vmf->page->index);

	FUNC8(inode->i_sb);

	/* Wait for the page to be written to the cache before we allow it to
	 * be modified.  We then assume the entire page will need writing back.
	 */
#ifdef CONFIG_AFS_FSCACHE
	fscache_wait_on_page_write(vnode->cache, vmf->page);
#endif

	if (FUNC1(vmf->page) &&
	    FUNC12(vmf->page, PG_writeback) < 0)
		return VM_FAULT_RETRY;

	if (FUNC6(vmf->page) < 0)
		return VM_FAULT_RETRY;

	/* We mustn't change page->private until writeback is complete as that
	 * details the portion of the page we need to write back and we might
	 * need to redirty the page if there's a problem.
	 */
	FUNC13(vmf->page);

	priv = (unsigned long)PAGE_SIZE << AFS_PRIV_SHIFT; /* To */
	priv |= 0; /* From */
	FUNC10(vnode, FUNC11("mkwrite"),
			     vmf->page->index, priv);
	FUNC2(vmf->page);
	FUNC9(vmf->page, priv);

	FUNC7(inode->i_sb);
	return VM_FAULT_LOCKED;
}