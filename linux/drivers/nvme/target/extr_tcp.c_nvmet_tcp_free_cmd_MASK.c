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
struct nvmet_tcp_cmd {int /*<<< orphan*/  cmd_pdu; int /*<<< orphan*/  rsp_pdu; int /*<<< orphan*/  data_pdu; int /*<<< orphan*/  r2t_pdu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct nvmet_tcp_cmd *c)
{
	FUNC0(c->r2t_pdu);
	FUNC0(c->data_pdu);
	FUNC0(c->rsp_pdu);
	FUNC0(c->cmd_pdu);
}