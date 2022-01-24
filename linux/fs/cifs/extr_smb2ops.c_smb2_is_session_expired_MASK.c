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
struct smb2_sync_hdr {scalar_t__ Status; int /*<<< orphan*/  MessageId; int /*<<< orphan*/  Command; int /*<<< orphan*/  SessionId; int /*<<< orphan*/  TreeId; } ;

/* Variables and functions */
 int /*<<< orphan*/  FYI ; 
 scalar_t__ STATUS_NETWORK_SESSION_EXPIRED ; 
 scalar_t__ STATUS_USER_SESSION_DELETED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4(char *buf)
{
	struct smb2_sync_hdr *shdr = (struct smb2_sync_hdr *)buf;

	if (shdr->Status != STATUS_NETWORK_SESSION_EXPIRED &&
	    shdr->Status != STATUS_USER_SESSION_DELETED)
		return false;

	FUNC3(shdr->TreeId, shdr->SessionId,
			       FUNC1(shdr->Command),
			       FUNC2(shdr->MessageId));
	FUNC0(FYI, "Session expired or deleted\n");

	return true;
}