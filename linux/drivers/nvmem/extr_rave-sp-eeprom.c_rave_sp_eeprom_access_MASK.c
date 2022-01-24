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
struct rave_sp_eeprom {int /*<<< orphan*/  mutex; } ;
typedef  enum rave_sp_eeprom_access_type { ____Placeholder_rave_sp_eeprom_access_type } rave_sp_eeprom_access_type ;

/* Variables and functions */
 unsigned int RAVE_SP_EEPROM_PAGE_SIZE ; 
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct rave_sp_eeprom*,int,unsigned int,int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int) ; 

__attribute__((used)) static int FUNC5(struct rave_sp_eeprom *eeprom,
				 enum rave_sp_eeprom_access_type type,
				 unsigned int offset, u8 *data,
				 unsigned int data_len)
{
	unsigned int residue;
	unsigned int chunk;
	unsigned int head;
	int ret;

	FUNC1(&eeprom->mutex);

	head    = offset % RAVE_SP_EEPROM_PAGE_SIZE;
	residue = data_len;

	do {
		/*
		 * First iteration, if we are doing an access that is
		 * not 32-byte aligned, we need to access only data up
		 * to a page boundary to avoid corssing it in
		 * rave_sp_eeprom_page_access()
		 */
		if (FUNC4(head)) {
			chunk = RAVE_SP_EEPROM_PAGE_SIZE - head;
			/*
			 * This can only happen once per
			 * rave_sp_eeprom_access() call, so we set
			 * head to zero to process all the other
			 * iterations normally.
			 */
			head  = 0;
		} else {
			chunk = RAVE_SP_EEPROM_PAGE_SIZE;
		}

		/*
		 * We should never read more that 'residue' bytes
		 */
		chunk = FUNC0(chunk, residue);
		ret = FUNC3(eeprom, type, offset,
						 data, chunk);
		if (ret)
			goto out;

		residue -= chunk;
		offset  += chunk;
		data    += chunk;
	} while (residue);
out:
	FUNC2(&eeprom->mutex);
	return ret;
}