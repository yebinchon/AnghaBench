
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct rom_cmd {scalar_t__ cmd; } ;


 int ARRAY_SIZE (struct rom_cmd*) ;
 struct rom_cmd* rom_cmds ;

__attribute__((used)) static int is_rom_cmd(uint16_t cmd)
{
 int i;
 struct rom_cmd *wc;

 for (i = 0; i < ARRAY_SIZE(rom_cmds); i++) {
  wc = rom_cmds + i;
  if (wc->cmd == cmd)
   return 1;
 }

 return 0;
}
