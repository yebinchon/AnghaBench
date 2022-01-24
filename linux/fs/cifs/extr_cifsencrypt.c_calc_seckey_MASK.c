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
struct TYPE_3__ {int len; int /*<<< orphan*/  response; } ;
struct cifs_ses {TYPE_1__ auth_key; TYPE_2__* ntlmssp; } ;
struct arc4_ctx {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ciphertext; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIFS_CPHTXT_SIZE ; 
 int CIFS_SESS_KEY_SIZE ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC0 (struct arc4_ctx*,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct arc4_ctx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ fips_enabled ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int) ; 
 struct arc4_ctx* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct arc4_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int) ; 

int
FUNC8(struct cifs_ses *ses)
{
	unsigned char sec_key[CIFS_SESS_KEY_SIZE]; /* a nonce */
	struct arc4_ctx *ctx_arc4;

	if (fips_enabled)
		return -ENODEV;

	FUNC3(sec_key, CIFS_SESS_KEY_SIZE);

	ctx_arc4 = FUNC4(sizeof(*ctx_arc4), GFP_KERNEL);
	if (!ctx_arc4) {
		FUNC2(VFS, "could not allocate arc4 context\n");
		return -ENOMEM;
	}

	FUNC1(ctx_arc4, ses->auth_key.response, CIFS_SESS_KEY_SIZE);
	FUNC0(ctx_arc4, ses->ntlmssp->ciphertext, sec_key,
		   CIFS_CPHTXT_SIZE);

	/* make secondary_key/nonce as session key */
	FUNC6(ses->auth_key.response, sec_key, CIFS_SESS_KEY_SIZE);
	/* and make len as that of session key only */
	ses->auth_key.len = CIFS_SESS_KEY_SIZE;

	FUNC7(sec_key, CIFS_SESS_KEY_SIZE);
	FUNC5(ctx_arc4);
	return 0;
}