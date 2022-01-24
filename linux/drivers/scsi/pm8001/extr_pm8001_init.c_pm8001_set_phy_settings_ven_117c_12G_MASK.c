#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct pm8001_mpi3_phy_pg_trx_config {int dummy; } ;
struct pm8001_hba_info {TYPE_1__* chip; } ;
typedef  int /*<<< orphan*/  phycfg_int ;
typedef  int /*<<< orphan*/  phycfg_ext ;
struct TYPE_2__ {int n_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pm8001_mpi3_phy_pg_trx_config*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pm8001_hba_info*,struct pm8001_mpi3_phy_pg_trx_config*) ; 
 int /*<<< orphan*/  FUNC2 (struct pm8001_hba_info*,struct pm8001_mpi3_phy_pg_trx_config*) ; 
 int /*<<< orphan*/  FUNC3 (struct pm8001_hba_info*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct pm8001_hba_info*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
int FUNC5(struct pm8001_hba_info *pm8001_ha)
{
	struct pm8001_mpi3_phy_pg_trx_config phycfg_int;
	struct pm8001_mpi3_phy_pg_trx_config phycfg_ext;
	int phymask = 0;
	int i = 0;

	FUNC0(&phycfg_int, 0, sizeof(phycfg_int));
	FUNC0(&phycfg_ext, 0, sizeof(phycfg_ext));

	FUNC2(pm8001_ha, &phycfg_int);
	FUNC1(pm8001_ha, &phycfg_ext);
	FUNC3(pm8001_ha, &phymask);

	for (i = 0; i < pm8001_ha->chip->n_phy; i++) {
		if (phymask & (1 << i)) {/* Internal PHY */
			FUNC4(pm8001_ha, i,
					sizeof(phycfg_int) / sizeof(u32),
					(u32 *)&phycfg_int);

		} else { /* External PHY */
			FUNC4(pm8001_ha, i,
					sizeof(phycfg_ext) / sizeof(u32),
					(u32 *)&phycfg_ext);
		}
	}

	return 0;
}