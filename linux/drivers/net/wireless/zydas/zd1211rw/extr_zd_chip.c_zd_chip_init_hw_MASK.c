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
typedef  int /*<<< orphan*/  u8 ;
struct zd_chip {int /*<<< orphan*/  mutex; int /*<<< orphan*/  rf; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR_AFTER_PNP ; 
 int /*<<< orphan*/  CR_CWMIN_CWMAX ; 
 int /*<<< orphan*/  CR_GPI_EN ; 
 int CWIN_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct zd_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct zd_chip*) ; 
 int FUNC3 (struct zd_chip*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct zd_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct zd_chip*) ; 
 int FUNC8 (struct zd_chip*) ; 
 int FUNC9 (struct zd_chip*) ; 
 int FUNC10 (struct zd_chip*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct zd_chip*,int) ; 
 int FUNC12 (struct zd_chip*) ; 
 int /*<<< orphan*/  FUNC13 (struct zd_chip*) ; 
 int FUNC14 (struct zd_chip*,int,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC16(struct zd_chip *chip)
{
	int r;
	u8 rf_type;

	FUNC0(FUNC13(chip), "\n");

	FUNC4(&chip->mutex);

#ifdef DEBUG
	r = test_init(chip);
	if (r)
		goto out;
#endif
	r = FUNC14(chip, 1, CR_AFTER_PNP);
	if (r)
		goto out;

	r = FUNC9(chip);
	if (r)
		goto out;

	/* GPI is always disabled, also in the other driver.
	 */
	r = FUNC14(chip, 0, CR_GPI_EN);
	if (r)
		goto out;
	r = FUNC14(chip, CWIN_SIZE, CR_CWMIN_CWMAX);
	if (r)
		goto out;
	/* Currently we support IEEE 802.11g for full and high speed USB.
	 * It might be discussed, whether we should support pure b mode for
	 * full speed USB.
	 */
	r = FUNC11(chip, 1);
	if (r)
		goto out;
	/* Disabling interrupts is certainly a smart thing here.
	 */
	r = FUNC1(chip);
	if (r)
		goto out;
	r = FUNC10(chip, &rf_type);
	if (r)
		goto out;
	r = FUNC3(chip);
	if (r)
		goto out;
	r = FUNC15(&chip->rf, rf_type);
	if (r)
		goto out;

	r = FUNC6(chip);
	if (r)
		goto out;

#ifdef DEBUG
	dump_fw_registers(chip);
	r = test_init(chip);
	if (r)
		goto out;
#endif /* DEBUG */

	r = FUNC8(chip);
	if (r)
		goto out;

	FUNC7(chip);
out:
	FUNC5(&chip->mutex);
	return r;
}