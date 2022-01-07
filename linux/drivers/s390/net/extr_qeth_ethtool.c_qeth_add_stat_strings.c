
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qeth_stats {int name; } ;


 int ETH_GSTRING_LEN ;
 int snprintf (int *,int ,char*,char const*,int ) ;

__attribute__((used)) static void qeth_add_stat_strings(u8 **data, const char *prefix,
      const struct qeth_stats stats[],
      unsigned int size)
{
 unsigned int i;

 for (i = 0; i < size; i++) {
  snprintf(*data, ETH_GSTRING_LEN, "%s%s", prefix, stats[i].name);
  *data += ETH_GSTRING_LEN;
 }
}
