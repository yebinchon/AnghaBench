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
struct bfad_port_s {int supported_fc4s; } ;
struct bfad_im_port_s {struct bfad_port_s* port; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;

/* Variables and functions */
 int BFA_LPORT_ROLE_FCP_IM ; 
 int* FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct Scsi_Host *shost)
{
	struct bfad_im_port_s *im_port =
			(struct bfad_im_port_s *) shost->hostdata[0];
	struct bfad_port_s    *port = im_port->port;

	FUNC1(FUNC0(shost), 0,
	       sizeof(FUNC0(shost)));

	if (port->supported_fc4s & BFA_LPORT_ROLE_FCP_IM)
		FUNC0(shost)[2] = 1;

	FUNC0(shost)[7] = 1;
}