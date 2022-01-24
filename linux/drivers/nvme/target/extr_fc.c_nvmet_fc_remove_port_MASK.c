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
struct nvmet_port {struct nvmet_fc_port_entry* priv; } ;
struct nvmet_fc_port_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvmet_fc_port_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvmet_fc_port_entry*) ; 

__attribute__((used)) static void
FUNC2(struct nvmet_port *port)
{
	struct nvmet_fc_port_entry *pe = port->priv;

	FUNC1(pe);

	FUNC0(pe);
}