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
typedef  int /*<<< orphan*/  ulong ;
struct scsi_qla_host {int dummy; } ;
struct qla27xx_fwdt_template {int /*<<< orphan*/  template_size; } ;

/* Variables and functions */
 struct qla27xx_fwdt_template* FUNC0 (void*,struct qla27xx_fwdt_template*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_qla_host*,struct qla27xx_fwdt_template*) ; 
 scalar_t__ FUNC2 (struct qla27xx_fwdt_template*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_qla_host*,struct qla27xx_fwdt_template*,void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ulong
FUNC4(struct scsi_qla_host *vha,
    struct qla27xx_fwdt_template *tmp, void *buf)
{
	ulong len = 0;

	if (FUNC2(tmp)) {
		len = tmp->template_size;
		tmp = FUNC0(buf, tmp, len);
		FUNC1(vha, tmp);
		FUNC3(vha, tmp, buf, &len);
	}

	return len;
}