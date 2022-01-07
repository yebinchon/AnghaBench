
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isi_port {scalar_t__ magic; } ;


 scalar_t__ ISICOM_MAGIC ;
 int pr_warn (char*,char*,char const*) ;

__attribute__((used)) static inline int __isicom_paranoia_check(struct isi_port const *port,
 char *name, const char *routine)
{
 if (!port) {
  pr_warn("Warning: bad isicom magic for dev %s in %s\n",
   name, routine);
  return 1;
 }
 if (port->magic != ISICOM_MAGIC) {
  pr_warn("Warning: NULL isicom port for dev %s in %s\n",
   name, routine);
  return 1;
 }

 return 0;
}
