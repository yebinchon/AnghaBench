
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ EXTRACT_BIT_SET (int ,char) ;
 scalar_t__ MDP_HDR_LEN ;
 int PMS_FIFONO ;
 scalar_t__ PMS_FIFONO_MDP ;
 int PMS_TELID ;
 scalar_t__ PMS_TELID_UNSEGM_MAMAC ;

__attribute__((used)) static inline bool pms_is_mamac(char *buf, u32 len)
{
 return (len > MDP_HDR_LEN &&
  EXTRACT_BIT_SET(PMS_FIFONO, buf[3]) == PMS_FIFONO_MDP &&
  EXTRACT_BIT_SET(PMS_TELID, buf[14]) == PMS_TELID_UNSEGM_MAMAC);
}
