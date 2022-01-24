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
struct seq_file {int dummy; } ;
struct fwtty_peer {int generation; scalar_t__ status_addr; scalar_t__ mgmt_addr; scalar_t__ guid; int /*<<< orphan*/  max_payload; int /*<<< orphan*/  speed; int /*<<< orphan*/  node_id; TYPE_1__* unit; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 unsigned long long FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct seq_file *m, struct fwtty_peer *peer)
{
	int generation = peer->generation;

	FUNC3();
	FUNC1(m, " %s:", FUNC0(&peer->unit->device));
	FUNC1(m, " node:%04x gen:%d", peer->node_id, generation);
	FUNC1(m, " sp:%d max:%d guid:%016llx", peer->speed,
		   peer->max_payload, (unsigned long long)peer->guid);
	FUNC1(m, " mgmt:%012llx", (unsigned long long)peer->mgmt_addr);
	FUNC1(m, " addr:%012llx", (unsigned long long)peer->status_addr);
	FUNC2(m, '\n');
}