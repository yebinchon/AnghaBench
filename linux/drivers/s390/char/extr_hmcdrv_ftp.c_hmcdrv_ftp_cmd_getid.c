
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum hmcdrv_ftp_cmdid { ____Placeholder_hmcdrv_ftp_cmdid } hmcdrv_ftp_cmdid ;


 int ARRAY_SIZE (struct hmcdrv_ftp_cmd_desc const*) ;





 int HMCDRV_FTP_NOOP ;

 int crc16 (int,int,int) ;
 int pr_debug (char*,...) ;
 scalar_t__ strncmp (char*,int,int) ;

__attribute__((used)) static enum hmcdrv_ftp_cmdid hmcdrv_ftp_cmd_getid(const char *cmd, int len)
{

 struct hmcdrv_ftp_cmd_desc {
  const char *str;
  enum hmcdrv_ftp_cmdid cmd;
 };
 static const struct hmcdrv_ftp_cmd_desc ftpcmds[7] = {

  {.str = "get",
   .cmd = 130},
  {.str = "dir",
   .cmd = 131},
  {.str = "delete",
   .cmd = 132},
  {.str = "nls",
   .cmd = 129},
  {.str = "put",
   .cmd = 128},
  {.str = "append",
   .cmd = 133},
  {.str = ((void*)0)}
 };

 const struct hmcdrv_ftp_cmd_desc *pdesc;

 u16 crc = 0xffffU;

 if (len == 0)
  return HMCDRV_FTP_NOOP;

 crc = crc16(crc, cmd, len);
 pdesc = ftpcmds + (crc % ARRAY_SIZE(ftpcmds));
 pr_debug("FTP command '%s' has CRC 0x%04x, at table pos. %lu\n",
   cmd, crc, (crc % ARRAY_SIZE(ftpcmds)));

 if (!pdesc->str || strncmp(pdesc->str, cmd, len))
  return HMCDRV_FTP_NOOP;

 pr_debug("FTP command '%s' found, with ID %d\n",
   pdesc->str, pdesc->cmd);

 return pdesc->cmd;
}
