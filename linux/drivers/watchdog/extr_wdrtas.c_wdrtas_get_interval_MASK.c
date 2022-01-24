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

/* Variables and functions */
 int /*<<< orphan*/  WDRTAS_SP_SPI ; 
 int WDRTAS_SP_SPI_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,long) ; 
 long FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rtas_data_buf ; 
 int /*<<< orphan*/  rtas_data_buf_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wdrtas_token_get_sp ; 

__attribute__((used)) static int FUNC7(int fallback_value)
{
	long result;
	char value[WDRTAS_SP_SPI_LEN];

	FUNC5(&rtas_data_buf_lock);
	FUNC2(rtas_data_buf, 0, WDRTAS_SP_SPI_LEN);
	result = FUNC4(wdrtas_token_get_sp, 3, 1, NULL,
			   WDRTAS_SP_SPI, FUNC0(rtas_data_buf),
			   WDRTAS_SP_SPI_LEN);

	FUNC1(value, rtas_data_buf, WDRTAS_SP_SPI_LEN);
	FUNC6(&rtas_data_buf_lock);

	if (value[0] != 0 || value[1] != 2 || value[3] != 0 || result < 0) {
		FUNC3("could not get sp_spi watchdog timeout (%li). Continuing\n",
			result);
		return fallback_value;
	}

	/* rtas uses minutes */
	return ((int)value[2]) * 60;
}