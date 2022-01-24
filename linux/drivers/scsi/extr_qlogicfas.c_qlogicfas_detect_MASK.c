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
struct scsi_host_template {int dummy; } ;
struct qlogicfas408_priv {struct qlogicfas408_priv* next; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int MAX_QLOGICFAS ; 
 struct Scsi_Host* FUNC0 (struct scsi_host_template*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qlogicfas408_priv* cards ; 
 struct qlogicfas408_priv* FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/ * iobase ; 
 int /*<<< orphan*/ * irq ; 

__attribute__((used)) static int FUNC2(struct scsi_host_template *sht)
{
	struct Scsi_Host *shost;
	struct qlogicfas408_priv *priv;
	int num;

	for (num = 0; num < MAX_QLOGICFAS; num++) {
		shost = FUNC0(sht, iobase[num], irq[num]);
		if (shost == NULL) {
			/* no more devices */
			break;
		}
		priv = FUNC1(shost);
		priv->next = cards;
		cards = priv;
	}

	return num;
}