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
struct TYPE_2__ {int /*<<< orphan*/  rnf_complete; int /*<<< orphan*/  rnf_error; int /*<<< orphan*/  rnf_submit; struct mon_reader_text* r_data; struct mon_bus* m_bus; } ;
struct mon_reader_text {struct mon_reader_text* printf_buf; TYPE_1__ r; int /*<<< orphan*/ * e_slab; int /*<<< orphan*/  slab_name; int /*<<< orphan*/  printf_size; int /*<<< orphan*/  printf_lock; int /*<<< orphan*/  wait; int /*<<< orphan*/  e_list; } ;
struct mon_event_text {int dummy; } ;
struct mon_bus {int dummy; } ;
struct inode {struct mon_bus* i_private; } ;
struct file {struct mon_reader_text* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PRINTF_DFL ; 
 int /*<<< orphan*/  SLAB_NAME_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mon_reader_text*) ; 
 struct mon_reader_text* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mon_reader_text* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mon_lock ; 
 int /*<<< orphan*/  FUNC6 (struct mon_bus*,TYPE_1__*) ; 
 int /*<<< orphan*/  mon_text_complete ; 
 int /*<<< orphan*/  mon_text_ctor ; 
 int /*<<< orphan*/  mon_text_error ; 
 int /*<<< orphan*/  mon_text_submit ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct mon_reader_text*) ; 

__attribute__((used)) static int FUNC11(struct inode *inode, struct file *file)
{
	struct mon_bus *mbus;
	struct mon_reader_text *rp;
	int rc;

	FUNC8(&mon_lock);
	mbus = inode->i_private;

	rp = FUNC5(sizeof(struct mon_reader_text), GFP_KERNEL);
	if (rp == NULL) {
		rc = -ENOMEM;
		goto err_alloc;
	}
	FUNC0(&rp->e_list);
	FUNC1(&rp->wait);
	FUNC7(&rp->printf_lock);

	rp->printf_size = PRINTF_DFL;
	rp->printf_buf = FUNC3(rp->printf_size, GFP_KERNEL);
	if (rp->printf_buf == NULL) {
		rc = -ENOMEM;
		goto err_alloc_pr;
	}

	rp->r.m_bus = mbus;
	rp->r.r_data = rp;
	rp->r.rnf_submit = mon_text_submit;
	rp->r.rnf_error = mon_text_error;
	rp->r.rnf_complete = mon_text_complete;

	FUNC10(rp->slab_name, SLAB_NAME_SZ, "mon_text_%p", rp);
	rp->e_slab = FUNC4(rp->slab_name,
	    sizeof(struct mon_event_text), sizeof(long), 0,
	    mon_text_ctor);
	if (rp->e_slab == NULL) {
		rc = -ENOMEM;
		goto err_slab;
	}

	FUNC6(mbus, &rp->r);

	file->private_data = rp;
	FUNC9(&mon_lock);
	return 0;

// err_busy:
//	kmem_cache_destroy(rp->e_slab);
err_slab:
	FUNC2(rp->printf_buf);
err_alloc_pr:
	FUNC2(rp);
err_alloc:
	FUNC9(&mon_lock);
	return rc;
}