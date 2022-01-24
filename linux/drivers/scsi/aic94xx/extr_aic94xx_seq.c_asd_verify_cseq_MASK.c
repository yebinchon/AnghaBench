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
typedef  scalar_t__ u32 ;
struct asd_ha_struct {int /*<<< orphan*/  pcidev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ CSEQ_RAM_REG_BASE_ADR ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (struct asd_ha_struct*,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct asd_ha_struct *asd_ha, const u8 *_prog,
			   u32 size)
{
	u32 addr = CSEQ_RAM_REG_BASE_ADR;
	const u32 *prog = (u32 *) _prog;
	u32 i;

	for (i = 0; i < size; i += 4, prog++, addr += 4) {
		u32 val = FUNC2(asd_ha, addr);

		if (FUNC3(*prog) != val) {
			FUNC1("%s: cseq verify failed at %u "
				   "read:0x%x, wanted:0x%x\n",
				   FUNC4(asd_ha->pcidev),
				   i, val, FUNC3(*prog));
			return -1;
		}
	}
	FUNC0("verified %d bytes, passed\n", size);
	return 0;
}