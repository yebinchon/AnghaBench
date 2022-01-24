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
struct nvmet_tcp_queue {void* snd_hash; void* rcv_hash; } ;
struct crypto_ahash {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_ASYNC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct crypto_ahash*) ; 
 int FUNC1 (struct crypto_ahash*) ; 
 void* FUNC2 (struct crypto_ahash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct crypto_ahash* FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_ahash*) ; 

__attribute__((used)) static int FUNC7(struct nvmet_tcp_queue *queue)
{
	struct crypto_ahash *tfm;

	tfm = FUNC5("crc32c", 0, CRYPTO_ALG_ASYNC);
	if (FUNC0(tfm))
		return FUNC1(tfm);

	queue->snd_hash = FUNC2(tfm, GFP_KERNEL);
	if (!queue->snd_hash)
		goto free_tfm;
	FUNC4(queue->snd_hash, 0, NULL, NULL);

	queue->rcv_hash = FUNC2(tfm, GFP_KERNEL);
	if (!queue->rcv_hash)
		goto free_snd_hash;
	FUNC4(queue->rcv_hash, 0, NULL, NULL);

	return 0;
free_snd_hash:
	FUNC3(queue->snd_hash);
free_tfm:
	FUNC6(tfm);
	return -ENOMEM;
}