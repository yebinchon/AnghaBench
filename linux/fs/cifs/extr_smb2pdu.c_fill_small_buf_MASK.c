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
struct smb2_sync_pdu {int /*<<< orphan*/  StructureSize2; int /*<<< orphan*/  sync_hdr; } ;
struct smb2_sync_hdr {int dummy; } ;
struct cifs_tcon {int dummy; } ;
typedef  int __u16 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct cifs_tcon*) ; 
 int* smb2_req_struct_sizes ; 

__attribute__((used)) static void
FUNC4(__le16 smb2_command, struct cifs_tcon *tcon, void *buf,
	       unsigned int *total_len)
{
	struct smb2_sync_pdu *spdu = (struct smb2_sync_pdu *)buf;
	/* lookup word count ie StructureSize from table */
	__u16 parmsize = smb2_req_struct_sizes[FUNC1(smb2_command)];

	/*
	 * smaller than SMALL_BUFFER_SIZE but bigger than fixed area of
	 * largest operations (Create)
	 */
	FUNC2(buf, 0, 256);

	FUNC3(&spdu->sync_hdr, smb2_command, tcon);
	spdu->StructureSize2 = FUNC0(parmsize);

	*total_len = parmsize + sizeof(struct smb2_sync_hdr);
}