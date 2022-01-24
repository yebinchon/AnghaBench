#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int len; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {int /*<<< orphan*/  version; } ;
struct hvsi_query_response {TYPE_3__ hdr; int /*<<< orphan*/  query_seqno; TYPE_1__ u; int /*<<< orphan*/  verb; } ;
struct TYPE_5__ {int /*<<< orphan*/  seqno; } ;
struct hvsi_query {TYPE_2__ hdr; int /*<<< orphan*/  verb; } ;
struct hvsi_priv {int established; int /*<<< orphan*/  termno; scalar_t__ inbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  HVSI_VERSION ; 
 scalar_t__ VSV_SEND_VERSION_NUMBER ; 
 int /*<<< orphan*/  VS_QUERY_RESPONSE_PACKET_HEADER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct hvsi_priv*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct hvsi_priv *pv)
{
	struct hvsi_query *pkt = (struct hvsi_query *)pv->inbuf;
	struct hvsi_query_response r;

	/* We only handle version queries */
	if (FUNC0(pkt->verb) != VSV_SEND_VERSION_NUMBER)
		return;

	FUNC3("HVSI@%x: Got version query, sending response...\n",
		 pv->termno);

	/* Send version response */
	r.hdr.type = VS_QUERY_RESPONSE_PACKET_HEADER;
	r.hdr.len = sizeof(struct hvsi_query_response);
	r.verb = FUNC1(VSV_SEND_VERSION_NUMBER);
	r.u.version = HVSI_VERSION;
	r.query_seqno = pkt->hdr.seqno;
	FUNC2(pv, &r.hdr);

	/* Assume protocol is open now */
	pv->established = 1;
}