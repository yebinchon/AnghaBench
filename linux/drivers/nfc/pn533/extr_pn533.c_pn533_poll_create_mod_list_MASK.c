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
typedef  int u32 ;
struct pn533 {int dummy; } ;

/* Variables and functions */
 int NFC_PROTO_FELICA_MASK ; 
 int NFC_PROTO_ISO14443_B_MASK ; 
 int NFC_PROTO_ISO14443_MASK ; 
 int NFC_PROTO_JEWEL_MASK ; 
 int NFC_PROTO_MIFARE_MASK ; 
 int NFC_PROTO_NFC_DEP_MASK ; 
 int /*<<< orphan*/  PN533_LISTEN_MOD ; 
 int /*<<< orphan*/  PN533_POLL_MOD_106KBPS_A ; 
 int /*<<< orphan*/  PN533_POLL_MOD_106KBPS_JEWEL ; 
 int /*<<< orphan*/  PN533_POLL_MOD_212KBPS_FELICA ; 
 int /*<<< orphan*/  PN533_POLL_MOD_424KBPS_FELICA ; 
 int /*<<< orphan*/  PN533_POLL_MOD_847KBPS_B ; 
 int /*<<< orphan*/  FUNC0 (struct pn533*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pn533*) ; 

__attribute__((used)) static void FUNC2(struct pn533 *dev,
				       u32 im_protocols, u32 tm_protocols)
{
	FUNC1(dev);

	if ((im_protocols & NFC_PROTO_MIFARE_MASK) ||
	    (im_protocols & NFC_PROTO_ISO14443_MASK) ||
	    (im_protocols & NFC_PROTO_NFC_DEP_MASK))
		FUNC0(dev, PN533_POLL_MOD_106KBPS_A);

	if (im_protocols & NFC_PROTO_FELICA_MASK ||
	    im_protocols & NFC_PROTO_NFC_DEP_MASK) {
		FUNC0(dev, PN533_POLL_MOD_212KBPS_FELICA);
		FUNC0(dev, PN533_POLL_MOD_424KBPS_FELICA);
	}

	if (im_protocols & NFC_PROTO_JEWEL_MASK)
		FUNC0(dev, PN533_POLL_MOD_106KBPS_JEWEL);

	if (im_protocols & NFC_PROTO_ISO14443_B_MASK)
		FUNC0(dev, PN533_POLL_MOD_847KBPS_B);

	if (tm_protocols)
		FUNC0(dev, PN533_LISTEN_MOD);
}