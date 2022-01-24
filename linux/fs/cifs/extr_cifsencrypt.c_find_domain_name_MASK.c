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
struct ntlmssp2_name {int /*<<< orphan*/  length; int /*<<< orphan*/  type; } ;
struct nls_table {int dummy; } ;
struct TYPE_2__ {int len; unsigned char* response; } ;
struct cifs_ses {scalar_t__ domainName; TYPE_1__ auth_key; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 unsigned int CIFS_MAX_DOMAINNAME_LEN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NO_MAP_UNI_RSVD ; 
 unsigned int NTLMSSP_AV_EOL ; 
 unsigned int NTLMSSP_AV_NB_DOMAIN_NAME ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *,unsigned int,unsigned int,struct nls_table const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct cifs_ses *ses, const struct nls_table *nls_cp)
{
	unsigned int attrsize;
	unsigned int type;
	unsigned int onesize = sizeof(struct ntlmssp2_name);
	unsigned char *blobptr;
	unsigned char *blobend;
	struct ntlmssp2_name *attrptr;

	if (!ses->auth_key.len || !ses->auth_key.response)
		return 0;

	blobptr = ses->auth_key.response;
	blobend = blobptr + ses->auth_key.len;

	while (blobptr + onesize < blobend) {
		attrptr = (struct ntlmssp2_name *) blobptr;
		type = FUNC2(attrptr->type);
		if (type == NTLMSSP_AV_EOL)
			break;
		blobptr += 2; /* advance attr type */
		attrsize = FUNC2(attrptr->length);
		blobptr += 2; /* advance attr size */
		if (blobptr + attrsize > blobend)
			break;
		if (type == NTLMSSP_AV_NB_DOMAIN_NAME) {
			if (!attrsize || attrsize >= CIFS_MAX_DOMAINNAME_LEN)
				break;
			if (!ses->domainName) {
				ses->domainName =
					FUNC1(attrsize + 1, GFP_KERNEL);
				if (!ses->domainName)
						return -ENOMEM;
				FUNC0(ses->domainName,
					(__le16 *)blobptr, attrsize, attrsize,
					nls_cp, NO_MAP_UNI_RSVD);
				break;
			}
		}
		blobptr += attrsize; /* advance attr  value */
	}

	return 0;
}