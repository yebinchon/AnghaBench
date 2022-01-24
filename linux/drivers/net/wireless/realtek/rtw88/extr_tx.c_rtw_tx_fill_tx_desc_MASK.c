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
struct sk_buff {scalar_t__ data; } ;
struct rtw_tx_pkt_info {int /*<<< orphan*/  sn; int /*<<< orphan*/  report; int /*<<< orphan*/  short_gi; int /*<<< orphan*/  ls; int /*<<< orphan*/  ampdu_en; int /*<<< orphan*/  ldpc; int /*<<< orphan*/  stbc; int /*<<< orphan*/  ampdu_density; int /*<<< orphan*/  ampdu_factor; int /*<<< orphan*/  seq; int /*<<< orphan*/  bw; int /*<<< orphan*/  sec_type; int /*<<< orphan*/  use_rate; int /*<<< orphan*/  dis_rate_fallback; int /*<<< orphan*/  rate; int /*<<< orphan*/  rate_id; int /*<<< orphan*/  bmc; int /*<<< orphan*/  qsel; int /*<<< orphan*/  pkt_offset; int /*<<< orphan*/  offset; int /*<<< orphan*/  tx_pkt_size; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC21(struct rtw_tx_pkt_info *pkt_info, struct sk_buff *skb)
{
	__le32 *txdesc = (__le32 *)skb->data;

	FUNC19(txdesc,  pkt_info->tx_pkt_size);
	FUNC11(txdesc, pkt_info->offset);
	FUNC12(txdesc, pkt_info->pkt_offset);
	FUNC13(txdesc, pkt_info->qsel);
	FUNC2(txdesc, pkt_info->bmc);
	FUNC14(txdesc, pkt_info->rate_id);
	FUNC3(txdesc, pkt_info->rate);
	FUNC8(txdesc, pkt_info->dis_rate_fallback);
	FUNC20(txdesc, pkt_info->use_rate);
	FUNC15(txdesc, pkt_info->sec_type);
	FUNC4(txdesc, pkt_info->bw);
	FUNC18(txdesc, pkt_info->seq);
	FUNC10(txdesc, pkt_info->ampdu_factor);
	FUNC1(txdesc, pkt_info->ampdu_density);
	FUNC7(txdesc, pkt_info->stbc);
	FUNC5(txdesc, pkt_info->ldpc);
	FUNC0(txdesc, pkt_info->ampdu_en);
	FUNC9(txdesc, pkt_info->ls);
	FUNC6(txdesc, pkt_info->short_gi);
	FUNC16(txdesc, pkt_info->report);
	FUNC17(txdesc, pkt_info->sn);
}