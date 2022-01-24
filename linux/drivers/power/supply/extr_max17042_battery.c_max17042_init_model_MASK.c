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
typedef  int /*<<< orphan*/  u16 ;
struct max17042_chip {TYPE_1__* pdata; } ;
struct TYPE_4__ {int /*<<< orphan*/  cell_char_tbl; } ;
struct TYPE_3__ {TYPE_2__* config_data; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX17042_MODELChrTbl ; 
 int /*<<< orphan*/ * FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct max17042_chip*) ; 
 int FUNC4 (struct max17042_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct max17042_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct max17042_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct max17042_chip*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct max17042_chip *chip)
{
	int ret;
	int table_size = FUNC0(chip->pdata->config_data->cell_char_tbl);
	u16 *temp_data;

	temp_data = FUNC1(table_size, sizeof(*temp_data), GFP_KERNEL);
	if (!temp_data)
		return -ENOMEM;

	FUNC6(chip);
	FUNC7(chip, MAX17042_MODELChrTbl,
				table_size);
	FUNC5(chip, MAX17042_MODELChrTbl, temp_data,
				table_size);

	ret = FUNC4(
		chip,
		chip->pdata->config_data->cell_char_tbl,
		temp_data,
		table_size);

	FUNC3(chip);
	FUNC2(temp_data);

	return ret;
}