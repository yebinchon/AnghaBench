
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum zpci_state { ____Placeholder_zpci_state } zpci_state ;


 int ZPCI_FN_STATE_CONFIGURED ;
 int ZPCI_FN_STATE_ONLINE ;

__attribute__((used)) static int zpci_fn_configured(enum zpci_state state)
{
 return state == ZPCI_FN_STATE_CONFIGURED ||
        state == ZPCI_FN_STATE_ONLINE;
}
