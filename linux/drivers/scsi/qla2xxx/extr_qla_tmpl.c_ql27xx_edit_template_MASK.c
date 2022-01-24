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
struct scsi_qla_host {int dummy; } ;
struct qla27xx_fwdt_template {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qla27xx_fwdt_template*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_qla_host*,struct qla27xx_fwdt_template*) ; 
 int /*<<< orphan*/  FUNC2 (struct qla27xx_fwdt_template*) ; 

__attribute__((used)) static void
FUNC3(struct scsi_qla_host *vha,
	struct qla27xx_fwdt_template *tmp)
{
	FUNC2(tmp);
	FUNC0(tmp);
	FUNC1(vha, tmp);
}