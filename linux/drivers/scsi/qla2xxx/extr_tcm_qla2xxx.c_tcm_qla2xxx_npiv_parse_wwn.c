
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int EINVAL ;
 int tcm_qla2xxx_npiv_extract_wwn (char const*,scalar_t__*) ;

__attribute__((used)) static int tcm_qla2xxx_npiv_parse_wwn(
 const char *name,
 size_t count,
 u64 *wwpn,
 u64 *wwnn)
{
 unsigned int cnt = count;
 int rc;

 *wwpn = 0;
 *wwnn = 0;


 if (name[cnt-1] == '\n' || name[cnt-1] == 0)
  cnt--;


 if ((cnt != (16+1+16)) || (name[16] != ':'))
  return -EINVAL;

 rc = tcm_qla2xxx_npiv_extract_wwn(&name[0], wwpn);
 if (rc != 0)
  return rc;

 rc = tcm_qla2xxx_npiv_extract_wwn(&name[17], wwnn);
 if (rc != 0)
  return rc;

 return 0;
}
