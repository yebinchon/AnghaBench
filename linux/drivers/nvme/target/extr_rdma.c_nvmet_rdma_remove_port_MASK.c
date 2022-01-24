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
struct rdma_cm_id {int dummy; } ;
struct nvmet_port {int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rdma_cm_id*) ; 
 struct rdma_cm_id* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct nvmet_port *port)
{
	struct rdma_cm_id *cm_id = FUNC1(&port->priv, NULL);

	if (cm_id)
		FUNC0(cm_id);
}