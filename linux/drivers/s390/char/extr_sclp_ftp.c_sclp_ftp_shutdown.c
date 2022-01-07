
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sclp_ftp_event ;
 int sclp_unregister (int *) ;

void sclp_ftp_shutdown(void)
{
 sclp_unregister(&sclp_ftp_event);
}
