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
struct iscsi_transport {int dummy; } ;
struct iscsi_cls_session {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct iscsi_cls_session*,unsigned int) ; 
 struct iscsi_cls_session* FUNC1 (struct Scsi_Host*,struct iscsi_transport*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_cls_session*) ; 

struct iscsi_cls_session *
FUNC3(struct Scsi_Host *shost, struct iscsi_transport *transport,
		     int dd_size, unsigned int target_id)
{
	struct iscsi_cls_session *session;

	session = FUNC1(shost, transport, dd_size);
	if (!session)
		return NULL;

	if (FUNC0(session, target_id)) {
		FUNC2(session);
		return NULL;
	}
	return session;
}