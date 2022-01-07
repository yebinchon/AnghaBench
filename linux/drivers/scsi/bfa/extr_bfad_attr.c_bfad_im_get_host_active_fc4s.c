
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_port_s {int supported_fc4s; } ;
struct bfad_im_port_s {struct bfad_port_s* port; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;


 int BFA_LPORT_ROLE_FCP_IM ;
 int* fc_host_active_fc4s (struct Scsi_Host*) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static void
bfad_im_get_host_active_fc4s(struct Scsi_Host *shost)
{
 struct bfad_im_port_s *im_port =
   (struct bfad_im_port_s *) shost->hostdata[0];
 struct bfad_port_s *port = im_port->port;

 memset(fc_host_active_fc4s(shost), 0,
        sizeof(fc_host_active_fc4s(shost)));

 if (port->supported_fc4s & BFA_LPORT_ROLE_FCP_IM)
  fc_host_active_fc4s(shost)[2] = 1;

 fc_host_active_fc4s(shost)[7] = 1;
}
