
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct TYPE_3__ {int name; } ;
struct kobj_attribute {TYPE_1__ attr; } ;
typedef size_t ssize_t ;
struct TYPE_4__ {int spinlock; } ;


 size_t ENOMEM ;
 int GFP_ATOMIC ;
 int MAX_DESC_LEN ;
 int isdigit (char) ;
 int kfree (char*) ;
 char* kmalloc (size_t,int ) ;
 int report_char_chartab_status (int,int,int,int,int) ;
 unsigned long simple_strtoul (char*,char**,int) ;
 TYPE_2__ speakup_info ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 char** spk_characters ;
 int* spk_chartab ;
 int spk_chartab_get_value (char*) ;
 char** spk_default_chars ;
 int spk_reset_default_chars () ;
 int spk_reset_default_chartab () ;
 char* strchr (char*,char) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static ssize_t chars_chartab_store(struct kobject *kobj,
       struct kobj_attribute *attr,
       const char *buf, size_t count)
{
 char *cp = (char *)buf;
 char *end = cp + count;
 char *linefeed = ((void*)0);
 char keyword[MAX_DESC_LEN + 1];
 char *outptr = ((void*)0);
 char *temp = ((void*)0);
 char *desc = ((void*)0);
 ssize_t retval = count;
 unsigned long flags;
 unsigned long index = 0;
 int charclass = 0;
 int received = 0;
 int used = 0;
 int rejected = 0;
 int reset = 0;
 int do_characters = !strcmp(attr->attr.name, "characters");
 size_t desc_length = 0;
 int i;

 spin_lock_irqsave(&speakup_info.spinlock, flags);
 while (cp < end) {
  while ((cp < end) && (*cp == ' ' || *cp == '\t'))
   cp++;

  if (cp == end)
   break;
  if ((*cp == '\n') || strchr("dDrR", *cp)) {
   reset = 1;
   break;
  }
  received++;

  linefeed = strchr(cp, '\n');
  if (!linefeed) {
   rejected++;
   break;
  }

  if (!isdigit(*cp)) {
   rejected++;
   cp = linefeed + 1;
   continue;
  }





  index = simple_strtoul(cp, &temp, 10);
  if (index > 255) {
   rejected++;
   cp = linefeed + 1;
   continue;
  }

  while ((temp < linefeed) && (*temp == ' ' || *temp == '\t'))
   temp++;

  desc_length = linefeed - temp;
  if (desc_length > MAX_DESC_LEN) {
   rejected++;
   cp = linefeed + 1;
   continue;
  }
  if (do_characters) {
   desc = kmalloc(desc_length + 1, GFP_ATOMIC);
   if (!desc) {
    retval = -ENOMEM;
    reset = 1;
    break;
   }
   outptr = desc;
  } else {
   outptr = keyword;
  }

  for (i = 0; i < desc_length; i++)
   outptr[i] = temp[i];
  outptr[desc_length] = '\0';

  if (do_characters) {
   if (spk_characters[index] != spk_default_chars[index])
    kfree(spk_characters[index]);
   spk_characters[index] = desc;
   used++;
  } else {
   charclass = spk_chartab_get_value(keyword);
   if (charclass == 0) {
    rejected++;
    cp = linefeed + 1;
    continue;
   }
   if (charclass != spk_chartab[index]) {
    spk_chartab[index] = charclass;
    used++;
   }
  }
  cp = linefeed + 1;
 }

 if (reset) {
  if (do_characters)
   spk_reset_default_chars();
  else
   spk_reset_default_chartab();
 }

 spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 report_char_chartab_status(reset, received, used, rejected,
       do_characters);
 return retval;
}
