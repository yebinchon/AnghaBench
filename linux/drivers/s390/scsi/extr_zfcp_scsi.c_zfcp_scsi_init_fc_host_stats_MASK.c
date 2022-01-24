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
struct zfcp_adapter {struct fc_host_statistics* fc_stats; } ;
struct fc_host_statistics {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct fc_host_statistics* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_host_statistics*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct fc_host_statistics*
FUNC2(struct zfcp_adapter *adapter)
{
	struct fc_host_statistics *fc_stats;

	if (!adapter->fc_stats) {
		fc_stats = FUNC0(sizeof(*fc_stats), GFP_KERNEL);
		if (!fc_stats)
			return NULL;
		adapter->fc_stats = fc_stats; /* freed in adapter_release */
	}
	FUNC1(adapter->fc_stats, 0, sizeof(*adapter->fc_stats));
	return adapter->fc_stats;
}