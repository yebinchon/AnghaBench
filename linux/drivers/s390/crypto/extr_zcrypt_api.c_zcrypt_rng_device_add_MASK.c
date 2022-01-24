#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {scalar_t__ quality; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zcrypt_hwrng_seed ; 
 int /*<<< orphan*/ * zcrypt_rng_buffer ; 
 scalar_t__ zcrypt_rng_buffer_index ; 
 TYPE_1__ zcrypt_rng_dev ; 
 int zcrypt_rng_device_count ; 
 int /*<<< orphan*/  zcrypt_rng_mutex ; 

int FUNC5(void)
{
	int rc = 0;

	FUNC3(&zcrypt_rng_mutex);
	if (zcrypt_rng_device_count == 0) {
		zcrypt_rng_buffer = (u32 *) FUNC1(GFP_KERNEL);
		if (!zcrypt_rng_buffer) {
			rc = -ENOMEM;
			goto out;
		}
		zcrypt_rng_buffer_index = 0;
		if (!zcrypt_hwrng_seed)
			zcrypt_rng_dev.quality = 0;
		rc = FUNC2(&zcrypt_rng_dev);
		if (rc)
			goto out_free;
		zcrypt_rng_device_count = 1;
	} else
		zcrypt_rng_device_count++;
	FUNC4(&zcrypt_rng_mutex);
	return 0;

out_free:
	FUNC0((unsigned long) zcrypt_rng_buffer);
out:
	FUNC4(&zcrypt_rng_mutex);
	return rc;
}