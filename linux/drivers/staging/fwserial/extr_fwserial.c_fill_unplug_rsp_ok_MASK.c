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
struct TYPE_2__ {void* code; void* len; } ;
struct fwserial_mgmt_pkt {TYPE_1__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FWSC_VIRT_CABLE_UNPLUG_RSP ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static inline void FUNC2(struct fwserial_mgmt_pkt *pkt)
{
	pkt->hdr.code = FUNC0(FWSC_VIRT_CABLE_UNPLUG_RSP);
	pkt->hdr.len = FUNC0(FUNC1(pkt->hdr.code));
}