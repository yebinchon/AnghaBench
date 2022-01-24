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
struct xen_front_pgdir_shbuf {int num_pages; int* grefs; int /*<<< orphan*/ * pages; TYPE_1__* xb_dev; } ;
typedef  int /*<<< orphan*/  grant_ref_t ;
struct TYPE_2__ {int otherend_id; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct xen_front_pgdir_shbuf *buf,
				       grant_ref_t *priv_gref_head,
				       int gref_idx)
{
	int i, cur_ref, otherend_id;

	otherend_id = buf->xb_dev->otherend_id;
	for (i = 0; i < buf->num_pages; i++) {
		cur_ref = FUNC0(priv_gref_head);
		if (cur_ref < 0)
			return cur_ref;

		FUNC1(cur_ref, otherend_id,
						FUNC2(buf->pages[i]),
						0);
		buf->grefs[gref_idx++] = cur_ref;
	}
	return 0;
}