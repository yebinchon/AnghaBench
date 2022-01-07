
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AS_Host ;


 int SBIC_TRANSCNTH ;
 int sbic_arm_read (int *,int ) ;
 unsigned long sbic_arm_readnext (int *) ;

__attribute__((used)) static
unsigned long acornscsi_sbic_xfcount(AS_Host *host)
{
    unsigned long length;

    length = sbic_arm_read(host, SBIC_TRANSCNTH) << 16;
    length |= sbic_arm_readnext(host) << 8;
    length |= sbic_arm_readnext(host);

    return length;
}
