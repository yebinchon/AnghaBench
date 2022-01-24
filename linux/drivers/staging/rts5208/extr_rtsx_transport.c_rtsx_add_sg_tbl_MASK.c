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
typedef  int u64 ;
typedef  int u32 ;
struct rtsx_chip {int sgi; scalar_t__ host_sg_tbl_ptr; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int HOST_SG_TBL_BUF_LEN ; 
 int RTSX_SG_END ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static inline void FUNC1(
	struct rtsx_chip *chip, u32 addr, u32 len, u8 option)
{
	__le64 *sgb = (__le64 *)(chip->host_sg_tbl_ptr);
	u64 val = 0;
	u32 temp_len = 0;
	u8  temp_opt = 0;

	do {
		if (len > 0x80000) {
			temp_len = 0x80000;
			temp_opt = option & (~RTSX_SG_END);
		} else {
			temp_len = len;
			temp_opt = option;
		}
		val = ((u64)addr << 32) | ((u64)temp_len << 12) | temp_opt;

		if (chip->sgi < (HOST_SG_TBL_BUF_LEN / 8))
			sgb[(chip->sgi)++] = FUNC0(val);

		len -= temp_len;
		addr += temp_len;
	} while (len);
}