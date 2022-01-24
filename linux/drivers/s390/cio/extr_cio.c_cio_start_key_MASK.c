#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int fmt; int pfch; int ssic; int c64; scalar_t__ cpa; scalar_t__ key; scalar_t__ i2k; scalar_t__ lpm; scalar_t__ spnd; scalar_t__ intparm; } ;
union orb {TYPE_2__ cmd; } ;
typedef  scalar_t__ u32 ;
struct TYPE_8__ {int /*<<< orphan*/  actl; } ;
struct TYPE_9__ {TYPE_3__ cmd; } ;
struct TYPE_10__ {TYPE_4__ scsw; } ;
struct subchannel {scalar_t__ lpm; TYPE_5__ schib; int /*<<< orphan*/  schid; int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {scalar_t__ prefetch; scalar_t__ inter; scalar_t__ suspend; } ;
struct io_subchannel_private {TYPE_1__ options; union orb orb; } ;
struct ccw1 {int dummy; } ;
typedef  int /*<<< orphan*/  ccode ;
typedef  scalar_t__ addr_t ;
typedef  scalar_t__ __u8 ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int EBUSY ; 
 int /*<<< orphan*/  SCSW_ACTL_START_PEND ; 
 scalar_t__ FUNC2 (struct ccw1*) ; 
 int FUNC3 (struct subchannel*,scalar_t__) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (union orb*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,union orb*) ; 
 struct io_subchannel_private* FUNC7 (struct subchannel*) ; 

int
FUNC8 (struct subchannel *sch,	/* subchannel structure */
	       struct ccw1 * cpa,	/* logical channel prog addr */
	       __u8 lpm,		/* logical path mask */
	       __u8 key)                /* storage key */
{
	struct io_subchannel_private *priv = FUNC7(sch);
	union orb *orb = &priv->orb;
	int ccode;

	FUNC1(5, "stIO");
	FUNC1(5, FUNC4(&sch->dev));

	FUNC5(orb, 0, sizeof(union orb));
	/* sch is always under 2G. */
	orb->cmd.intparm = (u32)(addr_t)sch;
	orb->cmd.fmt = 1;

	orb->cmd.pfch = priv->options.prefetch == 0;
	orb->cmd.spnd = priv->options.suspend;
	orb->cmd.ssic = priv->options.suspend && priv->options.inter;
	orb->cmd.lpm = (lpm != 0) ? lpm : sch->lpm;
	/*
	 * for 64 bit we always support 64 bit IDAWs with 4k page size only
	 */
	orb->cmd.c64 = 1;
	orb->cmd.i2k = 0;
	orb->cmd.key = key >> 4;
	/* issue "Start Subchannel" */
	orb->cmd.cpa = (__u32) FUNC2(cpa);
	ccode = FUNC6(sch->schid, orb);

	/* process condition code */
	FUNC0(5, &ccode, sizeof(ccode));

	switch (ccode) {
	case 0:
		/*
		 * initialize device status information
		 */
		sch->schib.scsw.cmd.actl |= SCSW_ACTL_START_PEND;
		return 0;
	case 1:		/* status pending */
	case 2:		/* busy */
		return -EBUSY;
	case 3:		/* device/path not operational */
		return FUNC3(sch, lpm);
	default:
		return ccode;
	}
}