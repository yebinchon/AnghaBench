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
typedef  int /*<<< orphan*/  u32 ;
struct fcoe_port {struct bnx2fc_interface* priv; } ;
typedef  void fcoe_ctlr ;
struct fc_seq {int dummy; } ;
struct fc_lport {int dummy; } ;
struct fc_frame_header {int /*<<< orphan*/  fh_d_id; } ;
struct fc_frame {int dummy; } ;
struct bnx2fc_interface {int dummy; } ;

/* Variables and functions */
#define  ELS_FDISC 130 
#define  ELS_FLOGI 129 
#define  ELS_LOGO 128 
 int /*<<< orphan*/  FC_FID_FLOGI ; 
 void FUNC0 (struct fc_seq*,struct fc_frame*,void*) ; 
 void FUNC1 (struct fc_seq*,struct fc_frame*,void*) ; 
 void* FUNC2 (struct bnx2fc_interface*) ; 
 struct fc_seq* FUNC3 (struct fc_lport*,int /*<<< orphan*/ ,struct fc_frame*,unsigned int,void (*) (struct fc_seq*,struct fc_frame*,void*),void*,int /*<<< orphan*/ ) ; 
 struct fc_frame_header* FUNC4 (struct fc_frame*) ; 
 struct fcoe_port* FUNC5 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

struct fc_seq *FUNC7(struct fc_lport *lport, u32 did,
				      struct fc_frame *fp, unsigned int op,
				      void (*resp)(struct fc_seq *,
						   struct fc_frame *,
						   void *),
				      void *arg, u32 timeout)
{
	struct fcoe_port *port = FUNC5(lport);
	struct bnx2fc_interface *interface = port->priv;
	struct fcoe_ctlr *fip = FUNC2(interface);
	struct fc_frame_header *fh = FUNC4(fp);

	switch (op) {
	case ELS_FLOGI:
	case ELS_FDISC:
		return FUNC3(lport, did, fp, op, bnx2fc_flogi_resp,
				     fip, timeout);
	case ELS_LOGO:
		/* only hook onto fabric logouts, not port logouts */
		if (FUNC6(fh->fh_d_id) != FC_FID_FLOGI)
			break;
		return FUNC3(lport, did, fp, op, bnx2fc_logo_resp,
				     fip, timeout);
	}
	return FUNC3(lport, did, fp, op, resp, arg, timeout);
}