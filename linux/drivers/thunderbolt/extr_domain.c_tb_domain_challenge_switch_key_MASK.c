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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct tb_switch {int /*<<< orphan*/  key; int /*<<< orphan*/  authorized; TYPE_1__ dev; } ;
struct tb {TYPE_2__* cm_ops; } ;
struct shash_desc {struct crypto_shash* tfm; } ;
struct crypto_shash {int dummy; } ;
typedef  int /*<<< orphan*/  hmac ;
typedef  int /*<<< orphan*/  challenge ;
struct TYPE_4__ {int (* approve_switch ) (struct tb*,struct tb_switch*) ;int (* challenge_switch_key ) (struct tb*,struct tb_switch*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int EKEYREJECTED ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct crypto_shash*) ; 
 int FUNC1 (struct crypto_shash*) ; 
 int TB_SWITCH_KEY_SIZE ; 
 struct crypto_shash* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_shash*) ; 
 scalar_t__ FUNC4 (struct crypto_shash*) ; 
 int FUNC5 (struct shash_desc*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct crypto_shash*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct shash_desc*) ; 
 struct shash_desc* FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct tb*,struct tb_switch*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct tb*,struct tb_switch*) ; 
 struct tb_switch* FUNC14 (int /*<<< orphan*/ ) ; 

int FUNC15(struct tb *tb, struct tb_switch *sw)
{
	u8 challenge[TB_SWITCH_KEY_SIZE];
	u8 response[TB_SWITCH_KEY_SIZE];
	u8 hmac[TB_SWITCH_KEY_SIZE];
	struct tb_switch *parent_sw;
	struct crypto_shash *tfm;
	struct shash_desc *shash;
	int ret;

	if (!tb->cm_ops->approve_switch || !tb->cm_ops->challenge_switch_key)
		return -EPERM;

	/* The parent switch must be authorized before this one */
	parent_sw = FUNC14(sw->dev.parent);
	if (!parent_sw || !parent_sw->authorized)
		return -EINVAL;

	FUNC7(challenge, sizeof(challenge));
	ret = tb->cm_ops->challenge_switch_key(tb, sw, challenge, response);
	if (ret)
		return ret;

	tfm = FUNC2("hmac(sha256)", 0, 0);
	if (FUNC0(tfm))
		return FUNC1(tfm);

	ret = FUNC6(tfm, sw->key, TB_SWITCH_KEY_SIZE);
	if (ret)
		goto err_free_tfm;

	shash = FUNC9(sizeof(*shash) + FUNC4(tfm),
			GFP_KERNEL);
	if (!shash) {
		ret = -ENOMEM;
		goto err_free_tfm;
	}

	shash->tfm = tfm;

	FUNC11(hmac, 0, sizeof(hmac));
	ret = FUNC5(shash, challenge, sizeof(hmac), hmac);
	if (ret)
		goto err_free_shash;

	/* The returned HMAC must match the one we calculated */
	if (FUNC10(response, hmac, sizeof(hmac))) {
		ret = -EKEYREJECTED;
		goto err_free_shash;
	}

	FUNC3(tfm);
	FUNC8(shash);

	return tb->cm_ops->approve_switch(tb, sw);

err_free_shash:
	FUNC8(shash);
err_free_tfm:
	FUNC3(tfm);

	return ret;
}