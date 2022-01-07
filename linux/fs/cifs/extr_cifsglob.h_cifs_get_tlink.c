
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcon_link {int tl_count; } ;


 int IS_ERR (struct tcon_link*) ;
 int atomic_inc (int *) ;

__attribute__((used)) static inline struct tcon_link *
cifs_get_tlink(struct tcon_link *tlink)
{
 if (tlink && !IS_ERR(tlink))
  atomic_inc(&tlink->tl_count);
 return tlink;
}
