
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rio_channel {int id; } ;


 int CHOP ;
 scalar_t__ IS_ERR (struct rio_channel*) ;
 int PTR_ERR (struct rio_channel*) ;
 struct rio_channel* riocm_ch_alloc (int ) ;
 int riocm_debug (int ,char*,int ,int ) ;

__attribute__((used)) static struct rio_channel *riocm_ch_create(u16 *ch_num)
{
 struct rio_channel *ch = ((void*)0);

 ch = riocm_ch_alloc(*ch_num);

 if (IS_ERR(ch))
  riocm_debug(CHOP, "Failed to allocate channel %d (err=%ld)",
       *ch_num, PTR_ERR(ch));
 else
  *ch_num = ch->id;

 return ch;
}
