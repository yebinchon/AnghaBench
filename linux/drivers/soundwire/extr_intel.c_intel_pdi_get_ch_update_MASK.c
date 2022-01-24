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
struct sdw_intel {int dummy; } ;
struct sdw_cdns_pdi {scalar_t__ ch_count; int /*<<< orphan*/  num; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sdw_intel*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct sdw_intel *sdw,
				   struct sdw_cdns_pdi *pdi,
				   unsigned int num_pdi,
				   unsigned int *num_ch, bool pcm)
{
	int i, ch_count = 0;

	for (i = 0; i < num_pdi; i++) {
		pdi->ch_count = FUNC0(sdw, pdi->num, pcm);
		ch_count += pdi->ch_count;
		pdi++;
	}

	*num_ch = ch_count;
	return 0;
}