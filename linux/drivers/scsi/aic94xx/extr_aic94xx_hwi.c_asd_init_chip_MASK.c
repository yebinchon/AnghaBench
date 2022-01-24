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
struct asd_ha_struct {int /*<<< orphan*/  pcidev; } ;

/* Variables and functions */
 int FUNC0 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct asd_ha_struct*) ; 
 int FUNC2 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct asd_ha_struct *asd_ha)
{
	int err;

	err = FUNC0(asd_ha);
	if (err) {
		FUNC3("couldn't hard reset %s\n",
			    FUNC5(asd_ha->pcidev));
		goto out;
	}

	FUNC1(asd_ha);

	err = FUNC2(asd_ha);
	if (err) {
		FUNC3("couldn't init seqs for %s\n",
			   FUNC5(asd_ha->pcidev));
		goto out;
	}

	err = FUNC4(asd_ha);
	if (err) {
		FUNC3("couldn't start seqs for %s\n",
			   FUNC5(asd_ha->pcidev));
		goto out;
	}
out:
	return err;
}