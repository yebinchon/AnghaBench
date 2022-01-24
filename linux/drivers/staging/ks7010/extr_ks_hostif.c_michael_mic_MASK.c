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
typedef  int /*<<< orphan*/  u8 ;
struct shash_desc {struct crypto_shash* tfm; } ;
struct crypto_shash {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct crypto_shash*) ; 
 int /*<<< orphan*/  MICHAEL_MIC_KEY_LEN ; 
 int FUNC1 (struct crypto_shash*) ; 
 struct crypto_shash* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_shash*) ; 
 scalar_t__ FUNC4 (struct crypto_shash*) ; 
 int FUNC5 (struct shash_desc*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct shash_desc*) ; 
 int FUNC7 (struct crypto_shash*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct shash_desc*,int /*<<< orphan*/ *,int) ; 
 struct shash_desc* FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct shash_desc*) ; 

__attribute__((used)) static int
FUNC11(u8 *key, u8 *data, unsigned int len, u8 priority, u8 *result)
{
	u8 pad_data[4] = { priority, 0, 0, 0 };
	struct crypto_shash *tfm = NULL;
	struct shash_desc *desc = NULL;
	int ret;

	tfm = FUNC2("michael_mic", 0, 0);
	if (FUNC0(tfm)) {
		ret = FUNC1(tfm);
		goto err;
	}

	ret = FUNC7(tfm, key, MICHAEL_MIC_KEY_LEN);
	if (ret < 0)
		goto err_free_tfm;

	desc = FUNC9(sizeof(*desc) + FUNC4(tfm), GFP_KERNEL);
	if (!desc) {
		ret = -ENOMEM;
		goto err_free_tfm;
	}

	desc->tfm = tfm;

	ret = FUNC6(desc);
	if (ret < 0)
		goto err_free_desc;

	// Compute the MIC value
	/*
	 * IEEE802.11i  page 47
	 * Figure 43g TKIP MIC processing format
	 * +--+--+--------+--+----+--+--+--+--+--+--+--+--+
	 * |6 |6 |1       |3 |M   |1 |1 |1 |1 |1 |1 |1 |1 | Octet
	 * +--+--+--------+--+----+--+--+--+--+--+--+--+--+
	 * |DA|SA|Priority|0 |Data|M0|M1|M2|M3|M4|M5|M6|M7|
	 * +--+--+--------+--+----+--+--+--+--+--+--+--+--+
	 */

	ret = FUNC8(desc, data, 12);
	if (ret < 0)
		goto err_free_desc;

	ret = FUNC8(desc, pad_data, 4);
	if (ret < 0)
		goto err_free_desc;

	ret = FUNC5(desc, data + 12, len - 12, result);

err_free_desc:
	FUNC10(desc);

err_free_tfm:
	FUNC3(tfm);

err:
	return ret;
}