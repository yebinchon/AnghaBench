
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hal_com_data {void* Regulation5G; void* Regulation2_4G; } ;
struct adapter {int dummy; } ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 void* TXPWR_LMT_ETSI ;
 void* TXPWR_LMT_FCC ;
 void* TXPWR_LMT_MKK ;
 void* TXPWR_LMT_WW ;

void Hal_ChannelPlanToRegulation(struct adapter *Adapter, u16 ChannelPlan)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 pHalData->Regulation2_4G = TXPWR_LMT_WW;
 pHalData->Regulation5G = TXPWR_LMT_WW;

 switch (ChannelPlan) {
 case 128:
  pHalData->Regulation2_4G = TXPWR_LMT_WW;
  break;
 case 165:
  pHalData->Regulation2_4G = TXPWR_LMT_ETSI;
  break;
 case 153:
  pHalData->Regulation2_4G = TXPWR_LMT_FCC;
  break;
 case 148:
  pHalData->Regulation2_4G = TXPWR_LMT_MKK;
  break;
 case 164:
  pHalData->Regulation2_4G = TXPWR_LMT_ETSI;
  break;
 case 163:
  pHalData->Regulation2_4G = TXPWR_LMT_FCC;
  pHalData->Regulation5G = TXPWR_LMT_FCC;
  break;
 case 146:
  pHalData->Regulation2_4G = TXPWR_LMT_FCC;
  pHalData->Regulation5G = TXPWR_LMT_ETSI;
  break;
 case 151:
  pHalData->Regulation2_4G = TXPWR_LMT_MKK;
  pHalData->Regulation5G = TXPWR_LMT_MKK;
  break;
 case 129:
  pHalData->Regulation2_4G = TXPWR_LMT_FCC;
  pHalData->Regulation5G = TXPWR_LMT_MKK;
  break;
 case 134:
  pHalData->Regulation2_4G = TXPWR_LMT_FCC;
  pHalData->Regulation5G = TXPWR_LMT_FCC;
  break;
 case 133:
  pHalData->Regulation2_4G = TXPWR_LMT_FCC;
  pHalData->Regulation5G = TXPWR_LMT_FCC;
  break;
 case 132:
  pHalData->Regulation2_4G = TXPWR_LMT_FCC;
  pHalData->Regulation5G = TXPWR_LMT_FCC;
  break;
 case 131:
  pHalData->Regulation2_4G = TXPWR_LMT_FCC;
  pHalData->Regulation5G = TXPWR_LMT_FCC;
  break;
 case 130:
  pHalData->Regulation2_4G = TXPWR_LMT_FCC;
  pHalData->Regulation5G = TXPWR_LMT_FCC;
  break;
 case 160:
  pHalData->Regulation2_4G = TXPWR_LMT_FCC;
  pHalData->Regulation5G = TXPWR_LMT_FCC;
  break;
 case 141:
  pHalData->Regulation2_4G = TXPWR_LMT_FCC;
  pHalData->Regulation5G = TXPWR_LMT_FCC;
  break;
 case 140:
  pHalData->Regulation2_4G = TXPWR_LMT_FCC;
  pHalData->Regulation5G = TXPWR_LMT_FCC;
  break;
 case 150:
  pHalData->Regulation2_4G = TXPWR_LMT_MKK;
  pHalData->Regulation5G = TXPWR_LMT_FCC;
  break;
 case 149:
  pHalData->Regulation2_4G = TXPWR_LMT_MKK;
  pHalData->Regulation5G = TXPWR_LMT_FCC;
  break;
 case 157:
  pHalData->Regulation2_4G = TXPWR_LMT_FCC;
  pHalData->Regulation5G = TXPWR_LMT_FCC;
  break;
 case 156:
  pHalData->Regulation2_4G = TXPWR_LMT_FCC;
  pHalData->Regulation5G = TXPWR_LMT_FCC;
  break;
 case 152:
  pHalData->Regulation2_4G = TXPWR_LMT_WW;
  pHalData->Regulation5G = TXPWR_LMT_WW;
  break;
 case 166:
  pHalData->Regulation2_4G = TXPWR_LMT_ETSI;
  pHalData->Regulation5G = TXPWR_LMT_ETSI;
  break;
 case 161:
  pHalData->Regulation2_4G = TXPWR_LMT_FCC;
  pHalData->Regulation5G = TXPWR_LMT_FCC;
  break;
 case 155:
  pHalData->Regulation2_4G = TXPWR_LMT_FCC;
  pHalData->Regulation5G = TXPWR_LMT_FCC;
  break;
 case 139:
  pHalData->Regulation2_4G = TXPWR_LMT_ETSI;
  pHalData->Regulation5G = TXPWR_LMT_ETSI;
  break;
 case 159:
  pHalData->Regulation2_4G = TXPWR_LMT_FCC;
  pHalData->Regulation5G = TXPWR_LMT_FCC;
  break;
 case 138:
  pHalData->Regulation2_4G = TXPWR_LMT_ETSI;
  pHalData->Regulation5G = TXPWR_LMT_ETSI;
  break;
 case 137:
  pHalData->Regulation2_4G = TXPWR_LMT_ETSI;
  pHalData->Regulation5G = TXPWR_LMT_ETSI;
  break;
 case 136:
  pHalData->Regulation2_4G = TXPWR_LMT_ETSI;
  pHalData->Regulation5G = TXPWR_LMT_ETSI;
  break;
 case 135:
  pHalData->Regulation2_4G = TXPWR_LMT_ETSI;
  pHalData->Regulation5G = TXPWR_LMT_ETSI;
  break;
 case 145:
  pHalData->Regulation2_4G = TXPWR_LMT_ETSI;
  pHalData->Regulation5G = TXPWR_LMT_ETSI;
  break;
 case 144:
  pHalData->Regulation2_4G = TXPWR_LMT_ETSI;
  pHalData->Regulation5G = TXPWR_LMT_ETSI;
  break;
 case 154:
  pHalData->Regulation2_4G = TXPWR_LMT_FCC;
  pHalData->Regulation5G = TXPWR_LMT_FCC;
  break;
 case 143:
  pHalData->Regulation2_4G = TXPWR_LMT_ETSI;
  pHalData->Regulation5G = TXPWR_LMT_ETSI;
  break;
 case 158:
  pHalData->Regulation2_4G = TXPWR_LMT_FCC;
  pHalData->Regulation5G = TXPWR_LMT_FCC;
  break;
 case 142:
  pHalData->Regulation2_4G = TXPWR_LMT_ETSI;
  pHalData->Regulation5G = TXPWR_LMT_ETSI;
  break;
 case 162:
  pHalData->Regulation2_4G = TXPWR_LMT_FCC;
  pHalData->Regulation5G = TXPWR_LMT_FCC;
  break;
 case 147:
  pHalData->Regulation2_4G = TXPWR_LMT_WW;
  pHalData->Regulation5G = TXPWR_LMT_WW;
  break;
 default:
  break;
 }
}
