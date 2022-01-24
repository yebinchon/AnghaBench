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
struct xenbus_device {int /*<<< orphan*/  otherend_id; } ;
typedef  int grant_ref_t ;

/* Variables and functions */
 int XEN_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct xenbus_device*,int,char*) ; 

int FUNC4(struct xenbus_device *dev, void *vaddr,
		      unsigned int nr_pages, grant_ref_t *grefs)
{
	int err;
	int i, j;

	for (i = 0; i < nr_pages; i++) {
		err = FUNC1(dev->otherend_id,
						  FUNC2(vaddr), 0);
		if (err < 0) {
			FUNC3(dev, err,
					 "granting access to ring page");
			goto fail;
		}
		grefs[i] = err;

		vaddr = vaddr + XEN_PAGE_SIZE;
	}

	return 0;

fail:
	for (j = 0; j < i; j++)
		FUNC0(grefs[j], 0);
	return err;
}