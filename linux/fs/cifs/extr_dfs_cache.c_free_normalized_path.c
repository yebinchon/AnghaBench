
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree (char*) ;

__attribute__((used)) static inline void free_normalized_path(const char *path, char *npath)
{
 if (path != npath)
  kfree(npath);
}
