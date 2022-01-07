
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
struct afu_cmd {int dummy; } ;


 int memset (struct afu_cmd*,int ,int) ;
 struct afu_cmd* sc_to_afuc (struct scsi_cmnd*) ;
 struct afu_cmd* sc_to_afuci (struct scsi_cmnd*) ;

__attribute__((used)) static inline struct afu_cmd *sc_to_afucz(struct scsi_cmnd *sc)
{
 struct afu_cmd *afuc = sc_to_afuc(sc);

 memset(afuc, 0, sizeof(*afuc));
 return sc_to_afuci(sc);
}
