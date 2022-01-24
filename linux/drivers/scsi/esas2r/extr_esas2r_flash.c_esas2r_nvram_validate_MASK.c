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
struct esas2r_sas_nvram {char* signature; scalar_t__ version; } ;
struct esas2r_adapter {int /*<<< orphan*/  flags; struct esas2r_sas_nvram* nvram; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_NVR_VALID ; 
 scalar_t__ SASNVR_VERSION ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct esas2r_adapter*) ; 
 scalar_t__ FUNC2 (struct esas2r_sas_nvram*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool FUNC4(struct esas2r_adapter *a)
{
	struct esas2r_sas_nvram *n = a->nvram;
	bool rslt = false;

	if (n->signature[0] != 'E'
	    || n->signature[1] != 'S'
	    || n->signature[2] != 'A'
	    || n->signature[3] != 'S') {
		FUNC0("invalid NVRAM signature");
	} else if (FUNC2(n)) {
		FUNC0("invalid NVRAM checksum");
	} else if (n->version > SASNVR_VERSION) {
		FUNC0("invalid NVRAM version");
	} else {
		FUNC3(AF_NVR_VALID, &a->flags);
		rslt = true;
	}

	if (rslt == false) {
		FUNC0("using defaults");
		FUNC1(a);
	}

	return rslt;
}