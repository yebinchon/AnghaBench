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
struct asn1_ctx {int dummy; } ;
struct TCP_Server_Info {int sec_mskerberos; int sec_kerberosu2u; int sec_kerberos; int sec_ntlmssp; } ;

/* Variables and functions */
 unsigned int ASN1_APL ; 
 unsigned int ASN1_CON ; 
 unsigned int ASN1_CTX ; 
 unsigned int ASN1_EOC ; 
 unsigned int ASN1_OJI ; 
 unsigned int ASN1_PRI ; 
 unsigned int ASN1_SEQ ; 
 unsigned int ASN1_UNI ; 
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  KRB5U2U_OID ; 
 int /*<<< orphan*/  KRB5U2U_OID_LEN ; 
 int /*<<< orphan*/  KRB5_OID ; 
 int /*<<< orphan*/  KRB5_OID_LEN ; 
 int /*<<< orphan*/  MSKRB5_OID ; 
 int /*<<< orphan*/  MSKRB5_OID_LEN ; 
 int /*<<< orphan*/  NTLMSSP_OID ; 
 int /*<<< orphan*/  NTLMSSP_OID_LEN ; 
 int /*<<< orphan*/  SPNEGO_OID ; 
 int /*<<< orphan*/  SPNEGO_OID_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct asn1_ctx*,unsigned char*) ; 
 unsigned int FUNC1 (struct asn1_ctx*,unsigned char**,unsigned int*,unsigned int*,unsigned int*) ; 
 int FUNC2 (struct asn1_ctx*,unsigned char*,unsigned long**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct asn1_ctx*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (unsigned long*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long*) ; 

int
FUNC7(unsigned char *security_blob, int length,
		    struct TCP_Server_Info *server)
{
	struct asn1_ctx ctx;
	unsigned char *end;
	unsigned char *sequence_end;
	unsigned long *oid = NULL;
	unsigned int cls, con, tag, oidlen, rc;

	/* cifs_dump_mem(" Received SecBlob ", security_blob, length); */

	FUNC3(&ctx, security_blob, length);

	/* GSSAPI header */
	if (FUNC1(&ctx, &end, &cls, &con, &tag) == 0) {
		FUNC4(FYI, "Error decoding negTokenInit header\n");
		return 0;
	} else if ((cls != ASN1_APL) || (con != ASN1_CON)
		   || (tag != ASN1_EOC)) {
		FUNC4(FYI, "cls = %d con = %d tag = %d\n", cls, con, tag);
		return 0;
	}

	/* Check for SPNEGO OID -- remember to free obj->oid */
	rc = FUNC1(&ctx, &end, &cls, &con, &tag);
	if (rc) {
		if ((tag == ASN1_OJI) && (con == ASN1_PRI) &&
		    (cls == ASN1_UNI)) {
			rc = FUNC2(&ctx, end, &oid, &oidlen);
			if (rc) {
				rc = FUNC5(oid, oidlen, SPNEGO_OID,
						 SPNEGO_OID_LEN);
				FUNC6(oid);
			}
		} else
			rc = 0;
	}

	/* SPNEGO OID not present or garbled -- bail out */
	if (!rc) {
		FUNC4(FYI, "Error decoding negTokenInit header\n");
		return 0;
	}

	/* SPNEGO */
	if (FUNC1(&ctx, &end, &cls, &con, &tag) == 0) {
		FUNC4(FYI, "Error decoding negTokenInit\n");
		return 0;
	} else if ((cls != ASN1_CTX) || (con != ASN1_CON)
		   || (tag != ASN1_EOC)) {
		FUNC4(FYI, "cls = %d con = %d tag = %d end = %p (%d) exit 0\n",
			 cls, con, tag, end, *end);
		return 0;
	}

	/* negTokenInit */
	if (FUNC1(&ctx, &end, &cls, &con, &tag) == 0) {
		FUNC4(FYI, "Error decoding negTokenInit\n");
		return 0;
	} else if ((cls != ASN1_UNI) || (con != ASN1_CON)
		   || (tag != ASN1_SEQ)) {
		FUNC4(FYI, "cls = %d con = %d tag = %d end = %p (%d) exit 1\n",
			 cls, con, tag, end, *end);
		return 0;
	}

	/* sequence */
	if (FUNC1(&ctx, &end, &cls, &con, &tag) == 0) {
		FUNC4(FYI, "Error decoding 2nd part of negTokenInit\n");
		return 0;
	} else if ((cls != ASN1_CTX) || (con != ASN1_CON)
		   || (tag != ASN1_EOC)) {
		FUNC4(FYI, "cls = %d con = %d tag = %d end = %p (%d) exit 0\n",
			 cls, con, tag, end, *end);
		return 0;
	}

	/* sequence of */
	if (FUNC1
	    (&ctx, &sequence_end, &cls, &con, &tag) == 0) {
		FUNC4(FYI, "Error decoding 2nd part of negTokenInit\n");
		return 0;
	} else if ((cls != ASN1_UNI) || (con != ASN1_CON)
		   || (tag != ASN1_SEQ)) {
		FUNC4(FYI, "cls = %d con = %d tag = %d end = %p (%d) exit 1\n",
			 cls, con, tag, end, *end);
		return 0;
	}

	/* list of security mechanisms */
	while (!FUNC0(&ctx, sequence_end)) {
		rc = FUNC1(&ctx, &end, &cls, &con, &tag);
		if (!rc) {
			FUNC4(FYI, "Error decoding negTokenInit hdr exit2\n");
			return 0;
		}
		if ((tag == ASN1_OJI) && (con == ASN1_PRI)) {
			if (FUNC2(&ctx, end, &oid, &oidlen)) {

				FUNC4(FYI, "OID len = %d oid = 0x%lx 0x%lx 0x%lx 0x%lx\n",
					 oidlen, *oid, *(oid + 1), *(oid + 2),
					 *(oid + 3));

				if (FUNC5(oid, oidlen, MSKRB5_OID,
						MSKRB5_OID_LEN))
					server->sec_mskerberos = true;
				else if (FUNC5(oid, oidlen, KRB5U2U_OID,
						     KRB5U2U_OID_LEN))
					server->sec_kerberosu2u = true;
				else if (FUNC5(oid, oidlen, KRB5_OID,
						     KRB5_OID_LEN))
					server->sec_kerberos = true;
				else if (FUNC5(oid, oidlen, NTLMSSP_OID,
						     NTLMSSP_OID_LEN))
					server->sec_ntlmssp = true;

				FUNC6(oid);
			}
		} else {
			FUNC4(FYI, "Should be an oid what is going on?\n");
		}
	}

	/*
	 * We currently ignore anything at the end of the SPNEGO blob after
	 * the mechTypes have been parsed, since none of that info is
	 * used at the moment.
	 */
	return 1;
}