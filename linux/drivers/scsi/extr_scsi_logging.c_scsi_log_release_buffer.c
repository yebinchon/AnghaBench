
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree (char*) ;

__attribute__((used)) static void scsi_log_release_buffer(char *bufptr)
{
 kfree(bufptr);
}
