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
typedef  scalar_t__ u16 ;
struct max17042_chip {TYPE_2__* pdata; } ;
struct TYPE_4__ {TYPE_1__* config_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  cell_char_tbl; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX17042_MODELChrTbl ; 
 scalar_t__* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct max17042_chip*,int /*<<< orphan*/ ,scalar_t__*,int) ; 

__attribute__((used)) static int FUNC4(struct max17042_chip *chip)
{
	int i;
	int table_size = FUNC0(chip->pdata->config_data->cell_char_tbl);
	u16 *temp_data;
	int ret = 0;

	temp_data = FUNC1(table_size, sizeof(*temp_data), GFP_KERNEL);
	if (!temp_data)
		return -ENOMEM;

	FUNC3(chip, MAX17042_MODELChrTbl, temp_data,
				table_size);
	for (i = 0; i < table_size; i++)
		if (temp_data[i])
			ret = -EINVAL;

	FUNC2(temp_data);
	return ret;
}