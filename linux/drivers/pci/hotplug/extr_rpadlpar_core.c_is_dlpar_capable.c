
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RTAS_UNKNOWN_SERVICE ;
 int rtas_token (char*) ;

__attribute__((used)) static inline int is_dlpar_capable(void)
{
 int rc = rtas_token("ibm,configure-connector");

 return (int) (rc != RTAS_UNKNOWN_SERVICE);
}
