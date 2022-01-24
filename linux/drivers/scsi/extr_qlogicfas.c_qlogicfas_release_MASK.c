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
struct qlogicfas408_priv {int dummy; } ;
struct Scsi_Host {scalar_t__ n_io_port; scalar_t__ io_port; scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct Scsi_Host*) ; 
 struct qlogicfas408_priv* FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlogicfas408_priv*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC6(struct Scsi_Host *shost)
{
	struct qlogicfas408_priv *priv = FUNC1(shost);

	FUNC5(shost);
	if (shost->irq) {
		FUNC2(priv);	
		FUNC0(shost->irq, shost);
	}
	if (shost->io_port && shost->n_io_port)
		FUNC3(shost->io_port, shost->n_io_port);
	FUNC4(shost);

	return 0;
}