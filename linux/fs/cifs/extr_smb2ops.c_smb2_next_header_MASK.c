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
struct smb2_transform_hdr {int /*<<< orphan*/  OriginalMessageSize; } ;
struct smb2_sync_hdr {scalar_t__ ProtocolId; int /*<<< orphan*/  NextCommand; } ;

/* Variables and functions */
 scalar_t__ SMB2_TRANSFORM_PROTO_NUM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(char *buf)
{
	struct smb2_sync_hdr *hdr = (struct smb2_sync_hdr *)buf;
	struct smb2_transform_hdr *t_hdr = (struct smb2_transform_hdr *)buf;

	if (hdr->ProtocolId == SMB2_TRANSFORM_PROTO_NUM)
		return sizeof(struct smb2_transform_hdr) +
		  FUNC0(t_hdr->OriginalMessageSize);

	return FUNC0(hdr->NextCommand);
}