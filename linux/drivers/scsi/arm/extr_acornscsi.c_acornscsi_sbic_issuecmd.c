
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AS_Host ;


 int ASR_CIP ;
 int SBIC_CMND ;
 scalar_t__ acornscsi_sbic_wait (int *,int ,int ,int,char*) ;
 int sbic_arm_write (int *,int ,int) ;

__attribute__((used)) static
int acornscsi_sbic_issuecmd(AS_Host *host, int command)
{
    if (acornscsi_sbic_wait(host, ASR_CIP, 0, 1000, "issuing command"))
 return -1;

    sbic_arm_write(host, SBIC_CMND, command);

    return 0;
}
