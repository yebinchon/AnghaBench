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
typedef  int u16 ;
struct recv_stat {int /*<<< orphan*/  rxdw0; } ;
struct _adapter {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ RXDESC_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct _adapter*,int /*<<< orphan*/ *) ; 

void FUNC3(struct _adapter *padapter, void *prxcmdbuf)
{
	__le32 voffset;
	u8 *poffset;
	u16 cmd_len, drvinfo_sz;
	struct recv_stat *prxstat;

	poffset = prxcmdbuf;
	voffset = *(__le32 *)poffset;
	prxstat = prxcmdbuf;
	drvinfo_sz = (FUNC1(prxstat->rxdw0) & 0x000f0000) >> 16;
	drvinfo_sz <<= 3;
	poffset += RXDESC_SIZE + drvinfo_sz;
	do {
		voffset  = *(__le32 *)poffset;
		cmd_len = (u16)(FUNC1(voffset) & 0xffff);
		FUNC2(padapter, (__le32 *)poffset);
		poffset += (cmd_len + 8);/*8 bytes alignment*/
	} while (FUNC1(voffset) & FUNC0(31));

}