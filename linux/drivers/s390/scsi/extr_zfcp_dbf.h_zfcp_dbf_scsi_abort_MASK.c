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
struct zfcp_fsf_req {int dummy; } ;
struct scsi_cmnd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,struct scsi_cmnd*,struct zfcp_fsf_req*) ; 

__attribute__((used)) static inline
void FUNC1(char *tag, struct scsi_cmnd *scmd,
			 struct zfcp_fsf_req *fsf_req)
{
	FUNC0(tag, 1, scmd, fsf_req);
}