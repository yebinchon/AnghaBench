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
struct smb2_sync_hdr {scalar_t__ ProtocolId; int Flags; scalar_t__ Command; int /*<<< orphan*/  MessageId; } ;
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 int SMB2_FLAGS_SERVER_TO_REDIR ; 
 scalar_t__ SMB2_OPLOCK_BREAK ; 
 scalar_t__ SMB2_PROTO_NUMBER ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct smb2_sync_hdr *shdr, __u64 mid)
{
	__u64 wire_mid = FUNC2(shdr->MessageId);

	/*
	 * Make sure that this really is an SMB, that it is a response,
	 * and that the message ids match.
	 */
	if ((shdr->ProtocolId == SMB2_PROTO_NUMBER) &&
	    (mid == wire_mid)) {
		if (shdr->Flags & SMB2_FLAGS_SERVER_TO_REDIR)
			return 0;
		else {
			/* only one valid case where server sends us request */
			if (shdr->Command == SMB2_OPLOCK_BREAK)
				return 0;
			else
				FUNC0(VFS, "Received Request not response\n");
		}
	} else { /* bad signature or mid */
		if (shdr->ProtocolId != SMB2_PROTO_NUMBER)
			FUNC0(VFS, "Bad protocol string signature header %x\n",
				 FUNC1(shdr->ProtocolId));
		if (mid != wire_mid)
			FUNC0(VFS, "Mids do not match: %llu and %llu\n",
				 mid, wire_mid);
	}
	FUNC0(VFS, "Bad SMB detected. The Mid=%llu\n", wire_mid);
	return 1;
}