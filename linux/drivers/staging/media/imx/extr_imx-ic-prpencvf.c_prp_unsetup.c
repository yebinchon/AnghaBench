
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prp_priv {int rot_mode; } ;
typedef enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;


 scalar_t__ ipu_rot_mode_is_irt (int ) ;
 int prp_unsetup_norotation (struct prp_priv*) ;
 int prp_unsetup_rotation (struct prp_priv*) ;
 int prp_unsetup_vb2_buf (struct prp_priv*,int) ;

__attribute__((used)) static void prp_unsetup(struct prp_priv *priv,
   enum vb2_buffer_state state)
{
 if (ipu_rot_mode_is_irt(priv->rot_mode))
  prp_unsetup_rotation(priv);
 else
  prp_unsetup_norotation(priv);

 prp_unsetup_vb2_buf(priv, state);
}
