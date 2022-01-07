
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_info {int dummy; } ;
typedef struct debug_info debug_info_t ;


 int dbflevel ;
 int debug_hex_ascii_view ;
 struct debug_info* debug_register (char const*,int,int,int) ;
 int debug_register_view (struct debug_info*,int *) ;
 int debug_set_level (struct debug_info*,int ) ;

__attribute__((used)) static debug_info_t *zfcp_dbf_reg(const char *name, int size, int rec_size)
{
 struct debug_info *d;

 d = debug_register(name, size, 1, rec_size);
 if (!d)
  return ((void*)0);

 debug_register_view(d, &debug_hex_ascii_view);
 debug_set_level(d, dbflevel);

 return d;
}
