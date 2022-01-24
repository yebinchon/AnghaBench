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
struct fwtty_peer {int generation; int /*<<< orphan*/  node_id; } ;
struct fw_unit {int /*<<< orphan*/  device; } ;
struct fw_device {int generation; int /*<<< orphan*/  node_id; } ;

/* Variables and functions */
 struct fwtty_peer* FUNC0 (int /*<<< orphan*/ *) ; 
 struct fw_device* FUNC1 (struct fw_unit*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct fw_unit *unit)
{
	struct fw_device *parent = FUNC1(unit);
	struct fwtty_peer *peer = FUNC0(&unit->device);
	int generation;

	generation = parent->generation;
	FUNC2();
	peer->node_id = parent->node_id;
	FUNC3();
	peer->generation = generation;
}