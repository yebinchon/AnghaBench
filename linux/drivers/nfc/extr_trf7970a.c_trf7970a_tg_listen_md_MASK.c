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
typedef  int /*<<< orphan*/  u16 ;
struct trf7970a {int /*<<< orphan*/  state; int /*<<< orphan*/  dev; } ;
struct nfc_digital_dev {int dummy; } ;
typedef  int /*<<< orphan*/  nfc_digital_cmd_complete_t ;

/* Variables and functions */
 int /*<<< orphan*/  NFC_DIGITAL_CONFIG_FRAMING ; 
 int /*<<< orphan*/  NFC_DIGITAL_CONFIG_RF_TECH ; 
 int /*<<< orphan*/  NFC_DIGITAL_FRAMING_NFCA_NFC_DEP ; 
 int /*<<< orphan*/  NFC_DIGITAL_RF_TECH_106A ; 
 int FUNC0 (struct nfc_digital_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct trf7970a* FUNC2 (struct nfc_digital_dev*) ; 
 int FUNC3 (struct nfc_digital_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct nfc_digital_dev *ddev,
				 u16 timeout, nfc_digital_cmd_complete_t cb,
				 void *arg)
{
	struct trf7970a *trf = FUNC2(ddev);
	int ret;

	FUNC1(trf->dev, "Listen MD - state: %d, timeout: %d ms\n",
		trf->state, timeout);

	ret = FUNC3(ddev, NFC_DIGITAL_CONFIG_RF_TECH,
				       NFC_DIGITAL_RF_TECH_106A);
	if (ret)
		return ret;

	ret = FUNC3(ddev, NFC_DIGITAL_CONFIG_FRAMING,
				       NFC_DIGITAL_FRAMING_NFCA_NFC_DEP);
	if (ret)
		return ret;

	return FUNC0(ddev, timeout, cb, arg, true);
}