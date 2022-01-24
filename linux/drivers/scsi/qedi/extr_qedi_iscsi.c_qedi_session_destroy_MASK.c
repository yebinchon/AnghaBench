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
struct qedi_ctx {int dummy; } ;
struct iscsi_session {int dummy; } ;
struct iscsi_cls_session {struct iscsi_session* dd_data; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 struct qedi_ctx* FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_cls_session*) ; 
 struct Scsi_Host* FUNC2 (struct iscsi_cls_session*) ; 
 int /*<<< orphan*/  FUNC3 (struct qedi_ctx*,struct iscsi_session*) ; 

__attribute__((used)) static void FUNC4(struct iscsi_cls_session *cls_session)
{
	struct iscsi_session *session = cls_session->dd_data;
	struct Scsi_Host *shost = FUNC2(cls_session);
	struct qedi_ctx *qedi = FUNC0(shost);

	FUNC3(qedi, session);
	FUNC1(cls_session);
}