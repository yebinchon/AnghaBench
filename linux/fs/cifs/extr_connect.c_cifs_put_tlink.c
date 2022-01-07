
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcon_link {int tl_time; int tl_flags; int tl_count; } ;


 scalar_t__ IS_ERR (struct tcon_link*) ;
 int TCON_LINK_IN_TREE ;
 int atomic_dec_and_test (int *) ;
 int cifs_put_tcon (struct tcon_link*) ;
 int jiffies ;
 int kfree (struct tcon_link*) ;
 scalar_t__ test_bit (int ,int *) ;
 struct tcon_link* tlink_tcon (struct tcon_link*) ;

void
cifs_put_tlink(struct tcon_link *tlink)
{
 if (!tlink || IS_ERR(tlink))
  return;

 if (!atomic_dec_and_test(&tlink->tl_count) ||
     test_bit(TCON_LINK_IN_TREE, &tlink->tl_flags)) {
  tlink->tl_time = jiffies;
  return;
 }

 if (!IS_ERR(tlink_tcon(tlink)))
  cifs_put_tcon(tlink_tcon(tlink));
 kfree(tlink);
 return;
}
