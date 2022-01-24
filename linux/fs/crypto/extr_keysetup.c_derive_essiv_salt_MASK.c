#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct crypto_shash {int dummy; } ;
struct TYPE_4__ {struct crypto_shash* tfm; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOPKG ; 
 scalar_t__ FUNC0 (struct crypto_shash*) ; 
 int FUNC1 (struct crypto_shash*) ; 
 struct crypto_shash* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct crypto_shash*) ; 
 struct crypto_shash* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct crypto_shash*) ; 
 struct crypto_shash* FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_shash*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* desc ; 
 int /*<<< orphan*/  essiv_hash_tfm ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(const u8 *key, int keysize, u8 *salt)
{
	struct crypto_shash *tfm = FUNC2(essiv_hash_tfm);

	/* init hash transform on demand */
	if (FUNC10(!tfm)) {
		struct crypto_shash *prev_tfm;

		tfm = FUNC5("sha256", 0, 0);
		if (FUNC0(tfm)) {
			if (FUNC1(tfm) == -ENOENT) {
				FUNC9(NULL,
					     "Missing crypto API support for SHA-256");
				return -ENOPKG;
			}
			FUNC8(NULL,
				    "Error allocating SHA-256 transform: %ld",
				    FUNC1(tfm));
			return FUNC1(tfm);
		}
		prev_tfm = FUNC4(&essiv_hash_tfm, NULL, tfm);
		if (prev_tfm) {
			FUNC6(tfm);
			tfm = prev_tfm;
		}
	}

	{
		FUNC3(desc, tfm);
		desc->tfm = tfm;

		return FUNC7(desc, key, keysize, salt);
	}
}