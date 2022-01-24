#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_8__ {TYPE_3__* name; } ;
struct TYPE_9__ {TYPE_2__ attr; } ;

/* Variables and functions */
 int da_num_tokens ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  smbios_attribute_group ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* token_attrs ; 
 TYPE_3__* token_location_attrs ; 
 TYPE_3__* token_value_attrs ; 

__attribute__((used)) static void FUNC2(struct platform_device *pdev)
{
	int i;

	FUNC1(&pdev->dev.kobj,
				&smbios_attribute_group);
	for (i = 0; i < da_num_tokens; i++) {
		FUNC0(token_location_attrs[i].attr.name);
		FUNC0(token_value_attrs[i].attr.name);
	}
	FUNC0(token_attrs);
	FUNC0(token_value_attrs);
	FUNC0(token_location_attrs);
}