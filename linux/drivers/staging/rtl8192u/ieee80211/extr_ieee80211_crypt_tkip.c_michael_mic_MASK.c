#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct crypto_shash {int dummy; } ;
struct TYPE_7__ {struct crypto_shash* tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct crypto_shash*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (struct crypto_shash*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,size_t) ; 
 TYPE_1__* desc ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct crypto_shash *tfm_michael, u8 *key, u8 *hdr,
		       u8 *data, size_t data_len, u8 *mic)
{
	FUNC0(desc, tfm_michael);
	int err;

	desc->tfm = tfm_michael;

	if (FUNC3(tfm_michael, key, 8))
		return -1;

	err = FUNC2(desc);
	if (err)
		goto out;
	err = FUNC4(desc, hdr, 16);
	if (err)
		goto out;
	err = FUNC4(desc, data, data_len);
	if (err)
		goto out;
	err = FUNC1(desc, mic);

out:
	FUNC5(desc);
	return err;
}