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
typedef  int /*<<< orphan*/  u32 ;
struct sas_identify_frame {int dummy; } ;
struct mvs_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ CONFIG_ID_FRAME0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sas_identify_frame*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mvs_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mvs_info*,int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct mvs_info *mvi, int port_id,
					struct sas_identify_frame *id)
{
	int i;
	u32 id_frame[7];

	for (i = 0; i < 7; i++) {
		FUNC3(mvi, port_id,
					CONFIG_ID_FRAME0 + i * 4);
		id_frame[i] = FUNC0(FUNC2(mvi, port_id));
	}
	FUNC1(id, id_frame, 28);
}