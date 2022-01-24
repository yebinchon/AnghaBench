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
struct smb2_sync_hdr {int /*<<< orphan*/  MessageId; int /*<<< orphan*/  CreditCharge; } ;
struct TCP_Server_Info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct TCP_Server_Info*) ; 
 int /*<<< orphan*/  FUNC1 (struct TCP_Server_Info*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC3(struct TCP_Server_Info *server,
		      struct smb2_sync_hdr *shdr)
{
	unsigned int i, num = FUNC2(shdr->CreditCharge);

	shdr->MessageId = FUNC1(server);
	/* skip message numbers according to CreditCharge field */
	for (i = 1; i < num; i++)
		FUNC0(server);
}