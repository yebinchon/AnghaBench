
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _FAIL ;
 int _SUCCESS ;

inline int RTW_STATUS_CODE(int error_code)
{
 if (error_code >= 0)
  return _SUCCESS;
 return _FAIL;
}
