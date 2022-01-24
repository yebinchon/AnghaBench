#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* u_char ;
struct TYPE_5__ {int TupleDataLen; void** TupleData; } ;
typedef  TYPE_1__ tuple_t ;
struct TYPE_6__ {int /*<<< orphan*/  vendor; int /*<<< orphan*/  str; void* nhdr; void* vspec9; void* vspec8; int /*<<< orphan*/  dindex; void* comply; void* vers; } ;
typedef  TYPE_2__ cistpl_vers_2_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (void**) ; 
 int FUNC1 (void**,void**,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(tuple_t *tuple, cistpl_vers_2_t *v2)
{
	u_char *p, *q;

	if (tuple->TupleDataLen < 10)
		return -EINVAL;

	p = tuple->TupleData;
	q = p + tuple->TupleDataLen;

	v2->vers = p[0];
	v2->comply = p[1];
	v2->dindex = FUNC0(p + 2);
	v2->vspec8 = p[6];
	v2->vspec9 = p[7];
	v2->nhdr = p[8];
	p += 9;
	return FUNC1(p, q, 2, v2->str, &v2->vendor, NULL);
}