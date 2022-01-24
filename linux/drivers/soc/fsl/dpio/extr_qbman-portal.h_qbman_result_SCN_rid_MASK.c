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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  rid_tok; } ;
struct dpaa2_dq {TYPE_1__ scn; } ;

/* Variables and functions */
 int SCN_RID_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u32 FUNC1(const struct dpaa2_dq *scn)
{
	return FUNC0(scn->scn.rid_tok) & SCN_RID_MASK;
}