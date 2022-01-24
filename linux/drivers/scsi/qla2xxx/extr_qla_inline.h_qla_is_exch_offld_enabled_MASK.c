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
struct scsi_qla_host {scalar_t__ ql2xiniexchg; scalar_t__ ql2xexchoffld; } ;

/* Variables and functions */
 scalar_t__ FW_DEF_EXCHANGES_CNT ; 
 scalar_t__ FUNC0 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC1 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC2 (struct scsi_qla_host*) ; 

__attribute__((used)) static inline bool
FUNC3(struct scsi_qla_host *vha)
{
	if (FUNC1(vha) &&
	    (vha->ql2xiniexchg > FW_DEF_EXCHANGES_CNT))
		return true;
	else if (FUNC2(vha) &&
	    (vha->ql2xexchoffld > FW_DEF_EXCHANGES_CNT))
		return true;
	else if (FUNC0(vha) &&
	    ((vha->ql2xiniexchg + vha->ql2xexchoffld) > FW_DEF_EXCHANGES_CNT))
		return true;
	else
		return false;
}