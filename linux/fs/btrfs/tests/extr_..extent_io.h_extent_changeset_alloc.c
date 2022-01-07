
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_changeset {int dummy; } ;


 int GFP_KERNEL ;
 int extent_changeset_init (struct extent_changeset*) ;
 struct extent_changeset* kmalloc (int,int ) ;

__attribute__((used)) static inline struct extent_changeset *extent_changeset_alloc(void)
{
 struct extent_changeset *ret;

 ret = kmalloc(sizeof(*ret), GFP_KERNEL);
 if (!ret)
  return ((void*)0);

 extent_changeset_init(ret);
 return ret;
}
