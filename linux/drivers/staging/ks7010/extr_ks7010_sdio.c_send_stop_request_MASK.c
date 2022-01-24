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
typedef  int /*<<< orphan*/  u8 ;
struct sdio_func {int dummy; } ;
struct ks_sdio_card {int /*<<< orphan*/  priv; } ;
struct TYPE_2__ {void* event; void* size; } ;
struct hostif_stop_request {TYPE_1__ header; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t HIF_STOP_REQ ; 
 void* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct hostif_stop_request*) ; 
 struct hostif_stop_request* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_func*) ; 
 struct ks_sdio_card* FUNC5 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC6 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct sdio_func *func)
{
	struct hostif_stop_request *pp;
	struct ks_sdio_card *card;
	size_t size;

	card = FUNC5(func);

	pp = FUNC3(FUNC1(sizeof(*pp)), GFP_KERNEL);
	if (!pp)
		return -ENOMEM;

	size = sizeof(*pp) - sizeof(pp->header.size);
	pp->header.size = FUNC0(size);
	pp->header.event = FUNC0(HIF_STOP_REQ);

	FUNC4(func);
	FUNC7(card->priv, (u8 *)pp, FUNC1(sizeof(*pp)));
	FUNC6(func);

	FUNC2(pp);
	return 0;
}