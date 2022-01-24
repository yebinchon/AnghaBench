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
typedef  int u32 ;
struct qbman_fq_query_np_rslt {int /*<<< orphan*/  frm_cnt; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

u32 FUNC1(const struct qbman_fq_query_np_rslt *r)
{
	return (FUNC0(r->frm_cnt) & 0x00FFFFFF);
}