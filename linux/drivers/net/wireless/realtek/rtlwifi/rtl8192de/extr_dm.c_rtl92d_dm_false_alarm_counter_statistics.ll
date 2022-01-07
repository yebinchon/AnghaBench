; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_dm.c_rtl92d_dm_false_alarm_counter_statistics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_dm.c_rtl92d_dm_false_alarm_counter_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.false_alarm_statistics }
%struct.TYPE_2__ = type { i64 }
%struct.false_alarm_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ROFDM0_LSTF = common dso_local global i32 0, align 4
@ROFDM1_LSTF = common dso_local global i32 0, align 4
@ROFDM0_FRAMESYNC = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@ROFDM_PHYCOUNTER1 = common dso_local global i32 0, align 4
@ROFDM_PHYCOUNTER2 = common dso_local global i32 0, align 4
@ROFDM_PHYCOUNTER3 = common dso_local global i32 0, align 4
@BAND_ON_5G = common dso_local global i64 0, align 8
@RCCK0_FACOUNTERLOWER = common dso_local global i32 0, align 4
@MASKBYTE0 = common dso_local global i32 0, align 4
@RCCK0_FACOUNTERUPPER = common dso_local global i32 0, align 4
@MASKBYTE3 = common dso_local global i32 0, align 4
@RCCK0_FALSEALARMREPORT = common dso_local global i32 0, align 4
@COMP_DIG = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Cnt_Fast_Fsync_fail = %x, Cnt_SB_Search_fail = %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"Cnt_Parity_Fail = %x, Cnt_Rate_Illegal = %x, Cnt_Crc8_fail = %x, Cnt_Mcs_fail = %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Cnt_Ofdm_fail = %x, Cnt_Cck_fail = %x, Cnt_all = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl92d_dm_false_alarm_counter_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92d_dm_false_alarm_counter_statistics(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.false_alarm_statistics*, align 8
  %6 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %4, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %10 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %9, i32 0, i32 1
  store %struct.false_alarm_statistics* %10, %struct.false_alarm_statistics** %5, align 8
  store i64 0, i64* %6, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = load i32, i32* @ROFDM0_LSTF, align 4
  %13 = call i32 @BIT(i32 31)
  %14 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %11, i32 %12, i32 %13, i32 1)
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %16 = load i32, i32* @ROFDM1_LSTF, align 4
  %17 = call i32 @BIT(i32 31)
  %18 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %15, i32 %16, i32 %17, i32 1)
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %20 = load i32, i32* @ROFDM0_FRAMESYNC, align 4
  %21 = load i32, i32* @MASKDWORD, align 4
  %22 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %19, i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, 65535
  %25 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %26 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, -65536
  %29 = lshr i32 %28, 16
  %30 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %31 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %33 = load i32, i32* @ROFDM_PHYCOUNTER1, align 4
  %34 = load i32, i32* @MASKDWORD, align 4
  %35 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %32, i32 %33, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, -65536
  %38 = lshr i32 %37, 16
  %39 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %40 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %42 = load i32, i32* @ROFDM_PHYCOUNTER2, align 4
  %43 = load i32, i32* @MASKDWORD, align 4
  %44 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %41, i32 %42, i32 %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = and i32 %45, 65535
  %47 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %48 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %49, -65536
  %51 = lshr i32 %50, 16
  %52 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %53 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %55 = load i32, i32* @ROFDM_PHYCOUNTER3, align 4
  %56 = load i32, i32* @MASKDWORD, align 4
  %57 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %54, i32 %55, i32 %56)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = and i32 %58, 65535
  %60 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %61 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %63 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %66 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %64, %67
  %69 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %70 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %68, %71
  %73 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %74 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %72, %75
  %77 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %78 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %76, %79
  %81 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %82 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %80, %83
  %85 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %86 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 4
  %87 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %88 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @BAND_ON_5G, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %116

93:                                               ; preds = %1
  %94 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %95 = call i32 @rtl92d_acquire_cckandrw_pagea_ctl(%struct.ieee80211_hw* %94, i64* %6)
  %96 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %97 = load i32, i32* @RCCK0_FACOUNTERLOWER, align 4
  %98 = load i32, i32* @MASKBYTE0, align 4
  %99 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %96, i32 %97, i32 %98)
  store i32 %99, i32* %3, align 4
  %100 = load i32, i32* %3, align 4
  %101 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %102 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %101, i32 0, i32 7
  store i32 %100, i32* %102, align 4
  %103 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %104 = load i32, i32* @RCCK0_FACOUNTERUPPER, align 4
  %105 = load i32, i32* @MASKBYTE3, align 4
  %106 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %103, i32 %104, i32 %105)
  store i32 %106, i32* %3, align 4
  %107 = load i32, i32* %3, align 4
  %108 = and i32 %107, 255
  %109 = shl i32 %108, 8
  %110 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %111 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %115 = call i32 @rtl92d_release_cckandrw_pagea_ctl(%struct.ieee80211_hw* %114, i64* %6)
  br label %119

116:                                              ; preds = %1
  %117 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %118 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %117, i32 0, i32 7
  store i32 0, i32* %118, align 4
  br label %119

119:                                              ; preds = %116, %93
  %120 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %121 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %124 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %122, %125
  %127 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %128 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %126, %129
  %131 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %132 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %130, %133
  %135 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %136 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %134, %137
  %139 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %140 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %138, %141
  %143 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %144 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %142, %145
  %147 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %148 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %147, i32 0, i32 8
  store i32 %146, i32* %148, align 4
  %149 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %150 = load i32, i32* @ROFDM1_LSTF, align 4
  %151 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %149, i32 %150, i32 134217728, i32 1)
  %152 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %153 = load i32, i32* @ROFDM1_LSTF, align 4
  %154 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %152, i32 %153, i32 134217728, i32 0)
  %155 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %156 = load i32, i32* @ROFDM0_LSTF, align 4
  %157 = call i32 @BIT(i32 31)
  %158 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %155, i32 %156, i32 %157, i32 0)
  %159 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %160 = load i32, i32* @ROFDM1_LSTF, align 4
  %161 = call i32 @BIT(i32 31)
  %162 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %159, i32 %160, i32 %161, i32 0)
  %163 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %164 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @BAND_ON_5G, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %180

169:                                              ; preds = %119
  %170 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %171 = call i32 @rtl92d_acquire_cckandrw_pagea_ctl(%struct.ieee80211_hw* %170, i64* %6)
  %172 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %173 = load i32, i32* @RCCK0_FALSEALARMREPORT, align 4
  %174 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %172, i32 %173, i32 49152, i32 0)
  %175 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %176 = load i32, i32* @RCCK0_FALSEALARMREPORT, align 4
  %177 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %175, i32 %176, i32 49152, i32 2)
  %178 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %179 = call i32 @rtl92d_release_cckandrw_pagea_ctl(%struct.ieee80211_hw* %178, i64* %6)
  br label %180

180:                                              ; preds = %169, %119
  %181 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %182 = load i32, i32* @COMP_DIG, align 4
  %183 = load i32, i32* @DBG_LOUD, align 4
  %184 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %185 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %188 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, i32, ...) @RT_TRACE(%struct.rtl_priv* %181, i32 %182, i32 %183, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %186, i32 %189)
  %191 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %192 = load i32, i32* @COMP_DIG, align 4
  %193 = load i32, i32* @DBG_LOUD, align 4
  %194 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %195 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %198 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %201 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %204 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, i32, ...) @RT_TRACE(%struct.rtl_priv* %191, i32 %192, i32 %193, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i32 %196, i32 %199, i32 %202, i32 %205)
  %207 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %208 = load i32, i32* @COMP_DIG, align 4
  %209 = load i32, i32* @DBG_LOUD, align 4
  %210 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %211 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %214 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %213, i32 0, i32 7
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %217 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %216, i32 0, i32 8
  %218 = load i32, i32* %217, align 4
  %219 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, i32, ...) @RT_TRACE(%struct.rtl_priv* %207, i32 %208, i32 %209, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %212, i32 %215, i32 %218)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl92d_acquire_cckandrw_pagea_ctl(%struct.ieee80211_hw*, i64*) #1

declare dso_local i32 @rtl92d_release_cckandrw_pagea_ctl(%struct.ieee80211_hw*, i64*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
