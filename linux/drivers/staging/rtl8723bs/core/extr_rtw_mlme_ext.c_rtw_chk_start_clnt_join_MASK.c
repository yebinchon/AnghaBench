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
typedef  unsigned char u8 ;
struct mlme_ext_priv {unsigned char cur_channel; unsigned char cur_bwmode; unsigned char cur_ch_offset; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned char,unsigned char,unsigned char) ; 
 int _FAIL ; 
 int _SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

int FUNC2(struct adapter *padapter, u8 *ch, u8 *bw, u8 *offset)
{
	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
	unsigned char cur_ch = pmlmeext->cur_channel;
	unsigned char cur_bw = pmlmeext->cur_bwmode;
	unsigned char cur_ch_offset = pmlmeext->cur_ch_offset;
	bool connect_allow = true;

	if (!ch || !bw || !offset) {
		FUNC1(1);
		connect_allow = false;
	}

	if (connect_allow) {
		FUNC0("start_join_set_ch_bw: ch =%d, bwmode =%d, ch_offset =%d\n", cur_ch, cur_bw, cur_ch_offset);
		*ch = cur_ch;
		*bw = cur_bw;
		*offset = cur_ch_offset;
	}

	return connect_allow ? _SUCCESS : _FAIL;
}