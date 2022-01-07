
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int flags; } ;


 int AF_LINK_UP ;
 int AF_LOOPBACK ;
 int AF_ONLINE ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline int adapter_up(struct scsi_qla_host *ha)
{
 return (test_bit(AF_ONLINE, &ha->flags) != 0) &&
        (test_bit(AF_LINK_UP, &ha->flags) != 0) &&
        (!test_bit(AF_LOOPBACK, &ha->flags));
}
