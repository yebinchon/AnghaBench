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
struct asd_ha_struct {int /*<<< orphan*/  pcidev; struct asd_ha_addrspace* io_handle; scalar_t__ iospace; } ;
struct asd_ha_addrspace {int /*<<< orphan*/  addr; int /*<<< orphan*/  len; int /*<<< orphan*/  start; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASD_DRIVER_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct asd_ha_struct *asd_ha)
{
	int err, i;
	struct asd_ha_addrspace *io_handle;

	asd_ha->iospace = 0;
	for (i = 0; i < 3; i += 2) {
		io_handle = &asd_ha->io_handle[i==0?0:1];
		io_handle->start = FUNC8(asd_ha->pcidev, i);
		io_handle->len   = FUNC7(asd_ha->pcidev, i);
		io_handle->flags = FUNC6(asd_ha->pcidev, i);
		err = -ENODEV;
		if (!io_handle->start || !io_handle->len) {
			FUNC0("MBAR%d start or length for %s is 0.\n",
				   i==0?0:1, FUNC3(asd_ha->pcidev));
			goto Err;
		}
		err = FUNC5(asd_ha->pcidev, i, ASD_DRIVER_NAME);
		if (err) {
			FUNC0("couldn't reserve memory region for %s\n",
				   FUNC3(asd_ha->pcidev));
			goto Err;
		}
		io_handle->addr = FUNC1(io_handle->start, io_handle->len);
		if (!io_handle->addr) {
			FUNC0("couldn't map MBAR%d of %s\n", i==0?0:1,
				   FUNC3(asd_ha->pcidev));
			err = -ENOMEM;
			goto Err_unreq;
		}
	}

	return 0;
Err_unreq:
	FUNC4(asd_ha->pcidev, i);
Err:
	if (i > 0) {
		io_handle = &asd_ha->io_handle[0];
		FUNC2(io_handle->addr);
		FUNC4(asd_ha->pcidev, 0);
	}
	return err;
}