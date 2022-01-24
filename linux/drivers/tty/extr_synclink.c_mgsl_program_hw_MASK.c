#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* tty; } ;
struct TYPE_5__ {scalar_t__ mode; } ;
struct mgsl_struct {int /*<<< orphan*/  irq_spinlock; TYPE_4__ port; scalar_t__ netcount; scalar_t__ dsr_chkcount; scalar_t__ ri_chkcount; scalar_t__ cts_chkcount; scalar_t__ dcd_chkcount; TYPE_1__ params; scalar_t__ xmit_tail; scalar_t__ xmit_head; scalar_t__ xmit_cnt; } ;
struct TYPE_6__ {int c_cflag; } ;
struct TYPE_7__ {TYPE_2__ termios; } ;

/* Variables and functions */
 int CREAD ; 
 int /*<<< orphan*/  IO_PIN ; 
 scalar_t__ MGSL_MODE_HDLC ; 
 scalar_t__ MGSL_MODE_RAW ; 
 scalar_t__ SICR_CTS ; 
 scalar_t__ SICR_DCD ; 
 scalar_t__ SICR_DSR ; 
 scalar_t__ SICR_RI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct mgsl_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mgsl_struct*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct mgsl_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct mgsl_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct mgsl_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct mgsl_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct mgsl_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct mgsl_struct*) ; 
 int /*<<< orphan*/  FUNC10 (struct mgsl_struct*) ; 

__attribute__((used)) static void FUNC11(struct mgsl_struct *info)
{
	unsigned long flags;

	FUNC0(&info->irq_spinlock,flags);
	
	FUNC9(info);
	FUNC10(info);
	info->xmit_cnt = info->xmit_head = info->xmit_tail = 0;
	
	if (info->params.mode == MGSL_MODE_HDLC ||
	    info->params.mode == MGSL_MODE_RAW ||
	    info->netcount)
		FUNC7(info);
	else
		FUNC5(info);
		
	FUNC6(info);
	
	info->dcd_chkcount = 0;
	info->cts_chkcount = 0;
	info->ri_chkcount = 0;
	info->dsr_chkcount = 0;

	FUNC3(info,SICR_CTS+SICR_DSR+SICR_DCD+SICR_RI);
	FUNC2(info, IO_PIN);
	FUNC4(info);
		
	if (info->netcount || info->port.tty->termios.c_cflag & CREAD)
		FUNC8(info);
		
	FUNC1(&info->irq_spinlock,flags);
}