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
struct nls_table {int dummy; } ;
struct cifs_ses {scalar_t__* serverNOS; scalar_t__* serverOS; } ;
typedef  int __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,char*,int) ; 
 scalar_t__ FUNC4 (scalar_t__*,char*,int) ; 
 int FUNC5 (char*,int) ; 

__attribute__((used)) static void FUNC6(char **pbcc_area, __u16 bleft,
				struct cifs_ses *ses,
				const struct nls_table *nls_cp)
{
	int len;
	char *bcc_ptr = *pbcc_area;

	FUNC0(FYI, "decode sessetup ascii. bleft %d\n", bleft);

	len = FUNC5(bcc_ptr, bleft);
	if (len >= bleft)
		return;

	FUNC1(ses->serverOS);

	ses->serverOS = FUNC2(len + 1, GFP_KERNEL);
	if (ses->serverOS) {
		FUNC3(ses->serverOS, bcc_ptr, len);
		ses->serverOS[len] = 0;
		if (FUNC4(ses->serverOS, "OS/2", 4) == 0)
			FUNC0(FYI, "OS/2 server\n");
	}

	bcc_ptr += len + 1;
	bleft -= len + 1;

	len = FUNC5(bcc_ptr, bleft);
	if (len >= bleft)
		return;

	FUNC1(ses->serverNOS);

	ses->serverNOS = FUNC2(len + 1, GFP_KERNEL);
	if (ses->serverNOS) {
		FUNC3(ses->serverNOS, bcc_ptr, len);
		ses->serverNOS[len] = 0;
	}

	bcc_ptr += len + 1;
	bleft -= len + 1;

	len = FUNC5(bcc_ptr, bleft);
	if (len > bleft)
		return;

	/* No domain field in LANMAN case. Domain is
	   returned by old servers in the SMB negprot response */
	/* BB For newer servers which do not support Unicode,
	   but thus do return domain here we could add parsing
	   for it later, but it is not very important */
	FUNC0(FYI, "ascii: bytes left %d\n", bleft);
}