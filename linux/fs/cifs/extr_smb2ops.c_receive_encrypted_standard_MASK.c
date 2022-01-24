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
struct smb2_transform_hdr {int dummy; } ;
struct smb2_sync_hdr {scalar_t__ NextCommand; } ;
struct mid_q_entry {int decrypted; unsigned int resp_buf_size; int (* handle ) (struct TCP_Server_Info*,struct mid_q_entry*) ;} ;
struct TCP_Server_Info {char* smallbuf; unsigned int pdu_size; int large_buf; char* bigbuf; int total_read; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIFS_LARGE_BUFFER ; 
 int /*<<< orphan*/  CIFS_SMALL_BUFFER ; 
 int /*<<< orphan*/  FYI ; 
 unsigned int FUNC0 (struct TCP_Server_Info*) ; 
 unsigned int MAX_CIFS_SMALL_BUFFER_SIZE ; 
 int MAX_COMPOUND ; 
 int /*<<< orphan*/  VFS ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct TCP_Server_Info*,struct mid_q_entry*) ; 
 int FUNC4 (struct TCP_Server_Info*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 () ; 
 int FUNC7 (struct TCP_Server_Info*,char*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 struct mid_q_entry* FUNC11 (struct TCP_Server_Info*,char*) ; 
 int FUNC12 (struct TCP_Server_Info*,struct mid_q_entry*) ; 

__attribute__((used)) static int
FUNC13(struct TCP_Server_Info *server,
			   struct mid_q_entry **mids, char **bufs,
			   int *num_mids)
{
	int ret, length;
	char *buf = server->smallbuf;
	struct smb2_sync_hdr *shdr;
	unsigned int pdu_length = server->pdu_size;
	unsigned int buf_size;
	struct mid_q_entry *mid_entry;
	int next_is_large;
	char *next_buffer = NULL;

	*num_mids = 0;

	/* switch to large buffer if too big for a small one */
	if (pdu_length > MAX_CIFS_SMALL_BUFFER_SIZE) {
		server->large_buf = true;
		FUNC10(server->bigbuf, buf, server->total_read);
		buf = server->bigbuf;
	}

	/* now read the rest */
	length = FUNC4(server, buf + FUNC0(server) - 1,
				pdu_length - FUNC0(server) + 1);
	if (length < 0)
		return length;
	server->total_read += length;

	buf_size = pdu_length - sizeof(struct smb2_transform_hdr);
	length = FUNC7(server, buf, buf_size, NULL, 0, 0);
	if (length)
		return length;

	next_is_large = server->large_buf;
one_more:
	shdr = (struct smb2_sync_hdr *)buf;
	if (shdr->NextCommand) {
		if (next_is_large)
			next_buffer = (char *)FUNC1();
		else
			next_buffer = (char *)FUNC6();
		FUNC10(next_buffer,
		       buf + FUNC9(shdr->NextCommand),
		       pdu_length - FUNC9(shdr->NextCommand));
	}

	mid_entry = FUNC11(server, buf);
	if (mid_entry == NULL)
		FUNC2(FYI, "mid not found\n");
	else {
		FUNC2(FYI, "mid found\n");
		mid_entry->decrypted = true;
		mid_entry->resp_buf_size = server->pdu_size;
	}

	if (*num_mids >= MAX_COMPOUND) {
		FUNC5(VFS, "too many PDUs in compound\n");
		return -1;
	}
	bufs[*num_mids] = buf;
	mids[(*num_mids)++] = mid_entry;

	if (mid_entry && mid_entry->handle)
		ret = mid_entry->handle(server, mid_entry);
	else
		ret = FUNC3(server, mid_entry);

	if (ret == 0 && shdr->NextCommand) {
		pdu_length -= FUNC9(shdr->NextCommand);
		server->large_buf = next_is_large;
		if (next_is_large)
			server->bigbuf = buf = next_buffer;
		else
			server->smallbuf = buf = next_buffer;
		goto one_more;
	} else if (ret != 0) {
		/*
		 * ret != 0 here means that we didn't get to handle_mid() thus
		 * server->smallbuf and server->bigbuf are still valid. We need
		 * to free next_buffer because it is not going to be used
		 * anywhere.
		 */
		if (next_is_large)
			FUNC8(CIFS_LARGE_BUFFER, next_buffer);
		else
			FUNC8(CIFS_SMALL_BUFFER, next_buffer);
	}

	return ret;
}