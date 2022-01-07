
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_hid {int hdesc; int connection; } ;


 int GB_HID_TYPE_GET_DESC ;
 int gb_operation_sync (int ,int ,int *,int ,int *,int) ;

__attribute__((used)) static int gb_hid_get_desc(struct gb_hid *ghid)
{
 return gb_operation_sync(ghid->connection, GB_HID_TYPE_GET_DESC, ((void*)0),
     0, &ghid->hdesc, sizeof(ghid->hdesc));
}
