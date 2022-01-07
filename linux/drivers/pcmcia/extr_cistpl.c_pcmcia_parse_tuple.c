
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_21__ {scalar_t__ TupleDataLen; scalar_t__ TupleDataMax; int TupleCode; } ;
typedef TYPE_1__ tuple_t ;
struct TYPE_22__ {int format; int org; int vers_2; int device_geo; int cftable_entry; int config; int funce; int funcid; int manfid; int jedec; int altstr; int version_1; int longlink_mfc; int longlink; int checksum; int device; } ;
typedef TYPE_2__ cisparse_t ;
 int EINVAL ;
 int parse_altstr (TYPE_1__*,int *) ;
 int parse_cftable_entry (TYPE_1__*,int *) ;
 int parse_checksum (TYPE_1__*,int *) ;
 int parse_config (TYPE_1__*,int *) ;
 int parse_device (TYPE_1__*,int *) ;
 int parse_device_geo (TYPE_1__*,int *) ;
 int parse_format (TYPE_1__*,int *) ;
 int parse_funce (TYPE_1__*,int *) ;
 int parse_funcid (TYPE_1__*,int *) ;
 int parse_jedec (TYPE_1__*,int *) ;
 int parse_longlink (TYPE_1__*,int *) ;
 int parse_longlink_mfc (TYPE_1__*,int *) ;
 int parse_manfid (TYPE_1__*,int *) ;
 int parse_org (TYPE_1__*,int *) ;
 int parse_vers_1 (TYPE_1__*,int *) ;
 int parse_vers_2 (TYPE_1__*,int *) ;
 int pr_debug (char*,int) ;

int pcmcia_parse_tuple(tuple_t *tuple, cisparse_t *parse)
{
 int ret = 0;

 if (tuple->TupleDataLen > tuple->TupleDataMax)
  return -EINVAL;
 switch (tuple->TupleCode) {
 case 146:
 case 145:
  ret = parse_device(tuple, &parse->device);
  break;
 case 148:
  ret = parse_checksum(tuple, &parse->checksum);
  break;
 case 135:
 case 134:
  ret = parse_longlink(tuple, &parse->longlink);
  break;
 case 133:
  ret = parse_longlink_mfc(tuple, &parse->longlink_mfc);
  break;
 case 129:
  ret = parse_vers_1(tuple, &parse->version_1);
  break;
 case 150:
  ret = parse_altstr(tuple, &parse->altstr);
  break;
 case 138:
 case 137:
  ret = parse_jedec(tuple, &parse->jedec);
  break;
 case 132:
  ret = parse_manfid(tuple, &parse->manfid);
  break;
 case 139:
  ret = parse_funcid(tuple, &parse->funcid);
  break;
 case 140:
  ret = parse_funce(tuple, &parse->funce);
  break;
 case 147:
  ret = parse_config(tuple, &parse->config);
  break;
 case 149:
  ret = parse_cftable_entry(tuple, &parse->cftable_entry);
  break;
 case 144:
 case 143:
  ret = parse_device_geo(tuple, &parse->device_geo);
  break;
 case 128:
  ret = parse_vers_2(tuple, &parse->vers_2);
  break;
 case 130:
  ret = parse_org(tuple, &parse->org);
  break;
 case 142:
 case 141:
  ret = parse_format(tuple, &parse->format);
  break;
 case 131:
 case 136:
  ret = 0;
  break;
 default:
  ret = -EINVAL;
  break;
 }
 if (ret)
  pr_debug("parse_tuple failed %d\n", ret);
 return ret;
}
