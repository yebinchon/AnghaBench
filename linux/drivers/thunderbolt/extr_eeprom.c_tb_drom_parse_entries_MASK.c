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
typedef  scalar_t__ u16 ;
struct tb_switch {scalar_t__ drom; } ;
struct tb_drom_header {scalar_t__ data_len; } ;
struct tb_drom_entry_header {scalar_t__ len; int type; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ TB_DROM_DATA_START ; 
#define  TB_DROM_ENTRY_GENERIC 129 
#define  TB_DROM_ENTRY_PORT 128 
 int FUNC0 (struct tb_switch*,struct tb_drom_entry_header*) ; 
 int FUNC1 (struct tb_switch*,struct tb_drom_entry_header*) ; 
 int /*<<< orphan*/  FUNC2 (struct tb_switch*,char*) ; 

__attribute__((used)) static int FUNC3(struct tb_switch *sw)
{
	struct tb_drom_header *header = (void *) sw->drom;
	u16 pos = sizeof(*header);
	u16 drom_size = header->data_len + TB_DROM_DATA_START;
	int res;

	while (pos < drom_size) {
		struct tb_drom_entry_header *entry = (void *) (sw->drom + pos);
		if (pos + 1 == drom_size || pos + entry->len > drom_size
				|| !entry->len) {
			FUNC2(sw, "drom buffer overrun, aborting\n");
			return -EIO;
		}

		switch (entry->type) {
		case TB_DROM_ENTRY_GENERIC:
			res = FUNC0(sw, entry);
			break;
		case TB_DROM_ENTRY_PORT:
			res = FUNC1(sw, entry);
			break;
		}
		if (res)
			return res;

		pos += entry->len;
	}
	return 0;
}