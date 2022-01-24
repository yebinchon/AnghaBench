#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct smb2_sync_hdr {scalar_t__ CreditRequest; } ;
struct TCP_Server_Info {int /*<<< orphan*/  request_q; int /*<<< orphan*/  req_lock; int /*<<< orphan*/  credits; TYPE_1__* vals; } ;
struct TYPE_2__ {scalar_t__ header_preamble_size; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(char *buffer, struct TCP_Server_Info *server)
{
	struct smb2_sync_hdr *shdr = (struct smb2_sync_hdr *)buffer;

	/*
	 * SMB1 does not use credits.
	 */
	if (server->vals->header_preamble_size)
		return;

	if (shdr->CreditRequest) {
		FUNC1(&server->req_lock);
		server->credits += FUNC0(shdr->CreditRequest);
		FUNC2(&server->req_lock);
		FUNC3(&server->request_q);
	}
}