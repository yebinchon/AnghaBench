#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__* cdb; } ;
typedef  TYPE_1__ ips_scb_t ;
struct TYPE_8__ {scalar_t__ waitflag; scalar_t__ cmd_in_progress; } ;
typedef  TYPE_2__ ips_ha_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2(ips_ha_t * ha, ips_scb_t * scb)
{
	FUNC0("ipsintr_blocking", 2);

	FUNC1(ha, scb);
	if ((ha->waitflag == TRUE) && (ha->cmd_in_progress == scb->cdb[0])) {
		ha->waitflag = FALSE;

		return;
	}
}