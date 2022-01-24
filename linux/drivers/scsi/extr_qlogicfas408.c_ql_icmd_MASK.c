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
struct scsi_cmnd {unsigned int cmd_len; int* cmnd; } ;
struct qlogicfas408_priv {int qbase; int int_type; int qinitid; struct scsi_cmnd* qlcmd; scalar_t__ qabort; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG0 ; 
 int /*<<< orphan*/  REG1 ; 
 struct qlogicfas408_priv* FUNC0 (struct scsi_cmnd*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int qlcfg5 ; 
 int qlcfg6 ; 
 int qlcfg7 ; 
 int qlcfg8 ; 
 int qlcfg9 ; 
 int qlcfgc ; 
 int FUNC3 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC4(struct scsi_cmnd *cmd)
{
	struct qlogicfas408_priv *priv = FUNC0(cmd);
	int 	qbase = priv->qbase;
	int	int_type = priv->int_type;
	unsigned int i;

	priv->qabort = 0;

	REG0;
	/* clearing of interrupts and the fifo is needed */

	FUNC1(qbase + 5);		/* clear interrupts */
	if (FUNC1(qbase + 5))	/* if still interrupting */
		FUNC2(2, qbase + 3);	/* reset chip */
	else if (FUNC1(qbase + 7) & 0x1f)
		FUNC2(1, qbase + 3);	/* clear fifo */
	while (FUNC1(qbase + 5));	/* clear ints */
	REG1;
	FUNC2(1, qbase + 8);	/* set for PIO pseudo DMA */
	FUNC2(0, qbase + 0xb);	/* disable ints */
	FUNC1(qbase + 8);		/* clear int bits */
	REG0;
	FUNC2(0x40, qbase + 0xb);	/* enable features */

	/* configurables */
	FUNC2(qlcfgc, qbase + 0xc);
	/* config: no reset interrupt, (initiator) bus id */
	FUNC2(0x40 | qlcfg8 | priv->qinitid, qbase + 8);
	FUNC2(qlcfg7, qbase + 7);
	FUNC2(qlcfg6, qbase + 6);
	FUNC2(qlcfg5, qbase + 5);	/* select timer */
	FUNC2(qlcfg9 & 7, qbase + 9);	/* prescaler */
/*	outb(0x99, qbase + 5);	*/
	FUNC2(FUNC3(cmd), qbase + 4);

	for (i = 0; i < cmd->cmd_len; i++)
		FUNC2(cmd->cmnd[i], qbase + 2);

	priv->qlcmd = cmd;
	FUNC2(0x41, qbase + 3);	/* select and send command */
}