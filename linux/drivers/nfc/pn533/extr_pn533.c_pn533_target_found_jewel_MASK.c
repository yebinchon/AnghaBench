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
struct pn533_target_jewel {int /*<<< orphan*/  jewelid; int /*<<< orphan*/  sens_res; } ;
struct nfc_target {int nfcid1_len; int /*<<< orphan*/  nfcid1; int /*<<< orphan*/  sens_res; int /*<<< orphan*/  supported_protocols; } ;

/* Variables and functions */
 int EPROTO ; 
 int /*<<< orphan*/  NFC_PROTO_JEWEL_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pn533_target_jewel*,int) ; 

__attribute__((used)) static int FUNC3(struct nfc_target *nfc_tgt, u8 *tgt_data,
							int tgt_data_len)
{
	struct pn533_target_jewel *tgt_jewel;

	tgt_jewel = (struct pn533_target_jewel *)tgt_data;

	if (!FUNC2(tgt_jewel, tgt_data_len))
		return -EPROTO;

	nfc_tgt->supported_protocols = NFC_PROTO_JEWEL_MASK;
	nfc_tgt->sens_res = FUNC0(tgt_jewel->sens_res);
	nfc_tgt->nfcid1_len = 4;
	FUNC1(nfc_tgt->nfcid1, tgt_jewel->jewelid, nfc_tgt->nfcid1_len);

	return 0;
}