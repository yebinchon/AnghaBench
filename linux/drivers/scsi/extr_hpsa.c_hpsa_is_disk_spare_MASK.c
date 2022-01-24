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
struct ctlr_info {int dummy; } ;
struct bmic_identify_physical_device {int more_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct ctlr_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bmic_identify_physical_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bmic_identify_physical_device*) ; 
 struct bmic_identify_physical_device* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct ctlr_info *h, u8 *lunaddrbytes)
{
	struct bmic_identify_physical_device *id_phys;
	bool is_spare = false;
	int rc;

	id_phys = FUNC3(sizeof(*id_phys), GFP_KERNEL);
	if (!id_phys)
		return false;

	rc = FUNC1(h,
					lunaddrbytes,
					FUNC0(lunaddrbytes),
					id_phys, sizeof(*id_phys));
	if (rc == 0)
		is_spare = (id_phys->more_flags >> 6) & 0x01;

	FUNC2(id_phys);
	return is_spare;
}