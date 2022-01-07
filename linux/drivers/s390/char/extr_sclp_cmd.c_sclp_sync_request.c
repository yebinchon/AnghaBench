
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sclp_cmdw_t ;


 int sclp_sync_request_timeout (int ,void*,int ) ;

int sclp_sync_request(sclp_cmdw_t cmd, void *sccb)
{
 return sclp_sync_request_timeout(cmd, sccb, 0);
}
