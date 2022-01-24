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
struct nvmet_tcp_queue {int /*<<< orphan*/  snd_hash; int /*<<< orphan*/  rcv_hash; } ;
struct crypto_ahash {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct crypto_ahash* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_ahash*) ; 

__attribute__((used)) static void FUNC3(struct nvmet_tcp_queue *queue)
{
	struct crypto_ahash *tfm = FUNC1(queue->rcv_hash);

	FUNC0(queue->rcv_hash);
	FUNC0(queue->snd_hash);
	FUNC2(tfm);
}