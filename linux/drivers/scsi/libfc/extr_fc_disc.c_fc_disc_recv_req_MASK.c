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
struct fc_disc {int /*<<< orphan*/  disc_mutex; } ;
struct fc_lport {struct fc_disc disc; } ;
struct fc_frame {int dummy; } ;

/* Variables and functions */
#define  ELS_RSCN 128 
 int /*<<< orphan*/  FUNC0 (struct fc_disc*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_disc*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_frame*) ; 
 int FUNC3 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct fc_lport *lport, struct fc_frame *fp)
{
	u8 op;
	struct fc_disc *disc = &lport->disc;

	op = FUNC3(fp);
	switch (op) {
	case ELS_RSCN:
		FUNC4(&disc->disc_mutex);
		FUNC1(disc, fp);
		FUNC5(&disc->disc_mutex);
		break;
	default:
		FUNC0(disc, "Received an unsupported request, "
			    "the opcode is (%x)\n", op);
		FUNC2(fp);
		break;
	}
}