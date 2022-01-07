
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;



int proc_get_write_reg(char *page, char **start,
     off_t offset, int count,
     int *eof, void *data)
{
 *eof = 1;
 return 0;
}
