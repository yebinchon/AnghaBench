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
struct tegra_bpmp {int dummy; } ;

/* Variables and functions */
 scalar_t__ PG_STATE_OFF ; 
 scalar_t__ FUNC0 (struct tegra_bpmp*,unsigned int) ; 

__attribute__((used)) static inline bool FUNC1(struct tegra_bpmp *bpmp,
						   unsigned int id)
{
	return FUNC0(bpmp, id) != PG_STATE_OFF;
}