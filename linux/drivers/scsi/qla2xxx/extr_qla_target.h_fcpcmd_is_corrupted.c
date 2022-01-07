
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atio {scalar_t__ entry_type; int attr_n_length; } ;


 scalar_t__ ATIO_TYPE7 ;
 int FCP_CMD_LENGTH_MASK ;
 int FCP_CMD_LENGTH_MIN ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline int fcpcmd_is_corrupted(struct atio *atio)
{
 if (atio->entry_type == ATIO_TYPE7 &&
     ((le16_to_cpu(atio->attr_n_length) & FCP_CMD_LENGTH_MASK) <
      FCP_CMD_LENGTH_MIN))
  return 1;
 else
  return 0;
}
