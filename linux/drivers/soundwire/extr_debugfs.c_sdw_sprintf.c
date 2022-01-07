
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_slave {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ RD_BUF ;
 int scnprintf (char*,scalar_t__,char*,unsigned int,...) ;
 int sdw_read (struct sdw_slave*,unsigned int) ;

__attribute__((used)) static ssize_t sdw_sprintf(struct sdw_slave *slave,
      char *buf, size_t pos, unsigned int reg)
{
 int value;

 value = sdw_read(slave, reg);

 if (value < 0)
  return scnprintf(buf + pos, RD_BUF - pos, "%3x\tXX\n", reg);
 else
  return scnprintf(buf + pos, RD_BUF - pos,
    "%3x\t%2x\n", reg, value);
}
