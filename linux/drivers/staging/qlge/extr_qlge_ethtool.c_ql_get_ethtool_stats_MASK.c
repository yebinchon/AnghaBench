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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ql_adapter {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_2__ {int stat_offset; int sizeof_stat; } ;

/* Variables and functions */
 int QLGE_STATS_LEN ; 
 struct ql_adapter* FUNC0 (struct net_device*) ; 
 TYPE_1__* ql_gstrings_stats ; 
 int /*<<< orphan*/  FUNC1 (struct ql_adapter*) ; 

__attribute__((used)) static void
FUNC2(struct net_device *ndev,
		     struct ethtool_stats *stats, u64 *data)
{
	struct ql_adapter *qdev = FUNC0(ndev);
	int index, length;

	length = QLGE_STATS_LEN;
	FUNC1(qdev);

	for (index = 0; index < length; index++) {
		char *p = (char *)qdev +
			ql_gstrings_stats[index].stat_offset;
		*data++ = (ql_gstrings_stats[index].sizeof_stat ==
			sizeof(u64)) ? *(u64 *)p : (*(u32 *)p);
	}
}