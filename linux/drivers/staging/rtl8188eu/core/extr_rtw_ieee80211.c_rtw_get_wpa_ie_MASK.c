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
typedef  int /*<<< orphan*/  wpa_oui_type ;
typedef  int /*<<< orphan*/  val16 ;
typedef  int uint ;
typedef  unsigned char u8 ;
typedef  int u16 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  _WPA_IE_ID_ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,int) ; 
 unsigned char* FUNC3 (unsigned char*,int /*<<< orphan*/ ,int*,int) ; 

unsigned char *FUNC4(unsigned char *pie, uint *wpa_ie_len, int limit)
{
	uint len;
	u16 val16;
	__le16 le_tmp;
	static const unsigned char wpa_oui_type[] = {0x00, 0x50, 0xf2, 0x01};
	u8 *pbuf = pie;
	int limit_new = limit;

	while (1) {
		pbuf = FUNC3(pbuf, _WPA_IE_ID_, &len, limit_new);

		if (pbuf) {
			/* check if oui matches... */
			if (FUNC1((pbuf + 2), wpa_oui_type, sizeof(wpa_oui_type)))
				goto check_next_ie;

			/* check version... */
			FUNC2((u8 *)&le_tmp, (pbuf + 6), sizeof(val16));

			val16 = FUNC0(le_tmp);
			if (val16 != 0x0001)
				goto check_next_ie;
			*wpa_ie_len = *(pbuf + 1);
			return pbuf;
		} else {
			*wpa_ie_len = 0;
			return NULL;
		}

check_next_ie:
		limit_new = limit - (pbuf - pie) - 2 - len;
		if (limit_new <= 0)
			break;
		pbuf += (2 + len);
	}
	*wpa_ie_len = 0;
	return NULL;
}