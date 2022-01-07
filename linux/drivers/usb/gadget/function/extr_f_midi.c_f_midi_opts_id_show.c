
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f_midi_opts {int lock; scalar_t__ id; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strlcpy (char*,scalar_t__,int ) ;
 struct f_midi_opts* to_f_midi_opts (struct config_item*) ;

__attribute__((used)) static ssize_t f_midi_opts_id_show(struct config_item *item, char *page)
{
 struct f_midi_opts *opts = to_f_midi_opts(item);
 int result;

 mutex_lock(&opts->lock);
 if (opts->id) {
  result = strlcpy(page, opts->id, PAGE_SIZE);
 } else {
  page[0] = 0;
  result = 0;
 }

 mutex_unlock(&opts->lock);

 return result;
}
