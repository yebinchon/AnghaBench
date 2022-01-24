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
struct hvsi_priv {int* inbuf; int inbuf_len; int inbuf_pktlen; int inbuf_cur; int /*<<< orphan*/  termno; } ;

/* Variables and functions */
#define  VS_CONTROL_PACKET_HEADER 131 
#define  VS_DATA_PACKET_HEADER 130 
#define  VS_QUERY_PACKET_HEADER 129 
#define  VS_QUERY_RESPONSE_PACKET_HEADER 128 
 int /*<<< orphan*/  FUNC0 (struct hvsi_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct hvsi_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct hvsi_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC5(struct hvsi_priv *pv)
{
	u8 len, type;

	/* Check header validity. If it's invalid, we ditch
	 * the whole buffer and hope we eventually resync
	 */
	if (pv->inbuf[0] < 0xfc) {
		pv->inbuf_len = pv->inbuf_pktlen = 0;
		return 0;
	}
	type = pv->inbuf[0];
	len = pv->inbuf[1];

	/* Packet incomplete ? */
	if (pv->inbuf_len < len)
		return 0;

	FUNC4("HVSI@%x: Got packet type %x len %d bytes:\n",
		 pv->termno, type, len);

	/* We have a packet, yay ! Handle it */
	switch(type) {
	case VS_DATA_PACKET_HEADER:
		pv->inbuf_pktlen = len - 4;
		pv->inbuf_cur = 4;
		return 1;
	case VS_CONTROL_PACKET_HEADER:
		FUNC0(pv);
		break;
	case VS_QUERY_PACKET_HEADER:
		FUNC1(pv);
		break;
	case VS_QUERY_RESPONSE_PACKET_HEADER:
		FUNC2(pv);
		break;
	}

	/* Swallow packet and retry */
	pv->inbuf_len -= len;
	FUNC3(pv->inbuf, &pv->inbuf[len], pv->inbuf_len);
	return 1;
}