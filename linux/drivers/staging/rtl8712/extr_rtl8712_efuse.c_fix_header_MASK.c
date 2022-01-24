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
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct _adapter {int dummy; } ;
struct PGPKT_STRUCT {int offset; int word_en; int* data; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int PGPKG_MAX_WORDS ; 
 int FUNC3 (int) ; 
 scalar_t__ efuse_available_max_size ; 
 scalar_t__ FUNC4 (struct _adapter*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct _adapter*,scalar_t__,int) ; 

__attribute__((used)) static u8 FUNC6(struct _adapter *adapter, u8 header, u16 header_addr)
{
	struct PGPKT_STRUCT pkt;
	u8 offset, word_en, value;
	u16 addr;
	int i;
	u8 ret = true;

	pkt.offset = FUNC1(header);
	pkt.word_en = FUNC2(header);
	addr = header_addr + 1 + FUNC3(pkt.word_en) * 2;
	if (addr > efuse_available_max_size)
		return false;
	/* retrieve original data */
	addr = 0;
	while (addr < header_addr) {
		if (!FUNC4(adapter, addr++, &value)) {
			ret = false;
			break;
		}
		offset = FUNC1(value);
		word_en = FUNC2(value);
		if (pkt.offset != offset) {
			addr += FUNC3(word_en) * 2;
			continue;
		}
		for (i = 0; i < PGPKG_MAX_WORDS; i++) {
			if (FUNC0(i) & word_en) {
				if (FUNC0(i) & pkt.word_en) {
					if (FUNC4(
							adapter, addr,
							&value))
						pkt.data[i * 2] = value;
					else
						return false;
					if (FUNC4(
							adapter,
							addr + 1,
							&value))
						pkt.data[i * 2 + 1] =
							value;
					else
						return false;
				}
				addr += 2;
			}
		}
	}
	if (addr != header_addr)
		return false;
	addr++;
	/* fill original data */
	for (i = 0; i < PGPKG_MAX_WORDS; i++) {
		if (FUNC0(i) & pkt.word_en) {
			FUNC5(adapter, addr, pkt.data[i * 2]);
			FUNC5(adapter, addr + 1,
					     pkt.data[i * 2 + 1]);
			/* additional check */
			if (!FUNC4(adapter, addr, &value)) {
				ret = false;
			} else if (pkt.data[i * 2] != value) {
				ret = false;
				if (value == 0xFF) /* write again */
					FUNC5(adapter, addr,
							     pkt.data[i * 2]);
			}
			if (!FUNC4(adapter, addr + 1, &value)) {
				ret = false;
			} else if (pkt.data[i * 2 + 1] != value) {
				ret = false;
				if (value == 0xFF) /* write again */
					FUNC5(adapter, addr + 1,
							     pkt.data[i * 2 +
								      1]);
			}
		}
		addr += 2;
	}
	return ret;
}