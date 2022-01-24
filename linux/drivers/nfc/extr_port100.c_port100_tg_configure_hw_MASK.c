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
struct nfc_digital_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int NFC_DIGITAL_CONFIG_FRAMING ; 
 int NFC_DIGITAL_CONFIG_RF_TECH ; 
 int FUNC0 (struct nfc_digital_dev*,int) ; 
 int FUNC1 (struct nfc_digital_dev*,int) ; 

__attribute__((used)) static int FUNC2(struct nfc_digital_dev *ddev, int type,
				   int param)
{
	if (type == NFC_DIGITAL_CONFIG_RF_TECH)
		return FUNC1(ddev, param);

	if (type == NFC_DIGITAL_CONFIG_FRAMING)
		return FUNC0(ddev, param);

	return -EINVAL;
}