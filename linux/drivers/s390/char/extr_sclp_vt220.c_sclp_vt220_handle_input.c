
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sclp_vt220_port ;
 int tty_insert_flip_string (int *,char const*,unsigned int) ;

__attribute__((used)) static void sclp_vt220_handle_input(const char *buffer, unsigned int count)
{
 tty_insert_flip_string(&sclp_vt220_port, buffer, count);
}
