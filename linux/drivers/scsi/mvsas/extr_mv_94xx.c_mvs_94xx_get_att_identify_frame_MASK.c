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
struct sas_identify_frame {int dummy; } ;
struct mvs_info {int id; TYPE_1__* chip; } ;
struct TYPE_2__ {int n_phy; } ;

/* Variables and functions */
 scalar_t__ CONFIG_ATT_ID_FRAME0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sas_identify_frame*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mvs_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mvs_info*,int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct mvs_info *mvi, int port_id,
					struct sas_identify_frame *id)
{
	int i;
	u32 id_frame[7];

	for (i = 0; i < 7; i++) {
		FUNC4(mvi, port_id,
					CONFIG_ATT_ID_FRAME0 + i * 4);
		id_frame[i] = FUNC0(FUNC3(mvi, port_id));
		FUNC2("94xx phy %d atta frame %d %x.\n",
			port_id + mvi->id * mvi->chip->n_phy, i, id_frame[i]);
	}
	FUNC1(id, id_frame, 28);
}