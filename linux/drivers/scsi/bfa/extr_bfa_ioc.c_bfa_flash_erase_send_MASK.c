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
struct bfi_flash_erase_req_s {int /*<<< orphan*/  mh; int /*<<< orphan*/  instance; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {scalar_t__ msg; } ;
struct bfa_flash_s {TYPE_1__ mb; int /*<<< orphan*/  ioc; int /*<<< orphan*/  instance; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_FLASH_H2I_ERASE_REQ ; 
 int /*<<< orphan*/  BFI_MC_FLASH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *cbarg)
{
	struct bfa_flash_s *flash = cbarg;
	struct bfi_flash_erase_req_s *msg =
			(struct bfi_flash_erase_req_s *) flash->mb.msg;

	msg->type = FUNC0(flash->type);
	msg->instance = flash->instance;
	FUNC3(msg->mh, BFI_MC_FLASH, BFI_FLASH_H2I_ERASE_REQ,
			FUNC2(flash->ioc));
	FUNC1(flash->ioc, &flash->mb);
}