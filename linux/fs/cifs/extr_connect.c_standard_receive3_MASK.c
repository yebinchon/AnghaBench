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
struct mid_q_entry {int dummy; } ;
struct TCP_Server_Info {char* smallbuf; unsigned int pdu_size; int large_buf; char* bigbuf; int total_read; TYPE_1__* vals; int /*<<< orphan*/  response_q; } ;
struct TYPE_2__ {unsigned int header_preamble_size; } ;

/* Variables and functions */
 unsigned int CIFSMaxBufSize ; 
 int ECONNABORTED ; 
 unsigned int FUNC0 (struct TCP_Server_Info*) ; 
 int MAX_CIFS_SMALL_BUFFER_SIZE ; 
 unsigned int FUNC1 (struct TCP_Server_Info*) ; 
 int /*<<< orphan*/  VFS ; 
 int FUNC2 (struct TCP_Server_Info*,struct mid_q_entry*) ; 
 int FUNC3 (struct TCP_Server_Info*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct TCP_Server_Info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct TCP_Server_Info *server, struct mid_q_entry *mid)
{
	int length;
	char *buf = server->smallbuf;
	unsigned int pdu_length = server->pdu_size;

	/* make sure this will fit in a large buffer */
	if (pdu_length > CIFSMaxBufSize + FUNC1(server) -
		server->vals->header_preamble_size) {
		FUNC5(VFS, "SMB response too long (%u bytes)\n", pdu_length);
		FUNC4(server);
		FUNC8(&server->response_q);
		return -ECONNABORTED;
	}

	/* switch to large buffer if too big for a small one */
	if (pdu_length > MAX_CIFS_SMALL_BUFFER_SIZE - 4) {
		server->large_buf = true;
		FUNC7(server->bigbuf, buf, server->total_read);
		buf = server->bigbuf;
	}

	/* now read the rest */
	length = FUNC3(server, buf + FUNC0(server) - 1,
				       pdu_length - FUNC0(server) + 1
				       + server->vals->header_preamble_size);

	if (length < 0)
		return length;
	server->total_read += length;

	FUNC6(buf, server->total_read);

	return FUNC2(server, mid);
}