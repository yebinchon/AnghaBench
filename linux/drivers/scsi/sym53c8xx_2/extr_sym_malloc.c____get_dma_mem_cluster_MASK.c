#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* m_vtob_p ;
typedef  TYPE_2__* m_pool_p ;
struct TYPE_8__ {int /*<<< orphan*/  nump; TYPE_1__** vtob; } ;
struct TYPE_7__ {struct TYPE_7__* next; } ;

/* Variables and functions */
 int FUNC0 (void*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  mp0 ; 
 void* FUNC2 (TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static void * FUNC3(m_pool_p mp)
{
	m_vtob_p vbp;
	void *vaddr;

	vbp = FUNC1(&mp0, sizeof(*vbp), "VTOB");
	if (!vbp)
		goto out_err;

	vaddr = FUNC2(mp, vbp);
	if (vaddr) {
		int hc = FUNC0(vaddr);
		vbp->next = mp->vtob[hc];
		mp->vtob[hc] = vbp;
		++mp->nump;
	}
	return vaddr;
out_err:
	return NULL;
}