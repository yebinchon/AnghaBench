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
struct soc_sensor_entry {int /*<<< orphan*/  tzone; int /*<<< orphan*/  store_ptps; int /*<<< orphan*/  store_dts_enable; int /*<<< orphan*/  locked; } ;

/* Variables and functions */
 int /*<<< orphan*/  MBI_REG_WRITE ; 
 int /*<<< orphan*/  QRK_DTS_REG_OFFSET_ENABLE ; 
 int /*<<< orphan*/  QRK_DTS_REG_OFFSET_PTPS ; 
 int /*<<< orphan*/  QRK_MBI_UNIT_RMU ; 
 int /*<<< orphan*/  dts_update_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct soc_sensor_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct soc_sensor_entry *aux_entry)
{
	if (aux_entry) {
		if (!aux_entry->locked) {
			FUNC2(&dts_update_mutex);
			FUNC0(QRK_MBI_UNIT_RMU, MBI_REG_WRITE,
				       QRK_DTS_REG_OFFSET_ENABLE,
				       aux_entry->store_dts_enable);

			FUNC0(QRK_MBI_UNIT_RMU, MBI_REG_WRITE,
				       QRK_DTS_REG_OFFSET_PTPS,
				       aux_entry->store_ptps);
			FUNC3(&dts_update_mutex);
		}
		FUNC4(aux_entry->tzone);
		FUNC1(aux_entry);
	}
}