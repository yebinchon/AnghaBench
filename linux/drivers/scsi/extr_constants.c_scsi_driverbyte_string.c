
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (char**) ;
 int driver_byte (int) ;
 char** driverbyte_table ;

const char *scsi_driverbyte_string(int result)
{
 const char *db_string = ((void*)0);
 int db = driver_byte(result);

 if (db < ARRAY_SIZE(driverbyte_table))
  db_string = driverbyte_table[db];
 return db_string;
}
