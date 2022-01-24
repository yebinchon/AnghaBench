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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int const*,int) ; 

__attribute__((used)) static int FUNC3(u8 *dest, const u8 *dln2_buf, u16 len, u8 bpw)
{
#ifdef __LITTLE_ENDIAN
	memcpy(dest, dln2_buf, len);
#else
	if (bpw <= 8) {
		FUNC2(dest, dln2_buf, len);
	} else if (bpw <= 16) {
		u16 *d = (u16 *)dest;
		__le16 *s = (__le16 *)dln2_buf;

		len = len / 2;
		while (len--)
			*d++ = FUNC1(s++);
	} else {
		u32 *d = (u32 *)dest;
		__le32 *s = (__le32 *)dln2_buf;

		len = len / 4;
		while (len--)
			*d++ = FUNC0(s++);
	}
#endif

	return 0;
}