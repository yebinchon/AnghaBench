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
struct bnx2fc_interface {int /*<<< orphan*/  fip_packet_type; int /*<<< orphan*/  fcoe_packet_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct bnx2fc_interface *interface)
{
	/* Dont listen for Ethernet packets anymore */
	FUNC0(&interface->fcoe_packet_type);
	FUNC0(&interface->fip_packet_type);
	FUNC1();
}