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
struct t10_pi_tuple {scalar_t__ guard_tag; int /*<<< orphan*/  ref_tag; } ;
typedef  int sector_t ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 scalar_t__ T10_PI_TYPE1_PROTECTION ; 
 scalar_t__ T10_PI_TYPE2_PROTECTION ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,...) ; 
 scalar_t__ sdebug_dif ; 
 int /*<<< orphan*/  sdebug_sector_size ; 

__attribute__((used)) static int FUNC4(struct t10_pi_tuple *sdt, const void *data,
		      sector_t sector, u32 ei_lba)
{
	__be16 csum = FUNC2(data, sdebug_sector_size);

	if (sdt->guard_tag != csum) {
		FUNC3("GUARD check failed on sector %lu rcvd 0x%04x, data 0x%04x\n",
			(unsigned long)sector,
			FUNC0(sdt->guard_tag),
			FUNC0(csum));
		return 0x01;
	}
	if (sdebug_dif == T10_PI_TYPE1_PROTECTION &&
	    FUNC1(sdt->ref_tag) != (sector & 0xffffffff)) {
		FUNC3("REF check failed on sector %lu\n",
			(unsigned long)sector);
		return 0x03;
	}
	if (sdebug_dif == T10_PI_TYPE2_PROTECTION &&
	    FUNC1(sdt->ref_tag) != ei_lba) {
		FUNC3("REF check failed on sector %lu\n",
			(unsigned long)sector);
		return 0x03;
	}
	return 0;
}