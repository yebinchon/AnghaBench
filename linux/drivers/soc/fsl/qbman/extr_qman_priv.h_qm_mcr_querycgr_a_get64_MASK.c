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
typedef  int u64 ;
struct qm_mcr_querycgr {int /*<<< orphan*/  a_bcnt_lo; scalar_t__ a_bcnt_hi; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u64 FUNC1(const struct qm_mcr_querycgr *q)
{
	return ((u64)q->a_bcnt_hi << 32) | FUNC0(q->a_bcnt_lo);
}