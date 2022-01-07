
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int dbf ;


 int CHSC_LOG (int ,char*) ;
 int CHSC_LOG_HEX (int ,void*,int) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void chsc_log_command(void *chsc_area)
{
 char dbf[10];

 snprintf(dbf, sizeof(dbf), "CHSC:%x", ((uint16_t *)chsc_area)[1]);
 CHSC_LOG(0, dbf);
 CHSC_LOG_HEX(0, chsc_area, 32);
}
