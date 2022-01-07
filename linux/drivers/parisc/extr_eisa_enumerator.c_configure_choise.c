
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int8_t ;


 void* get_8 (unsigned char const*) ;

__attribute__((used)) static int configure_choise(const unsigned char *buf, u_int8_t *info)
{
 int len;





 len = get_8(buf);
 *info=get_8(buf+len+1);

 return len+2;
}
