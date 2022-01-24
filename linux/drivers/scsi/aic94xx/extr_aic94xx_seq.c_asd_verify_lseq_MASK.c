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
typedef  int /*<<< orphan*/  const u8 ;
typedef  int u32 ;
struct asd_ha_struct {int /*<<< orphan*/  pcidev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int LSEQ_CODEPAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int LmRAMPAGE_LSHIFT ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC4 (struct asd_ha_struct*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct asd_ha_struct*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct asd_ha_struct *asd_ha, const u8 *_prog,
			   u32 size, int lseq)
{
#define LSEQ_CODEPAGE_SIZE 4096
	int pages =  (size + LSEQ_CODEPAGE_SIZE - 1) / LSEQ_CODEPAGE_SIZE;
	u32 page;
	const u32 *prog = (u32 *) _prog;

	for (page = 0; page < pages; page++) {
		u32 i;

		FUNC5(asd_ha, FUNC1(lseq),
				    page << LmRAMPAGE_LSHIFT);
		for (i = 0; size > 0 && i < LSEQ_CODEPAGE_SIZE;
		     i += 4, prog++, size-=4) {

			u32 val = FUNC4(asd_ha, FUNC2(lseq)+i);

			if (FUNC6(*prog) != val) {
				FUNC3("%s: LSEQ%d verify failed "
					   "page:%d, offs:%d\n",
					   FUNC7(asd_ha->pcidev),
					   lseq, page, i);
				return -1;
			}
		}
	}
	FUNC0("LSEQ%d verified %d bytes, passed\n", lseq,
		    (int)((u8 *)prog-_prog));
	return 0;
}