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
typedef  unsigned char uint ;
typedef  unsigned char u8 ;
typedef  int u32 ;
typedef  int u16 ;

/* Variables and functions */
 int /*<<< orphan*/  _WPA_IE_ID_ ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 scalar_t__ FUNC1 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,int) ; 
 unsigned char* FUNC3 (unsigned char*,int /*<<< orphan*/ ,int*,int) ; 

unsigned char *FUNC4(unsigned char *ie, uint *wpa_ie_len, int limit)
{
	u32 len;
	u16 val16;
	unsigned char wpa_oui_type[] = {0x00, 0x50, 0xf2, 0x01};
	u8 *buf = ie;

	while (1) {
		buf = FUNC3(buf, _WPA_IE_ID_, &len, limit);
		if (buf) {
			/*check if oui matches...*/
			if (FUNC1((buf + 2), wpa_oui_type,
				   sizeof(wpa_oui_type)))
				goto check_next_ie;
			/*check version...*/
			FUNC2((u8 *)&val16, (buf + 6), sizeof(val16));
			FUNC0(&val16);
			if (val16 != 0x0001)
				goto check_next_ie;
			*wpa_ie_len = *(buf + 1);
			return buf;
		}
		*wpa_ie_len = 0;
		return NULL;
check_next_ie:
		limit = limit - (buf - ie) - 2 - len;
		if (limit <= 0)
			break;
		buf += (2 + len);
	}
	*wpa_ie_len = 0;
	return NULL;
}