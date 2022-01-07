
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ctlx_state { ____Placeholder_ctlx_state } ctlx_state ;



__attribute__((used)) static inline const char *ctlxstr(enum ctlx_state s)
{
 static const char * const ctlx_str[] = {
  "Initial state",
  "Complete",
  "Request failed",
  "Request pending",
  "Request packet submitted",
  "Request packet completed",
  "Response packet completed"
 };

 return ctlx_str[s];
}
