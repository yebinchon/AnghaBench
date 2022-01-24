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
struct fwtty_port {int dummy; } ;
struct TYPE_2__ {void* code; void* len; } ;
struct fwserial_mgmt_pkt {int /*<<< orphan*/  plug_req; TYPE_1__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FWSC_VIRT_CABLE_PLUG ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct fwtty_port*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static inline void FUNC3(struct fwserial_mgmt_pkt *pkt,
				 struct fwtty_port *port)
{
	pkt->hdr.code = FUNC0(FWSC_VIRT_CABLE_PLUG);
	pkt->hdr.len = FUNC0(FUNC2(pkt->hdr.code));
	FUNC1(&pkt->plug_req, port);
}