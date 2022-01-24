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
typedef  int u8 ;
struct bfi_ioc_attr_s {int card_type; } ;
struct TYPE_2__ {int /*<<< orphan*/  device_id; } ;
struct bfa_ioc_s {TYPE_1__ pcidev; struct bfi_ioc_attr_s* attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_ADAPTER_MODEL_NAME_LEN ; 
 char* BFA_MFG_NAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bfa_ioc_s*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*,char*,int,...) ; 

void
FUNC6(struct bfa_ioc_s *ioc, char *model)
{
	struct bfi_ioc_attr_s	*ioc_attr;
	u8 nports = FUNC2(ioc);

	FUNC0(!model);
	FUNC4((void *)model, 0, BFA_ADAPTER_MODEL_NAME_LEN);

	ioc_attr = ioc->attr;

	if (FUNC1(ioc->pcidev.device_id) &&
		(!FUNC3(ioc_attr->card_type)))
		FUNC5(model, BFA_ADAPTER_MODEL_NAME_LEN, "%s-%u-%u%s",
			BFA_MFG_NAME, ioc_attr->card_type, nports, "p");
	else
		FUNC5(model, BFA_ADAPTER_MODEL_NAME_LEN, "%s-%u",
			BFA_MFG_NAME, ioc_attr->card_type);
}