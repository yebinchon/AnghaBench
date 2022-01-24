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
typedef  int u32 ;
struct asd_ha_struct {int /*<<< orphan*/  pcidev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  PCIC_HSTPCIX_CNTRL ; 
 int SC_TMR_DIS ; 
 scalar_t__ FUNC0 (struct asd_ha_struct*) ; 
 int FUNC1 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct asd_ha_struct*) ; 
 int FUNC3 (struct asd_ha_struct*) ; 
 int FUNC4 (struct asd_ha_struct*) ; 
 int FUNC5 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct asd_ha_struct*) ; 
 int FUNC7 (struct asd_ha_struct*) ; 
 int FUNC8 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct asd_ha_struct*) ; 
 int FUNC11 (struct asd_ha_struct*) ; 
 int FUNC12 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC16(struct asd_ha_struct *asd_ha)
{
	int err;
	u32 v;

	err = FUNC8(asd_ha);
	if (err)
		return err;

	err = FUNC14(asd_ha->pcidev, PCIC_HSTPCIX_CNTRL, &v);
	if (err) {
		FUNC9("couldn't read PCIC_HSTPCIX_CNTRL of %s\n",
			   FUNC13(asd_ha->pcidev));
		return err;
	}
	err = FUNC15(asd_ha->pcidev, PCIC_HSTPCIX_CNTRL,
					v | SC_TMR_DIS);
	if (err) {
		FUNC9("couldn't disable split completion timer of %s\n",
			   FUNC13(asd_ha->pcidev));
		return err;
	}

	err = FUNC12(asd_ha);
	if (err) {
		FUNC9("couldn't read ocm(%d)\n", err);
		/* While suspicios, it is not an error that we
		 * couldn't read the OCM. */
	}

	err = FUNC11(asd_ha);
	if (err) {
		FUNC9("couldn't read flash(%d)\n", err);
		/* While suspicios, it is not an error that we
		 * couldn't read FLASH memory.
		 */
	}

	FUNC2(asd_ha);

	if (FUNC0(asd_ha)) {
		FUNC9("No SAS Address provided for %s\n",
			   FUNC13(asd_ha->pcidev));
		err = -ENODEV;
		goto Out;
	}

	FUNC10(asd_ha);

	err = FUNC5(asd_ha);
	if (err) {
		FUNC9("couldn't initialize phys for %s\n",
			    FUNC13(asd_ha->pcidev));
		goto Out;
	}

	FUNC6(asd_ha);

	err = FUNC7(asd_ha);
	if (err) {
		FUNC9("couldn't initialize scbs for %s\n",
			    FUNC13(asd_ha->pcidev));
		goto Out;
	}

	err = FUNC3(asd_ha);
	if (err) {
		FUNC9("couldn't initialize the done list:%d\n",
			    err);
		goto Out;
	}

	err = FUNC4(asd_ha);
	if (err) {
		FUNC9("couldn't initialize escbs\n");
		goto Out;
	}

	err = FUNC1(asd_ha);
	if (err) {
		FUNC9("couldn't init the chip\n");
		goto Out;
	}
Out:
	return err;
}