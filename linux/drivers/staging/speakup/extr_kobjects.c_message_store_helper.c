
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_group_t {int start; int end; int name; } ;
typedef size_t ssize_t ;
typedef enum msg_index_t { ____Placeholder_msg_index_t } msg_index_t ;


 size_t ENOMEM ;
 int isdigit (char) ;
 int report_msg_status (int,int,int,int,int ) ;
 unsigned long simple_strtoul (char*,char**,int) ;
 size_t spk_msg_set (int,char*,size_t) ;
 int spk_reset_msg_group (struct msg_group_t*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static ssize_t message_store_helper(const char *buf, size_t count,
        struct msg_group_t *group)
{
 char *cp = (char *)buf;
 char *end = cp + count;
 char *linefeed = ((void*)0);
 char *temp = ((void*)0);
 ssize_t msg_stored = 0;
 ssize_t retval = count;
 size_t desc_length = 0;
 unsigned long index = 0;
 int received = 0;
 int used = 0;
 int rejected = 0;
 int reset = 0;
 enum msg_index_t firstmessage = group->start;
 enum msg_index_t lastmessage = group->end;
 enum msg_index_t curmessage;

 while (cp < end) {
  while ((cp < end) && (*cp == ' ' || *cp == '\t'))
   cp++;

  if (cp == end)
   break;
  if (strchr("dDrR", *cp)) {
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

  while ((temp < linefeed) && (*temp == ' ' || *temp == '\t'))
   temp++;

  desc_length = linefeed - temp;
  curmessage = firstmessage + index;
  if ((curmessage < firstmessage) || (curmessage > lastmessage)) {
   rejected++;
   cp = linefeed + 1;
   continue;
  }

  msg_stored = spk_msg_set(curmessage, temp, desc_length);
  if (msg_stored < 0) {
   retval = msg_stored;
   if (msg_stored == -ENOMEM)
    reset = 1;
   break;
  }

  used++;

  cp = linefeed + 1;
 }

 if (reset)
  spk_reset_msg_group(group);

 report_msg_status(reset, received, used, rejected, group->name);
 return retval;
}
