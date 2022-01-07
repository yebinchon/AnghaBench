
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INIT_INPUT_WMI_0 ;
 int INIT_INPUT_WMI_2 ;
 int INIT_SPARSE_KEYMAP ;
 int WMI_EVENT_GUID0 ;
 int WMI_EVENT_GUID2 ;
 int inited ;
 int input_unregister_device (int ) ;
 int wmi_input_dev ;
 int wmi_remove_notify_handler (int ) ;

__attribute__((used)) static void wmi_input_destroy(void)
{
 if (inited & INIT_INPUT_WMI_2)
  wmi_remove_notify_handler(WMI_EVENT_GUID2);

 if (inited & INIT_INPUT_WMI_0)
  wmi_remove_notify_handler(WMI_EVENT_GUID0);

 if (inited & INIT_SPARSE_KEYMAP)
  input_unregister_device(wmi_input_dev);

 inited &= ~(INIT_INPUT_WMI_0 | INIT_INPUT_WMI_2 | INIT_SPARSE_KEYMAP);
}
