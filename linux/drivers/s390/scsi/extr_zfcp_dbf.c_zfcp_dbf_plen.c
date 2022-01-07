
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_dbf_pay {int dummy; } ;


 unsigned int ZFCP_DBF_PAY_MAX_REC ;

__attribute__((used)) static inline unsigned int zfcp_dbf_plen(unsigned int offset)
{
 return sizeof(struct zfcp_dbf_pay) + offset - ZFCP_DBF_PAY_MAX_REC;
}
