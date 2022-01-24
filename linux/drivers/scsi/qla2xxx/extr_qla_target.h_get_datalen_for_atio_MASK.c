#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int add_cdb_len; int /*<<< orphan*/ * add_cdb; } ;
struct TYPE_5__ {TYPE_1__ fcp_cmnd; } ;
struct TYPE_6__ {TYPE_2__ isp24; } ;
struct atio_from_isp {TYPE_3__ u; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC2(struct atio_from_isp *atio)
{
	int len = atio->u.isp24.fcp_cmnd.add_cdb_len;

	return (FUNC0(FUNC1((uint32_t *)
	    &atio->u.isp24.fcp_cmnd.add_cdb[len * 4])));
}