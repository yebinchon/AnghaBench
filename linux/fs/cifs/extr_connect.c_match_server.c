
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct smb_vol {scalar_t__ ops; int echo_interval; scalar_t__ rdma; scalar_t__ ignore_signature; scalar_t__ min_offload; int srcaddr; TYPE_1__* vals; scalar_t__ nosharesock; int dstaddr; } ;
struct TCP_Server_Info {scalar_t__ ops; int echo_interval; scalar_t__ rdma; scalar_t__ ignore_signature; scalar_t__ min_offload; TYPE_1__* vals; } ;
struct TYPE_6__ {TYPE_2__* nsproxy; } ;
struct TYPE_5__ {int net_ns; } ;
struct TYPE_4__ {scalar_t__ protocol_id; int version_string; } ;


 int HZ ;
 scalar_t__ SMB21_PROT_ID ;
 scalar_t__ SMB30_PROT_ID ;
 int SMB3ANY_VERSION_STRING ;
 int SMBDEFAULT_VERSION_STRING ;
 int cifs_net_ns (struct TCP_Server_Info*) ;
 TYPE_3__* current ;
 int match_address (struct TCP_Server_Info*,struct sockaddr*,struct sockaddr*) ;
 int match_port (struct TCP_Server_Info*,struct sockaddr*) ;
 int match_security (struct TCP_Server_Info*,struct smb_vol*) ;
 int net_eq (int ,int ) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int match_server(struct TCP_Server_Info *server, struct smb_vol *vol)
{
 struct sockaddr *addr = (struct sockaddr *)&vol->dstaddr;

 if (vol->nosharesock)
  return 0;


 if (strcmp(vol->vals->version_string, SMB3ANY_VERSION_STRING) == 0) {
  if (server->vals->protocol_id < SMB30_PROT_ID)
   return 0;
 } else if (strcmp(vol->vals->version_string,
     SMBDEFAULT_VERSION_STRING) == 0) {
  if (server->vals->protocol_id < SMB21_PROT_ID)
   return 0;
 } else if ((server->vals != vol->vals) || (server->ops != vol->ops))
  return 0;

 if (!net_eq(cifs_net_ns(server), current->nsproxy->net_ns))
  return 0;

 if (!match_address(server, addr,
      (struct sockaddr *)&vol->srcaddr))
  return 0;

 if (!match_port(server, addr))
  return 0;

 if (!match_security(server, vol))
  return 0;

 if (server->echo_interval != vol->echo_interval * HZ)
  return 0;

 if (server->rdma != vol->rdma)
  return 0;

 if (server->ignore_signature != vol->ignore_signature)
  return 0;

 if (server->min_offload != vol->min_offload)
  return 0;

 return 1;
}
