; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_dm_check_edca_turbo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_dm_check_edca_turbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__*, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.ieee80211_hw*, i32, i64*)* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.rtl_mac = type { i64 }
%struct.rtl_dm = type { i64, i64 }

@COMP_TURBO = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"rtl8821ae_dm_check_edca_turbo=====>\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Original BE PARAM: 0x%x\0A\00", align 1
@DM_REG_EDCA_BE_11N = common dso_local global i32 0, align 4
@HARDWARE_TYPE_RTL8812AE = common dso_local global i64 0, align 8
@PEER_CISCO = common dso_local global i64 0, align 8
@WIRELESS_MODE_N_24G = common dso_local global i64 0, align 8
@edca_setting_dl = common dso_local global i32* null, align 8
@edca_setting_ul = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"bIsAnyNonBEPkts : 0x%x  bDisableFrameBursting : 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"bEdcaTurboOn : 0x%x bBiasOnRx : 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"curTxOkCnt : 0x%llx\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"curRxOkCnt : 0x%llx\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"EDCA Turbo on: EDCA_BE:0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"EDCA_BE_DL : 0x%x  EDCA_BE_UL : 0x%x  EDCA_BE : 0x%x\0A\00", align 1
@AC0_BE = common dso_local global i64 0, align 8
@HW_VAR_AC_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8821ae_dm_check_edca_turbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8821ae_dm_check_edca_turbo(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_mac*, align 8
  %5 = alloca %struct.rtl_dm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  store %struct.rtl_priv* %17, %struct.rtl_priv** %3, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %19 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %18)
  %20 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %19)
  store %struct.rtl_mac* %20, %struct.rtl_mac** %4, align 8
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %22 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %21)
  %23 = call %struct.rtl_dm* @rtl_dm(%struct.rtl_priv* %22)
  store %struct.rtl_dm* %23, %struct.rtl_dm** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 6202411, i32* %8, align 4
  store i32 6202411, i32* %9, align 4
  store i32 6202411, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %25 = load i32, i32* @COMP_TURBO, align 4
  %26 = load i32, i32* @DBG_LOUD, align 4
  %27 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %24, i32 %25, i32 %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %29 = load i32, i32* @COMP_TURBO, align 4
  %30 = load i32, i32* @DBG_LOUD, align 4
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %32 = load i32, i32* @DM_REG_EDCA_BE_11N, align 4
  %33 = call i32 @rtl_read_dword(%struct.rtl_priv* %31, i32 %32)
  %34 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %28, i32 %29, i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %36 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 256
  br i1 %40, label %41, label %45

41:                                               ; preds = %1
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %43 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %41, %1
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %47 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %51 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  store i32* %52, i32** %12, align 8
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %54 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %58 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  store i64 %60, i64* %6, align 8
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %62 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %66 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  store i64 %68, i64* %7, align 8
  %69 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %70 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %74 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %76 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %80 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %82 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %85 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %86 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %45
  %91 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %92 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  br label %97

97:                                               ; preds = %90, %45
  %98 = phi i1 [ false, %45 ], [ %96, %90 ]
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 1, i32 0
  store i32 %100, i32* %14, align 4
  %101 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %102 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %127

107:                                              ; preds = %97
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* @PEER_CISCO, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %107
  %112 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %113 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @WIRELESS_MODE_N_24G, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %111
  %118 = load i32*, i32** @edca_setting_dl, align 8
  %119 = load i64, i64* %11, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %9, align 4
  %122 = load i32*, i32** @edca_setting_ul, align 8
  %123 = load i64, i64* %11, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %117, %111, %107
  br label %127

127:                                              ; preds = %126, %97
  %128 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %129 = load i32, i32* @COMP_TURBO, align 4
  %130 = load i32, i32* @DBG_LOUD, align 4
  %131 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %132 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %136 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %128, i32 %129, i32 %130, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %134, i32 %138)
  %140 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %141 = load i32, i32* @COMP_TURBO, align 4
  %142 = load i32, i32* @DBG_LOUD, align 4
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %13, align 4
  %145 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %140, i32 %141, i32 %142, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %143, i32 %144)
  %146 = load i32, i32* %14, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %202

148:                                              ; preds = %127
  %149 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %150 = load i32, i32* @COMP_TURBO, align 4
  %151 = load i32, i32* @DBG_LOUD, align 4
  %152 = load i64, i64* %6, align 8
  %153 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %149, i32 %150, i32 %151, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %152)
  %154 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %155 = load i32, i32* @COMP_TURBO, align 4
  %156 = load i32, i32* @DBG_LOUD, align 4
  %157 = load i64, i64* %7, align 8
  %158 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %154, i32 %155, i32 %156, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %157)
  %159 = load i32, i32* %13, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %148
  %162 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %163 = load i64, i64* %6, align 8
  %164 = load i64, i64* %7, align 8
  %165 = load i32*, i32** %12, align 8
  %166 = call i32 @rtl8821ae_dm_edca_choose_traffic_idx(%struct.ieee80211_hw* %162, i64 %163, i64 %164, i32 1, i32* %165)
  br label %173

167:                                              ; preds = %148
  %168 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %169 = load i64, i64* %6, align 8
  %170 = load i64, i64* %7, align 8
  %171 = load i32*, i32** %12, align 8
  %172 = call i32 @rtl8821ae_dm_edca_choose_traffic_idx(%struct.ieee80211_hw* %168, i64 %169, i64 %170, i32 0, i32* %171)
  br label %173

173:                                              ; preds = %167, %161
  %174 = load i32*, i32** %12, align 8
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %173
  %178 = load i32, i32* %9, align 4
  br label %181

179:                                              ; preds = %173
  %180 = load i32, i32* %8, align 4
  br label %181

181:                                              ; preds = %179, %177
  %182 = phi i32 [ %178, %177 ], [ %180, %179 ]
  store i32 %182, i32* %10, align 4
  %183 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %184 = load i32, i32* @DM_REG_EDCA_BE_11N, align 4
  %185 = load i32, i32* %10, align 4
  %186 = call i32 @rtl_write_dword(%struct.rtl_priv* %183, i32 %184, i32 %185)
  %187 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %188 = load i32, i32* @COMP_TURBO, align 4
  %189 = load i32, i32* @DBG_LOUD, align 4
  %190 = load i32, i32* %10, align 4
  %191 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %187, i32 %188, i32 %189, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %190)
  %192 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %193 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 2
  store i32 1, i32* %194, align 8
  %195 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %196 = load i32, i32* @COMP_TURBO, align 4
  %197 = load i32, i32* @DBG_LOUD, align 4
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* %10, align 4
  %201 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %195, i32 %196, i32 %197, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 %198, i32 %199, i32 %200)
  br label %224

202:                                              ; preds = %127
  %203 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %204 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %220

208:                                              ; preds = %202
  %209 = load i64, i64* @AC0_BE, align 8
  store i64 %209, i64* %15, align 8
  %210 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %211 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %210, i32 0, i32 2
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 0
  %216 = load i32 (%struct.ieee80211_hw*, i32, i64*)*, i32 (%struct.ieee80211_hw*, i32, i64*)** %215, align 8
  %217 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %218 = load i32, i32* @HW_VAR_AC_PARAM, align 4
  %219 = call i32 %216(%struct.ieee80211_hw* %217, i32 %218, i64* %15)
  br label %220

220:                                              ; preds = %208, %202
  %221 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %222 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 2
  store i32 0, i32* %223, align 8
  br label %224

224:                                              ; preds = %220, %181
  %225 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %226 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 0
  store i32 0, i32* %227, align 8
  %228 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %229 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %233 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %232, i32 0, i32 1
  store i64 %231, i64* %233, align 8
  %234 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %235 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %239 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %238, i32 0, i32 0
  store i64 %237, i64* %239, align 8
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_dm* @rtl_dm(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl8821ae_dm_edca_choose_traffic_idx(%struct.ieee80211_hw*, i64, i64, i32, i32*) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
