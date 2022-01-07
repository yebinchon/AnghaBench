
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum sdw_command_response { ____Placeholder_sdw_command_response } sdw_command_response ;


 int EIO ;
 int ENODATA ;
 int ETIMEDOUT ;




__attribute__((used)) static inline int find_response_code(enum sdw_command_response resp)
{
 switch (resp) {
 case 129:
  return 0;

 case 130:
  return -ENODATA;

 case 128:
  return -ETIMEDOUT;

 default:
  return -EIO;
 }
}
