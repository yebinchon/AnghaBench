
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOPNOTSUPP ;
 void* ERR_PTR (int ) ;

__attribute__((used)) static inline void *erofs_get_pcpubuf(unsigned int pagenr)
{
 return ERR_PTR(-EOPNOTSUPP);
}
