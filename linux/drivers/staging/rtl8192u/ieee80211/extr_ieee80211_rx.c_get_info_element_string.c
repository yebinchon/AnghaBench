
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int CF_SET ;
 int CHALLENGE ;
 int COUNTRY ;
 int CSA ;
 int DS_SET ;
 int FH_SET ;
 int GENERIC ;
 int HOP_PARAMS ;
 int HOP_TABLE ;
 int IBSS_DFS ;
 int IBSS_SET ;
 int MEASURE_REPORT ;
 int MEASURE_REQUEST ;
 int MFIE_STRING (int ) ;
 int POWER_CAPABILITY ;
 int POWER_CONSTRAINT ;
 int QOS_PARAMETER ;
 int QUIET ;
 int RATES ;
 int RATES_EX ;
 int REQUEST ;
 int RSN ;
 int SSID ;
 int SUPP_CHANNELS ;
 int TIM ;
 int TPC_REPORT ;
 int TPC_REQUEST ;

__attribute__((used)) static const char *get_info_element_string(u16 id)
{
 switch (id) {
  MFIE_STRING(SSID);
  MFIE_STRING(RATES);
  MFIE_STRING(FH_SET);
  MFIE_STRING(DS_SET);
  MFIE_STRING(CF_SET);
  MFIE_STRING(TIM);
  MFIE_STRING(IBSS_SET);
  MFIE_STRING(COUNTRY);
  MFIE_STRING(HOP_PARAMS);
  MFIE_STRING(HOP_TABLE);
  MFIE_STRING(REQUEST);
  MFIE_STRING(CHALLENGE);
  MFIE_STRING(POWER_CONSTRAINT);
  MFIE_STRING(POWER_CAPABILITY);
  MFIE_STRING(TPC_REQUEST);
  MFIE_STRING(TPC_REPORT);
  MFIE_STRING(SUPP_CHANNELS);
  MFIE_STRING(CSA);
  MFIE_STRING(MEASURE_REQUEST);
  MFIE_STRING(MEASURE_REPORT);
  MFIE_STRING(QUIET);
  MFIE_STRING(IBSS_DFS);

  MFIE_STRING(RSN);
  MFIE_STRING(RATES_EX);
  MFIE_STRING(GENERIC);
  MFIE_STRING(QOS_PARAMETER);
 default:
  return "UNKNOWN";
 }
}
