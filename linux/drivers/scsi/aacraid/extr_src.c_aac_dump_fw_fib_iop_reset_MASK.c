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
struct TYPE_2__ {int supported_options3; } ;
struct aac_dev {TYPE_1__ supplement_adapter_info; } ;
typedef  int __le32 ;

/* Variables and functions */
 int AAC_OPTION_SUPPORTED3_IOP_RESET_FIB_DUMP ; 
 int /*<<< orphan*/  IOP_RESET_FW_FIB_DUMP ; 
 int /*<<< orphan*/  FUNC0 (struct aac_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  aac_fib_dump ; 

__attribute__((used)) static void FUNC1(struct aac_dev *dev)
{
	__le32 supported_options3;

	if (!aac_fib_dump)
		return;

	supported_options3  = dev->supplement_adapter_info.supported_options3;
	if (!(supported_options3 & AAC_OPTION_SUPPORTED3_IOP_RESET_FIB_DUMP))
		return;

	FUNC0(dev, IOP_RESET_FW_FIB_DUMP,
			0, 0, 0,  0, 0, 0, NULL, NULL, NULL, NULL, NULL);
}