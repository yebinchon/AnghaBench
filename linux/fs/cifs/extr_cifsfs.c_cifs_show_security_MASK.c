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
struct seq_file {int dummy; } ;
struct cifs_ses {int sectype; scalar_t__ sign; int /*<<< orphan*/  cred_uid; int /*<<< orphan*/ * user_name; } ;

/* Variables and functions */
#define  Kerberos 132 
#define  LANMAN 131 
#define  NTLM 130 
#define  NTLMv2 129 
#define  RawNTLMSSP 128 
 int Unspecified ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static void
FUNC3(struct seq_file *s, struct cifs_ses *ses)
{
	if (ses->sectype == Unspecified) {
		if (ses->user_name == NULL)
			FUNC2(s, ",sec=none");
		return;
	}

	FUNC2(s, ",sec=");

	switch (ses->sectype) {
	case LANMAN:
		FUNC2(s, "lanman");
		break;
	case NTLMv2:
		FUNC2(s, "ntlmv2");
		break;
	case NTLM:
		FUNC2(s, "ntlm");
		break;
	case Kerberos:
		FUNC1(s, "krb5,cruid=%u", FUNC0(&init_user_ns,ses->cred_uid));
		break;
	case RawNTLMSSP:
		FUNC2(s, "ntlmssp");
		break;
	default:
		/* shouldn't ever happen */
		FUNC2(s, "unknown");
		break;
	}

	if (ses->sign)
		FUNC2(s, "i");
}