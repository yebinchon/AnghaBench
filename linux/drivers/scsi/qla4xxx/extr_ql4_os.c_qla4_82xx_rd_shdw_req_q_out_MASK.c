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
typedef  int /*<<< orphan*/  uint16_t ;
struct scsi_qla_host {TYPE_1__* qla4_82xx_reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  req_q_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

uint16_t FUNC2(struct scsi_qla_host *ha)
{
	return (uint16_t)FUNC0(FUNC1(&ha->qla4_82xx_reg->req_q_out));
}