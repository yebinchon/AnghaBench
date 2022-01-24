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
struct mid_q_entry {int multiRsp; char* resp_buf; int multiEnd; int large_buf; } ;
struct TCP_Server_Info {int /*<<< orphan*/ * bigbuf; int /*<<< orphan*/  large_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  VFS ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mid_q_entry*,int) ; 

__attribute__((used)) static bool
FUNC4(struct mid_q_entry *mid, struct TCP_Server_Info *server,
		  char *buf, int malformed)
{
	if (malformed)
		return false;
	if (FUNC0(buf) <= 0)
		return false;
	mid->multiRsp = true;
	if (mid->resp_buf) {
		/* merge response - fix up 1st*/
		malformed = FUNC2(buf, mid->resp_buf);
		if (malformed > 0)
			return true;
		/* All parts received or packet is malformed. */
		mid->multiEnd = true;
		FUNC3(mid, malformed);
		return true;
	}
	if (!server->large_buf) {
		/*FIXME: switch to already allocated largebuf?*/
		FUNC1(VFS, "1st trans2 resp needs bigbuf\n");
	} else {
		/* Have first buffer */
		mid->resp_buf = buf;
		mid->large_buf = true;
		server->bigbuf = NULL;
	}
	return true;
}