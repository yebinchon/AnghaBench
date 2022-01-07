
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SURFACE3_LID_GUID ;
 int s3_wmi_query_block (int ,int ,int*) ;

__attribute__((used)) static inline int s3_wmi_query_lid(int *ret)
{
 return s3_wmi_query_block(SURFACE3_LID_GUID, 0, ret);
}
