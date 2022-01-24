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
struct cifs_ses {int /*<<< orphan*/  sectype; int /*<<< orphan*/  server; } ;
struct SMB2_sess_data {int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FYI ; 
#define  Kerberos 129 
#define  RawNTLMSSP 128 
 int /*<<< orphan*/  SMB2_auth_kerberos ; 
 int /*<<< orphan*/  SMB2_sess_auth_rawntlmssp_negotiate ; 
 int Unspecified ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct cifs_ses *ses, struct SMB2_sess_data *sess_data)
{
	int type;

	type = FUNC1(ses->server, ses->sectype);
	FUNC0(FYI, "sess setup type %d\n", type);
	if (type == Unspecified) {
		FUNC0(VFS,
			"Unable to select appropriate authentication method!");
		return -EINVAL;
	}

	switch (type) {
	case Kerberos:
		sess_data->func = SMB2_auth_kerberos;
		break;
	case RawNTLMSSP:
		sess_data->func = SMB2_sess_auth_rawntlmssp_negotiate;
		break;
	default:
		FUNC0(VFS, "secType %d not supported!\n", type);
		return -EOPNOTSUPP;
	}

	return 0;
}