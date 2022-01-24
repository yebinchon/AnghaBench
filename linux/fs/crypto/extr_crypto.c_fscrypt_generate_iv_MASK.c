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
union fscrypt_iv {int /*<<< orphan*/  raw; int /*<<< orphan*/  nonce; int /*<<< orphan*/  lblk_num; } ;
typedef  int /*<<< orphan*/  u64 ;
struct fscrypt_info {int /*<<< orphan*/ * ci_essiv_tfm; int /*<<< orphan*/  ci_nonce; int /*<<< orphan*/  ci_policy; TYPE_1__* ci_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  ivsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FS_KEY_DERIVATION_NONCE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (union fscrypt_iv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(union fscrypt_iv *iv, u64 lblk_num,
			 const struct fscrypt_info *ci)
{
	FUNC4(iv, 0, ci->ci_mode->ivsize);
	iv->lblk_num = FUNC0(lblk_num);

	if (FUNC2(&ci->ci_policy))
		FUNC3(iv->nonce, ci->ci_nonce, FS_KEY_DERIVATION_NONCE_SIZE);

	if (ci->ci_essiv_tfm != NULL)
		FUNC1(ci->ci_essiv_tfm, iv->raw, iv->raw);
}