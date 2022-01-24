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
struct ft_sess {int dummy; } ;
struct fc_lport {int dummy; } ;
struct fc_frame {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_lport*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC3 (struct ft_sess*,struct fc_frame*) ; 
 struct ft_sess* FUNC4 (struct fc_lport*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct fc_lport *lport, struct fc_frame *fp)
{
	struct ft_sess *sess;
	u32 sid = FUNC2(fp);

	FUNC0(lport, "recv sid %x\n", sid);

	sess = FUNC4(lport, sid);
	if (!sess) {
		FUNC0(lport, "sid %x sess lookup failed\n", sid);
		/* TBD XXX - if FCP_CMND, send PRLO */
		FUNC1(fp);
		return;
	}
	FUNC3(sess, fp);	/* must do ft_sess_put() */
}