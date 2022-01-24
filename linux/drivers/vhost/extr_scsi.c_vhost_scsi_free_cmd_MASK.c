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
struct se_cmd {int dummy; } ;
struct vhost_scsi_cmd {struct se_cmd tvc_se_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct se_cmd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct vhost_scsi_cmd *cmd)
{
	struct se_cmd *se_cmd = &cmd->tvc_se_cmd;

	/* TODO locking against target/backend threads? */
	FUNC0(se_cmd, 0);

}