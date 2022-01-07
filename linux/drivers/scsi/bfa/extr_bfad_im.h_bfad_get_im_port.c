
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_im_port_s {int dummy; } ;
struct bfad_im_port_pointer {struct bfad_im_port_s* p; } ;
struct Scsi_Host {int dummy; } ;


 struct bfad_im_port_pointer* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static inline struct bfad_im_port_s *bfad_get_im_port(struct Scsi_Host *host)
{
 struct bfad_im_port_pointer *im_portp = shost_priv(host);
 return im_portp->p;
}
