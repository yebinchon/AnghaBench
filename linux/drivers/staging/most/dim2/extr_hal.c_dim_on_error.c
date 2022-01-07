
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int dimcb_on_error (int ,char const*) ;

__attribute__((used)) static inline bool dim_on_error(u8 error_id, const char *error_message)
{
 dimcb_on_error(error_id, error_message);
 return 0;
}
