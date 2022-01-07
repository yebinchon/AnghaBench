
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct xlr_net_priv {void* class_3_spill; void* class_2_spill; void* class_1_spill; void* class_0_spill; void* frout_spill; void* frin_spill; } ;


 int MAX_CLASS_0_SPILL ;
 int MAX_CLASS_1_SPILL ;
 int MAX_CLASS_2_SPILL ;
 int MAX_CLASS_3_SPILL ;
 int MAX_FRIN_SPILL ;
 int MAX_FROUT_SPILL ;
 int R_CLASS0_SPILL_MEM_SIZE ;
 int R_CLASS0_SPILL_MEM_START_0 ;
 int R_CLASS0_SPILL_MEM_START_1 ;
 int R_CLASS1_SPILL_MEM_SIZE ;
 int R_CLASS1_SPILL_MEM_START_0 ;
 int R_CLASS1_SPILL_MEM_START_1 ;
 int R_CLASS2_SPILL_MEM_SIZE ;
 int R_CLASS2_SPILL_MEM_START_0 ;
 int R_CLASS2_SPILL_MEM_START_1 ;
 int R_CLASS3_SPILL_MEM_SIZE ;
 int R_CLASS3_SPILL_MEM_START_0 ;
 int R_CLASS3_SPILL_MEM_START_1 ;
 int R_FROUT_SPILL_MEM_SIZE ;
 int R_FROUT_SPILL_MEM_START_0 ;
 int R_FROUT_SPILL_MEM_START_1 ;
 int R_REG_FRIN_SPILL_MEM_SIZE ;
 int R_REG_FRIN_SPILL_MEM_START_0 ;
 int R_REG_FRIN_SPILL_MEM_START_1 ;
 void* xlr_config_spill (struct xlr_net_priv*,int ,int ,int ,int) ;

__attribute__((used)) static void xlr_config_fifo_spill_area(struct xlr_net_priv *priv)
{
 priv->frin_spill = xlr_config_spill(priv,
         R_REG_FRIN_SPILL_MEM_START_0,
         R_REG_FRIN_SPILL_MEM_START_1,
         R_REG_FRIN_SPILL_MEM_SIZE,
         MAX_FRIN_SPILL * sizeof(u64));
 priv->frout_spill = xlr_config_spill(priv,
          R_FROUT_SPILL_MEM_START_0,
          R_FROUT_SPILL_MEM_START_1,
          R_FROUT_SPILL_MEM_SIZE,
          MAX_FROUT_SPILL * sizeof(u64));
 priv->class_0_spill = xlr_config_spill(priv,
            R_CLASS0_SPILL_MEM_START_0,
            R_CLASS0_SPILL_MEM_START_1,
            R_CLASS0_SPILL_MEM_SIZE,
            MAX_CLASS_0_SPILL * sizeof(u64));
 priv->class_1_spill = xlr_config_spill(priv,
            R_CLASS1_SPILL_MEM_START_0,
            R_CLASS1_SPILL_MEM_START_1,
            R_CLASS1_SPILL_MEM_SIZE,
            MAX_CLASS_1_SPILL * sizeof(u64));
 priv->class_2_spill = xlr_config_spill(priv,
            R_CLASS2_SPILL_MEM_START_0,
            R_CLASS2_SPILL_MEM_START_1,
            R_CLASS2_SPILL_MEM_SIZE,
            MAX_CLASS_2_SPILL * sizeof(u64));
 priv->class_3_spill = xlr_config_spill(priv,
            R_CLASS3_SPILL_MEM_START_0,
            R_CLASS3_SPILL_MEM_START_1,
            R_CLASS3_SPILL_MEM_SIZE,
            MAX_CLASS_3_SPILL * sizeof(u64));
}
