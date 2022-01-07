; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_dm.c_rtl8723be_dm_false_alarm_counter_statistics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_dm.c_rtl8723be_dm_false_alarm_counter_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.false_alarm_statistics }
%struct.false_alarm_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DM_REG_OFDM_FA_HOLDC_11N = common dso_local global i32 0, align 4
@DM_REG_OFDM_FA_RSTD_11N = common dso_local global i32 0, align 4
@DM_REG_OFDM_FA_TYPE1_11N = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@DM_REG_OFDM_FA_TYPE2_11N = common dso_local global i32 0, align 4
@DM_REG_OFDM_FA_TYPE3_11N = common dso_local global i32 0, align 4
@DM_REG_OFDM_FA_TYPE4_11N = common dso_local global i32 0, align 4
@DM_REG_CCK_FA_RST_11N = common dso_local global i32 0, align 4
@MASKBYTE0 = common dso_local global i32 0, align 4
@DM_REG_CCK_FA_MSB_11N = common dso_local global i32 0, align 4
@MASKBYTE3 = common dso_local global i32 0, align 4
@DM_REG_CCK_CCA_CNT_11N = common dso_local global i32 0, align 4
@DM_REG_OFDM_FA_RSTC_11N = common dso_local global i32 0, align 4
@COMP_DIG = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"cnt_parity_fail = %d, cnt_rate_illegal = %d, cnt_crc8_fail = %d, cnt_mcs_fail = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"cnt_ofdm_fail = %x, cnt_cck_fail = %x, cnt_all = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8723be_dm_false_alarm_counter_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723be_dm_false_alarm_counter_statistics(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.false_alarm_statistics*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %4, align 8
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %9 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %8, i32 0, i32 0
  store %struct.false_alarm_statistics* %9, %struct.false_alarm_statistics** %5, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = load i32, i32* @DM_REG_OFDM_FA_HOLDC_11N, align 4
  %12 = call i32 @BIT(i32 31)
  %13 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %10, i32 %11, i32 %12, i32 1)
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %15 = load i32, i32* @DM_REG_OFDM_FA_RSTD_11N, align 4
  %16 = call i32 @BIT(i32 31)
  %17 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %14, i32 %15, i32 %16, i32 1)
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %19 = load i32, i32* @DM_REG_OFDM_FA_TYPE1_11N, align 4
  %20 = load i32, i32* @MASKDWORD, align 4
  %21 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %18, i32 %19, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, 65535
  %24 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %25 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, -65536
  %28 = lshr i32 %27, 16
  %29 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %30 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %32 = load i32, i32* @DM_REG_OFDM_FA_TYPE2_11N, align 4
  %33 = load i32, i32* @MASKDWORD, align 4
  %34 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %31, i32 %32, i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, 65535
  %37 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %38 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, -65536
  %41 = lshr i32 %40, 16
  %42 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %43 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %45 = load i32, i32* @DM_REG_OFDM_FA_TYPE3_11N, align 4
  %46 = load i32, i32* @MASKDWORD, align 4
  %47 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %44, i32 %45, i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = and i32 %48, 65535
  %50 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %51 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %3, align 4
  %53 = and i32 %52, -65536
  %54 = lshr i32 %53, 16
  %55 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %56 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %58 = load i32, i32* @DM_REG_OFDM_FA_TYPE4_11N, align 4
  %59 = load i32, i32* @MASKDWORD, align 4
  %60 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %57, i32 %58, i32 %59)
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = and i32 %61, 65535
  %63 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %64 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 4
  %65 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %66 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %69 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %67, %70
  %72 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %73 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %71, %74
  %76 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %77 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %75, %78
  %80 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %81 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %79, %82
  %84 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %85 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %83, %86
  %88 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %89 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %88, i32 0, i32 7
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %91 = load i32, i32* @DM_REG_CCK_FA_RST_11N, align 4
  %92 = call i32 @BIT(i32 12)
  %93 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %90, i32 %91, i32 %92, i32 1)
  %94 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %95 = load i32, i32* @DM_REG_CCK_FA_RST_11N, align 4
  %96 = call i32 @BIT(i32 14)
  %97 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %94, i32 %95, i32 %96, i32 1)
  %98 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %99 = load i32, i32* @DM_REG_CCK_FA_RST_11N, align 4
  %100 = load i32, i32* @MASKBYTE0, align 4
  %101 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %98, i32 %99, i32 %100)
  store i32 %101, i32* %3, align 4
  %102 = load i32, i32* %3, align 4
  %103 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %104 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %103, i32 0, i32 8
  store i32 %102, i32* %104, align 4
  %105 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %106 = load i32, i32* @DM_REG_CCK_FA_MSB_11N, align 4
  %107 = load i32, i32* @MASKBYTE3, align 4
  %108 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %105, i32 %106, i32 %107)
  store i32 %108, i32* %3, align 4
  %109 = load i32, i32* %3, align 4
  %110 = and i32 %109, 255
  %111 = shl i32 %110, 8
  %112 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %113 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, %111
  store i32 %115, i32* %113, align 4
  %116 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %117 = load i32, i32* @DM_REG_CCK_CCA_CNT_11N, align 4
  %118 = load i32, i32* @MASKDWORD, align 4
  %119 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %116, i32 %117, i32 %118)
  store i32 %119, i32* %3, align 4
  %120 = load i32, i32* %3, align 4
  %121 = and i32 %120, 255
  %122 = shl i32 %121, 8
  %123 = load i32, i32* %3, align 4
  %124 = and i32 %123, 65280
  %125 = ashr i32 %124, 8
  %126 = or i32 %122, %125
  %127 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %128 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %127, i32 0, i32 9
  store i32 %126, i32* %128, align 4
  %129 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %130 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %133 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %131, %134
  %136 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %137 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %135, %138
  %140 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %141 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %139, %142
  %144 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %145 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %143, %146
  %148 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %149 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %147, %150
  %152 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %153 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %152, i32 0, i32 8
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %151, %154
  %156 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %157 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %156, i32 0, i32 10
  store i32 %155, i32* %157, align 4
  %158 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %159 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %162 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %161, i32 0, i32 9
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %160, %163
  %165 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %166 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %165, i32 0, i32 11
  store i32 %164, i32* %166, align 4
  %167 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %168 = load i32, i32* @DM_REG_OFDM_FA_RSTC_11N, align 4
  %169 = call i32 @BIT(i32 31)
  %170 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %167, i32 %168, i32 %169, i32 1)
  %171 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %172 = load i32, i32* @DM_REG_OFDM_FA_RSTC_11N, align 4
  %173 = call i32 @BIT(i32 31)
  %174 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %171, i32 %172, i32 %173, i32 0)
  %175 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %176 = load i32, i32* @DM_REG_OFDM_FA_RSTD_11N, align 4
  %177 = call i32 @BIT(i32 27)
  %178 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %175, i32 %176, i32 %177, i32 1)
  %179 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %180 = load i32, i32* @DM_REG_OFDM_FA_RSTD_11N, align 4
  %181 = call i32 @BIT(i32 27)
  %182 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %179, i32 %180, i32 %181, i32 0)
  %183 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %184 = load i32, i32* @DM_REG_OFDM_FA_HOLDC_11N, align 4
  %185 = call i32 @BIT(i32 31)
  %186 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %183, i32 %184, i32 %185, i32 0)
  %187 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %188 = load i32, i32* @DM_REG_OFDM_FA_RSTD_11N, align 4
  %189 = call i32 @BIT(i32 31)
  %190 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %187, i32 %188, i32 %189, i32 0)
  %191 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %192 = load i32, i32* @DM_REG_CCK_FA_RST_11N, align 4
  %193 = call i32 @BIT(i32 13)
  %194 = call i32 @BIT(i32 12)
  %195 = or i32 %193, %194
  %196 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %191, i32 %192, i32 %195, i32 0)
  %197 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %198 = load i32, i32* @DM_REG_CCK_FA_RST_11N, align 4
  %199 = call i32 @BIT(i32 13)
  %200 = call i32 @BIT(i32 12)
  %201 = or i32 %199, %200
  %202 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %197, i32 %198, i32 %201, i32 2)
  %203 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %204 = load i32, i32* @DM_REG_CCK_FA_RST_11N, align 4
  %205 = call i32 @BIT(i32 15)
  %206 = call i32 @BIT(i32 14)
  %207 = or i32 %205, %206
  %208 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %203, i32 %204, i32 %207, i32 0)
  %209 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %210 = load i32, i32* @DM_REG_CCK_FA_RST_11N, align 4
  %211 = call i32 @BIT(i32 15)
  %212 = call i32 @BIT(i32 14)
  %213 = or i32 %211, %212
  %214 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %209, i32 %210, i32 %213, i32 2)
  %215 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %216 = load i32, i32* @COMP_DIG, align 4
  %217 = load i32, i32* @DBG_TRACE, align 4
  %218 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %219 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %222 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %225 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %228 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %227, i32 0, i32 6
  %229 = load i32, i32* %228, align 4
  %230 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32, ...) @RT_TRACE(%struct.rtl_priv* %215, i32 %216, i32 %217, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %220, i32 %223, i32 %226, i32 %229)
  %231 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %232 = load i32, i32* @COMP_DIG, align 4
  %233 = load i32, i32* @DBG_TRACE, align 4
  %234 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %235 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %234, i32 0, i32 7
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %238 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %237, i32 0, i32 8
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %241 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %240, i32 0, i32 10
  %242 = load i32, i32* %241, align 4
  %243 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32, ...) @RT_TRACE(%struct.rtl_priv* %231, i32 %232, i32 %233, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %236, i32 %239, i32 %242)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
