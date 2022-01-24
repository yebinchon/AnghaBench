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
struct tb_regs_port_header {int /*<<< orphan*/  nfc_credits; int /*<<< orphan*/  max_counters; int /*<<< orphan*/  max_out_hop_id; int /*<<< orphan*/  max_in_hop_id; int /*<<< orphan*/  type; int /*<<< orphan*/  thunderbolt_version; int /*<<< orphan*/  revision; int /*<<< orphan*/  device_id; int /*<<< orphan*/  vendor_id; int /*<<< orphan*/  port_number; } ;
struct tb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tb*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct tb_regs_port_header*) ; 

__attribute__((used)) static void FUNC2(struct tb *tb, struct tb_regs_port_header *port)
{
	FUNC0(tb,
	       " Port %d: %x:%x (Revision: %d, TB Version: %d, Type: %s (%#x))\n",
	       port->port_number, port->vendor_id, port->device_id,
	       port->revision, port->thunderbolt_version, FUNC1(port),
	       port->type);
	FUNC0(tb, "  Max hop id (in/out): %d/%d\n",
	       port->max_in_hop_id, port->max_out_hop_id);
	FUNC0(tb, "  Max counters: %d\n", port->max_counters);
	FUNC0(tb, "  NFC Credits: %#x\n", port->nfc_credits);
}