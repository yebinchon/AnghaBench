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
struct nls_table {int dummy; } ;
struct cifs_ses {int /*<<< orphan*/ * domainName; int /*<<< orphan*/ * user_name; } ;
struct TYPE_2__ {char* release; } ;

/* Variables and functions */
 int CIFS_MAX_DOMAINNAME_LEN ; 
 int CIFS_MAX_USERNAME_LEN ; 
 char* CIFS_NETWORK_OPSYS ; 
 scalar_t__ FUNC0 (int) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(char **pbcc_area, struct cifs_ses *ses,
				 const struct nls_table *nls_cp)
{
	char *bcc_ptr = *pbcc_area;
	int len;

	/* copy user */
	/* BB what about null user mounts - check that we do this BB */
	/* copy user */
	if (ses->user_name != NULL) {
		len = FUNC4(bcc_ptr, ses->user_name, CIFS_MAX_USERNAME_LEN);
		if (FUNC0(len < 0))
			len = CIFS_MAX_USERNAME_LEN - 1;
		bcc_ptr += len;
	}
	/* else null user mount */
	*bcc_ptr = 0;
	bcc_ptr++; /* account for null termination */

	/* copy domain */
	if (ses->domainName != NULL) {
		len = FUNC4(bcc_ptr, ses->domainName, CIFS_MAX_DOMAINNAME_LEN);
		if (FUNC0(len < 0))
			len = CIFS_MAX_DOMAINNAME_LEN - 1;
		bcc_ptr += len;
	} /* else we will send a null domain name
	     so the server will default to its own domain */
	*bcc_ptr = 0;
	bcc_ptr++;

	/* BB check for overflow here */

	FUNC2(bcc_ptr, "Linux version ");
	bcc_ptr += FUNC3("Linux version ");
	FUNC2(bcc_ptr, FUNC1()->release);
	bcc_ptr += FUNC3(FUNC1()->release) + 1;

	FUNC2(bcc_ptr, CIFS_NETWORK_OPSYS);
	bcc_ptr += FUNC3(CIFS_NETWORK_OPSYS) + 1;

	*pbcc_area = bcc_ptr;
}