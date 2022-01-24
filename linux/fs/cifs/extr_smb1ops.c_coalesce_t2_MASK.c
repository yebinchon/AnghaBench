#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  DataCount; int /*<<< orphan*/  DataOffset; int /*<<< orphan*/  TotalDataCount; } ;
struct TYPE_3__ {int /*<<< orphan*/  Protocol; } ;
struct smb_t2_rsp {TYPE_2__ t2_rsp; TYPE_1__ hdr; } ;
struct smb_hdr {int /*<<< orphan*/  smb_buf_length; } ;
typedef  unsigned int __u16 ;

/* Variables and functions */
 int CIFSMaxBufSize ; 
 int ENOBUFS ; 
 int EPROTO ; 
 int /*<<< orphan*/  FYI ; 
 int MAX_CIFS_HDR_SIZE ; 
 unsigned int USHRT_MAX ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (struct smb_hdr*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,struct smb_hdr*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(char *second_buf, struct smb_hdr *target_hdr)
{
	struct smb_t2_rsp *pSMBs = (struct smb_t2_rsp *)second_buf;
	struct smb_t2_rsp *pSMBt  = (struct smb_t2_rsp *)target_hdr;
	char *data_area_of_tgt;
	char *data_area_of_src;
	int remaining;
	unsigned int byte_count, total_in_tgt;
	__u16 tgt_total_cnt, src_total_cnt, total_in_src;

	src_total_cnt = FUNC4(&pSMBs->t2_rsp.TotalDataCount);
	tgt_total_cnt = FUNC4(&pSMBt->t2_rsp.TotalDataCount);

	if (tgt_total_cnt != src_total_cnt)
		FUNC1(FYI, "total data count of primary and secondary t2 differ source=%hu target=%hu\n",
			 src_total_cnt, tgt_total_cnt);

	total_in_tgt = FUNC4(&pSMBt->t2_rsp.DataCount);

	remaining = tgt_total_cnt - total_in_tgt;

	if (remaining < 0) {
		FUNC1(FYI, "Server sent too much data. tgt_total_cnt=%hu total_in_tgt=%u\n",
			 tgt_total_cnt, total_in_tgt);
		return -EPROTO;
	}

	if (remaining == 0) {
		/* nothing to do, ignore */
		FUNC1(FYI, "no more data remains\n");
		return 0;
	}

	total_in_src = FUNC4(&pSMBs->t2_rsp.DataCount);
	if (remaining < total_in_src)
		FUNC1(FYI, "transact2 2nd response contains too much data\n");

	/* find end of first SMB data area */
	data_area_of_tgt = (char *)&pSMBt->hdr.Protocol +
				FUNC4(&pSMBt->t2_rsp.DataOffset);

	/* validate target area */
	data_area_of_src = (char *)&pSMBs->hdr.Protocol +
				FUNC4(&pSMBs->t2_rsp.DataOffset);

	data_area_of_tgt += total_in_tgt;

	total_in_tgt += total_in_src;
	/* is the result too big for the field? */
	if (total_in_tgt > USHRT_MAX) {
		FUNC1(FYI, "coalesced DataCount too large (%u)\n",
			 total_in_tgt);
		return -EPROTO;
	}
	FUNC7(total_in_tgt, &pSMBt->t2_rsp.DataCount);

	/* fix up the BCC */
	byte_count = FUNC3(target_hdr);
	byte_count += total_in_src;
	/* is the result too big for the field? */
	if (byte_count > USHRT_MAX) {
		FUNC1(FYI, "coalesced BCC too large (%u)\n", byte_count);
		return -EPROTO;
	}
	FUNC6(byte_count, target_hdr);

	byte_count = FUNC0(target_hdr->smb_buf_length);
	byte_count += total_in_src;
	/* don't allow buffer to overflow */
	if (byte_count > CIFSMaxBufSize + MAX_CIFS_HDR_SIZE - 4) {
		FUNC1(FYI, "coalesced BCC exceeds buffer size (%u)\n",
			 byte_count);
		return -ENOBUFS;
	}
	target_hdr->smb_buf_length = FUNC2(byte_count);

	/* copy second buffer into end of first buffer */
	FUNC5(data_area_of_tgt, data_area_of_src, total_in_src);

	if (remaining != total_in_src) {
		/* more responses to go */
		FUNC1(FYI, "waiting for more secondary responses\n");
		return 1;
	}

	/* we are done */
	FUNC1(FYI, "found the last secondary response\n");
	return 0;
}