
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vnt_private {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int MAX_KEY_TABLE ;
 int MESSAGE_TYPE_CLRKEYENTRY ;
 int vnt_control_out (struct vnt_private*,int ,int ,int ,int ,int*) ;

int vnt_key_init_table(struct vnt_private *priv)
{
 u8 i;
 u8 data[MAX_KEY_TABLE];

 for (i = 0; i < MAX_KEY_TABLE; i++)
  data[i] = i;

 return vnt_control_out(priv, MESSAGE_TYPE_CLRKEYENTRY,
   0, 0, ARRAY_SIZE(data), data);
}
