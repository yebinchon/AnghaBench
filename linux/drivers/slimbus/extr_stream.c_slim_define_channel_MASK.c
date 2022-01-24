#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct slim_val_inf {int member_1; int* member_3; int /*<<< orphan*/ * member_4; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  member_0; } ;
struct slim_stream_runtime {int prot; int bps; int /*<<< orphan*/  ratem; struct slim_device* dev; } ;
struct TYPE_2__ {int seg_dist; int id; int /*<<< orphan*/  state; } ;
struct slim_port {TYPE_1__ ch; } ;
struct slim_device {int /*<<< orphan*/  ctrl; int /*<<< orphan*/  laddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,struct slim_val_inf*) ; 
 int /*<<< orphan*/  SLIM_CH_STATE_DEFINED ; 
 int SLIM_MSG_MC_NEXT_DEFINE_CHANNEL ; 
 int SLIM_PROTO_ISO ; 
 int SLIM_SLOT_LEN_BITS ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  txn ; 

__attribute__((used)) static int FUNC3(struct slim_stream_runtime *stream,
				       struct slim_port *port)
{
	struct slim_device *sdev = stream->dev;
	u8 wbuf[4];
	struct slim_val_inf msg = {0, 4, NULL, wbuf, NULL};
	u8 mc = SLIM_MSG_MC_NEXT_DEFINE_CHANNEL;
	FUNC0(txn, mc, 8, stream->dev->laddr, &msg);

	port->ch.seg_dist = FUNC2(stream->ratem);

	wbuf[0] = port->ch.id;
	wbuf[1] = port->ch.seg_dist & 0xFF;
	wbuf[2] = (stream->prot << 4) | ((port->ch.seg_dist & 0xF00) >> 8);
	if (stream->prot == SLIM_PROTO_ISO)
		wbuf[3] = stream->bps/SLIM_SLOT_LEN_BITS;
	else
		wbuf[3] = stream->bps/SLIM_SLOT_LEN_BITS + 1;

	port->ch.state = SLIM_CH_STATE_DEFINED;

	return FUNC1(sdev->ctrl, &txn);
}