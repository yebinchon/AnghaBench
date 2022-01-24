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
struct iscsi_sess_ops {char* InitiatorName; char* InitiatorAlias; char* TargetName; char* TargetAlias; char* TargetPortalGroupTag; char* MaxConnections; char* MaxBurstLength; char* FirstBurstLength; char* DefaultTime2Wait; char* DefaultTime2Retain; char* MaxOutstandingR2T; char* ErrorRecoveryLevel; scalar_t__ SessionType; scalar_t__ DataSequenceInOrder; scalar_t__ DataPDUInOrder; scalar_t__ ImmediateData; scalar_t__ InitialR2T; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

void FUNC1(struct iscsi_sess_ops *sess_ops)
{
	FUNC0("InitiatorName: %s\n", sess_ops->InitiatorName);
	FUNC0("InitiatorAlias: %s\n", sess_ops->InitiatorAlias);
	FUNC0("TargetName: %s\n", sess_ops->TargetName);
	FUNC0("TargetAlias: %s\n", sess_ops->TargetAlias);
	FUNC0("TargetPortalGroupTag: %hu\n",
			sess_ops->TargetPortalGroupTag);
	FUNC0("MaxConnections: %hu\n", sess_ops->MaxConnections);
	FUNC0("InitialR2T: %s\n",
			(sess_ops->InitialR2T) ? "Yes" : "No");
	FUNC0("ImmediateData: %s\n", (sess_ops->ImmediateData) ?
			"Yes" : "No");
	FUNC0("MaxBurstLength: %u\n", sess_ops->MaxBurstLength);
	FUNC0("FirstBurstLength: %u\n", sess_ops->FirstBurstLength);
	FUNC0("DefaultTime2Wait: %hu\n", sess_ops->DefaultTime2Wait);
	FUNC0("DefaultTime2Retain: %hu\n",
			sess_ops->DefaultTime2Retain);
	FUNC0("MaxOutstandingR2T: %hu\n",
			sess_ops->MaxOutstandingR2T);
	FUNC0("DataPDUInOrder: %s\n",
			(sess_ops->DataPDUInOrder) ? "Yes" : "No");
	FUNC0("DataSequenceInOrder: %s\n",
			(sess_ops->DataSequenceInOrder) ? "Yes" : "No");
	FUNC0("ErrorRecoveryLevel: %hu\n",
			sess_ops->ErrorRecoveryLevel);
	FUNC0("SessionType: %s\n", (sess_ops->SessionType) ?
			"Discovery" : "Normal");
}