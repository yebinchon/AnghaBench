#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_7__ {size_t mode; TYPE_2__* dev; } ;
typedef  TYPE_3__ imm_struct ;
struct TYPE_6__ {TYPE_1__* port; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/ * IMM_MODE_STRING ; 
 int /*<<< orphan*/  IMM_VERSION ; 
 TYPE_3__* FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, struct Scsi_Host *host)
{
	imm_struct *dev = FUNC0(host);

	FUNC1(m, "Version : %s\n", IMM_VERSION);
	FUNC1(m, "Parport : %s\n", dev->dev->port->name);
	FUNC1(m, "Mode    : %s\n", IMM_MODE_STRING[dev->mode]);
	return 0;
}