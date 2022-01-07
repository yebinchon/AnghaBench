
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *tty_type_name(int tty_type)
{
 static char *channel_names[] = {
  "modem",
  "monitor",
  "RAS-raw"
 };

 return channel_names[tty_type];
}
