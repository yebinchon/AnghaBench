; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_dm_dig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_dm_dig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.dig_t }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.dig_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtl_mac = type { i64, i64 }
%struct.rtl_hal = type { i64 }

@COMP_DIG = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Return: In Scan Progress\0A\00", align 1
@MAC80211_LINKED = common dso_local global i64 0, align 8
@HARDWARE_TYPE_RTL8821AE = common dso_local global i64 0, align 8
@DM_DIG_MIN = common dso_local global i32 0, align 4
@DM_DIG_MAX_AP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"dm_digtable->rssi_val_min=0x%x,dm_digtable->rx_gain_max = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"bOneEntryOnly=TRUE, dig_min_0=0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"No Link\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Abnormally false alarm case.\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Normal Case: At Lower Bound\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Normal Case: Approach Lower Bound\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"pDM_DigTable->LargeFAHit=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"DIG AfterLink\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"First Connect\0A\00", align 1
@DM_DIG_FA_TH2 = common dso_local global i32 0, align 4
@DM_DIG_FA_TH1 = common dso_local global i32 0, align 4
@DM_DIG_FA_TH0 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [78 x i8] c"Beacon is less than 10 and FA is less than 768, IGI GOES TO 0x1E!!!!!!!!!!!!\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"DIG BeforeLink\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"First DisConnect\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"England DIG\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"DIG End Adjust IGI\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"rx_gain_max=0x%x, rx_gain_min=0x%x\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"TotalFA=%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"CurIGValue=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8821ae_dm_dig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8821ae_dm_dig(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.dig_t*, align 8
  %5 = alloca %struct.rtl_mac*, align 8
  %6 = alloca %struct.rtl_hal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  store %struct.rtl_priv* %16, %struct.rtl_priv** %3, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 2
  store %struct.dig_t* %18, %struct.dig_t** %4, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %20 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %19)
  %21 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %20)
  store %struct.rtl_mac* %21, %struct.rtl_mac** %5, align 8
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %23 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %22)
  %24 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %23)
  store %struct.rtl_hal* %24, %struct.rtl_hal** %6, align 8
  %25 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %26 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %14, align 4
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %29 = load i32, i32* @COMP_DIG, align 4
  %30 = load i32, i32* @DBG_LOUD, align 4
  %31 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %28, i32 %29, i32 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %33 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %1
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %38 = load i32, i32* @COMP_DIG, align 4
  %39 = load i32, i32* @DBG_LOUD, align 4
  %40 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %37, i32 %38, i32 %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %541

41:                                               ; preds = %1
  %42 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %43 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %7, align 4
  %45 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %46 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MAC80211_LINKED, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %52 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br label %56

56:                                               ; preds = %50, %41
  %57 = phi i1 [ false, %41 ], [ %55, %50 ]
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %9, align 4
  %59 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %60 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @MAC80211_LINKED, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %66 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br label %69

69:                                               ; preds = %64, %56
  %70 = phi i1 [ false, %56 ], [ %68, %64 ]
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %10, align 4
  store i32 90, i32* %11, align 4
  %72 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %73 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @HARDWARE_TYPE_RTL8821AE, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* @DM_DIG_MIN, align 4
  store i32 %78, i32* %12, align 4
  br label %80

79:                                               ; preds = %69
  store i32 28, i32* %12, align 4
  br label %80

80:                                               ; preds = %79, %77
  %81 = load i32, i32* @DM_DIG_MAX_AP, align 4
  store i32 %81, i32* %8, align 4
  %82 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %83 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @MAC80211_LINKED, align 8
  %86 = icmp sge i64 %84, %85
  br i1 %86, label %87, label %180

87:                                               ; preds = %80
  %88 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %89 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @HARDWARE_TYPE_RTL8821AE, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 20, i32* %13, align 4
  br label %95

94:                                               ; preds = %87
  store i32 10, i32* %13, align 4
  br label %95

95:                                               ; preds = %94, %93
  %96 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %97 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32, i32* %11, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %106 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 4
  br label %128

107:                                              ; preds = %95
  %108 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %109 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %110, %111
  %113 = load i32, i32* %12, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %107
  %116 = load i32, i32* %12, align 4
  %117 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %118 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 4
  br label %127

119:                                              ; preds = %107
  %120 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %121 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %122, %123
  %125 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %126 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %119, %115
  br label %128

128:                                              ; preds = %127, %103
  %129 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %130 = load i32, i32* @COMP_DIG, align 4
  %131 = load i32, i32* @DBG_LOUD, align 4
  %132 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %133 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %136 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %129, i32 %130, i32 %131, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %134, i32 %137)
  %139 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %140 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %177

144:                                              ; preds = %128
  store i32 0, i32* %13, align 4
  %145 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %146 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %13, align 4
  %149 = sub nsw i32 %147, %148
  %150 = load i32, i32* %12, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %144
  %153 = load i32, i32* %12, align 4
  store i32 %153, i32* %7, align 4
  br label %171

154:                                              ; preds = %144
  %155 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %156 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %13, align 4
  %159 = sub nsw i32 %157, %158
  %160 = load i32, i32* %8, align 4
  %161 = icmp sgt i32 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %154
  %163 = load i32, i32* %8, align 4
  store i32 %163, i32* %7, align 4
  br label %170

164:                                              ; preds = %154
  %165 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %166 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %13, align 4
  %169 = sub nsw i32 %167, %168
  store i32 %169, i32* %7, align 4
  br label %170

170:                                              ; preds = %164, %162
  br label %171

171:                                              ; preds = %170, %152
  %172 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %173 = load i32, i32* @COMP_DIG, align 4
  %174 = load i32, i32* @DBG_LOUD, align 4
  %175 = load i32, i32* %7, align 4
  %176 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %172, i32 %173, i32 %174, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %175)
  br label %179

177:                                              ; preds = %128
  %178 = load i32, i32* %12, align 4
  store i32 %178, i32* %7, align 4
  br label %179

179:                                              ; preds = %177, %171
  br label %189

180:                                              ; preds = %80
  %181 = load i32, i32* %11, align 4
  %182 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %183 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %182, i32 0, i32 4
  store i32 %181, i32* %183, align 4
  %184 = load i32, i32* %12, align 4
  store i32 %184, i32* %7, align 4
  %185 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %186 = load i32, i32* @COMP_DIG, align 4
  %187 = load i32, i32* @DBG_LOUD, align 4
  %188 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %185, i32 %186, i32 %187, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %189

189:                                              ; preds = %180, %179
  %190 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %191 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp sgt i32 %193, 10000
  br i1 %194, label %195, label %252

195:                                              ; preds = %189
  %196 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %197 = load i32, i32* @COMP_DIG, align 4
  %198 = load i32, i32* @DBG_LOUD, align 4
  %199 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %196, i32 %197, i32 %198, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %200 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %201 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 3
  br i1 %203, label %204, label %209

204:                                              ; preds = %195
  %205 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %206 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 4
  br label %209

209:                                              ; preds = %204, %195
  %210 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %211 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %14, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %221

215:                                              ; preds = %209
  %216 = load i32, i32* %14, align 4
  %217 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %218 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %217, i32 0, i32 6
  store i32 %216, i32* %218, align 4
  %219 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %220 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %219, i32 0, i32 5
  store i32 1, i32* %220, align 4
  br label %221

221:                                              ; preds = %215, %209
  %222 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %223 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 4
  %225 = icmp sge i32 %224, 3
  br i1 %225, label %226, label %251

226:                                              ; preds = %221
  %227 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %228 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %227, i32 0, i32 6
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %229, 1
  %231 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %232 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 4
  %234 = icmp sgt i32 %230, %233
  br i1 %234, label %235, label %241

235:                                              ; preds = %226
  %236 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %237 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %240 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %239, i32 0, i32 7
  store i32 %238, i32* %240, align 4
  br label %248

241:                                              ; preds = %226
  %242 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %243 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %242, i32 0, i32 6
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %244, 1
  %246 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %247 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %246, i32 0, i32 7
  store i32 %245, i32* %247, align 4
  br label %248

248:                                              ; preds = %241, %235
  %249 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %250 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %249, i32 0, i32 8
  store i32 3600, i32* %250, align 4
  br label %251

251:                                              ; preds = %248, %221
  br label %306

252:                                              ; preds = %189
  %253 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %254 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %253, i32 0, i32 8
  %255 = load i32, i32* %254, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %252
  %258 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %259 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %258, i32 0, i32 8
  %260 = load i32, i32* %259, align 4
  %261 = add nsw i32 %260, -1
  store i32 %261, i32* %259, align 4
  br label %305

262:                                              ; preds = %252
  %263 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %264 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 4
  %266 = icmp slt i32 %265, 3
  br i1 %266, label %267, label %301

267:                                              ; preds = %262
  %268 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %269 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %268, i32 0, i32 6
  %270 = load i32, i32* %269, align 4
  %271 = sub nsw i32 %270, 1
  %272 = load i32, i32* %7, align 4
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %274, label %285

274:                                              ; preds = %267
  %275 = load i32, i32* %7, align 4
  %276 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %277 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %276, i32 0, i32 6
  store i32 %275, i32* %277, align 4
  %278 = load i32, i32* %7, align 4
  %279 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %280 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %279, i32 0, i32 7
  store i32 %278, i32* %280, align 4
  %281 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %282 = load i32, i32* @COMP_DIG, align 4
  %283 = load i32, i32* @DBG_LOUD, align 4
  %284 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %281, i32 %282, i32 %283, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %300

285:                                              ; preds = %267
  %286 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %287 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %286, i32 0, i32 6
  %288 = load i32, i32* %287, align 4
  %289 = add nsw i32 %288, -1
  store i32 %289, i32* %287, align 4
  %290 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %291 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %290, i32 0, i32 6
  %292 = load i32, i32* %291, align 4
  %293 = add nsw i32 %292, 1
  %294 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %295 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %294, i32 0, i32 7
  store i32 %293, i32* %295, align 4
  %296 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %297 = load i32, i32* @COMP_DIG, align 4
  %298 = load i32, i32* @DBG_LOUD, align 4
  %299 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %296, i32 %297, i32 %298, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %300

300:                                              ; preds = %285, %274
  br label %304

301:                                              ; preds = %262
  %302 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %303 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %302, i32 0, i32 5
  store i32 0, i32* %303, align 4
  br label %304

304:                                              ; preds = %301, %300
  br label %305

305:                                              ; preds = %304, %257
  br label %306

306:                                              ; preds = %305, %251
  %307 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %308 = load i32, i32* @COMP_DIG, align 4
  %309 = load i32, i32* @DBG_LOUD, align 4
  %310 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %311 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %310, i32 0, i32 5
  %312 = load i32, i32* %311, align 4
  %313 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %307, i32 %308, i32 %309, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %312)
  %314 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %315 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = icmp slt i32 %318, 10
  br i1 %319, label %320, label %324

320:                                              ; preds = %306
  %321 = load i32, i32* %12, align 4
  %322 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %323 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %322, i32 0, i32 7
  store i32 %321, i32* %323, align 4
  br label %324

324:                                              ; preds = %320, %306
  %325 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %326 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %325, i32 0, i32 7
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %329 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %328, i32 0, i32 4
  %330 = load i32, i32* %329, align 4
  %331 = icmp sgt i32 %327, %330
  br i1 %331, label %332, label %338

332:                                              ; preds = %324
  %333 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %334 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %333, i32 0, i32 4
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %337 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %336, i32 0, i32 7
  store i32 %335, i32* %337, align 4
  br label %338

338:                                              ; preds = %332, %324
  %339 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %340 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* @MAC80211_LINKED, align 8
  %343 = icmp sge i64 %341, %342
  br i1 %343, label %344, label %424

344:                                              ; preds = %338
  %345 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %346 = load i32, i32* @COMP_DIG, align 4
  %347 = load i32, i32* @DBG_LOUD, align 4
  %348 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %345, i32 %346, i32 %347, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %349 = load i32, i32* %9, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %368

351:                                              ; preds = %344
  %352 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %353 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 4
  %355 = load i32, i32* %8, align 4
  %356 = icmp sle i32 %354, %355
  br i1 %356, label %357, label %361

357:                                              ; preds = %351
  %358 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %359 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %358, i32 0, i32 3
  %360 = load i32, i32* %359, align 4
  store i32 %360, i32* %14, align 4
  br label %363

361:                                              ; preds = %351
  %362 = load i32, i32* %8, align 4
  store i32 %362, i32* %14, align 4
  br label %363

363:                                              ; preds = %361, %357
  %364 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %365 = load i32, i32* @COMP_DIG, align 4
  %366 = load i32, i32* @DBG_LOUD, align 4
  %367 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %364, i32 %365, i32 %366, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  br label %423

368:                                              ; preds = %344
  %369 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %370 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* @DM_DIG_FA_TH2, align 4
  %374 = icmp sgt i32 %372, %373
  br i1 %374, label %375, label %378

375:                                              ; preds = %368
  %376 = load i32, i32* %14, align 4
  %377 = add nsw i32 %376, 4
  store i32 %377, i32* %14, align 4
  br label %400

378:                                              ; preds = %368
  %379 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %380 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = load i32, i32* @DM_DIG_FA_TH1, align 4
  %384 = icmp sgt i32 %382, %383
  br i1 %384, label %385, label %388

385:                                              ; preds = %378
  %386 = load i32, i32* %14, align 4
  %387 = add nsw i32 %386, 2
  store i32 %387, i32* %14, align 4
  br label %399

388:                                              ; preds = %378
  %389 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %390 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = load i32, i32* @DM_DIG_FA_TH0, align 4
  %394 = icmp slt i32 %392, %393
  br i1 %394, label %395, label %398

395:                                              ; preds = %388
  %396 = load i32, i32* %14, align 4
  %397 = sub nsw i32 %396, 2
  store i32 %397, i32* %14, align 4
  br label %398

398:                                              ; preds = %395, %388
  br label %399

399:                                              ; preds = %398, %385
  br label %400

400:                                              ; preds = %399, %375
  %401 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %402 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = icmp slt i32 %405, 10
  br i1 %406, label %407, label %422

407:                                              ; preds = %400
  %408 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %409 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = load i32, i32* @DM_DIG_FA_TH1, align 4
  %413 = icmp slt i32 %411, %412
  br i1 %413, label %414, label %422

414:                                              ; preds = %407
  %415 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %416 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %415, i32 0, i32 7
  %417 = load i32, i32* %416, align 4
  store i32 %417, i32* %14, align 4
  %418 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %419 = load i32, i32* @COMP_DIG, align 4
  %420 = load i32, i32* @DBG_LOUD, align 4
  %421 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %418, i32 %419, i32 %420, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.11, i64 0, i64 0))
  br label %422

422:                                              ; preds = %414, %407, %400
  br label %423

423:                                              ; preds = %422, %363
  br label %478

424:                                              ; preds = %338
  %425 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %426 = load i32, i32* @COMP_DIG, align 4
  %427 = load i32, i32* @DBG_LOUD, align 4
  %428 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %425, i32 %426, i32 %427, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %429 = load i32, i32* %10, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %439

431:                                              ; preds = %424
  %432 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %433 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %432, i32 0, i32 7
  %434 = load i32, i32* %433, align 4
  store i32 %434, i32* %14, align 4
  %435 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %436 = load i32, i32* @COMP_DIG, align 4
  %437 = load i32, i32* @DBG_LOUD, align 4
  %438 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %435, i32 %436, i32 %437, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  br label %477

439:                                              ; preds = %424
  %440 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %441 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = icmp sgt i32 %443, 2000
  br i1 %444, label %445, label %448

445:                                              ; preds = %439
  %446 = load i32, i32* %14, align 4
  %447 = add nsw i32 %446, 4
  store i32 %447, i32* %14, align 4
  br label %468

448:                                              ; preds = %439
  %449 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %450 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %449, i32 0, i32 0
  %451 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 8
  %453 = icmp sgt i32 %452, 600
  br i1 %453, label %454, label %457

454:                                              ; preds = %448
  %455 = load i32, i32* %14, align 4
  %456 = add nsw i32 %455, 2
  store i32 %456, i32* %14, align 4
  br label %467

457:                                              ; preds = %448
  %458 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %459 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %458, i32 0, i32 0
  %460 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = icmp slt i32 %461, 300
  br i1 %462, label %463, label %466

463:                                              ; preds = %457
  %464 = load i32, i32* %14, align 4
  %465 = sub nsw i32 %464, 2
  store i32 %465, i32* %14, align 4
  br label %466

466:                                              ; preds = %463, %457
  br label %467

467:                                              ; preds = %466, %454
  br label %468

468:                                              ; preds = %467, %445
  %469 = load i32, i32* %14, align 4
  %470 = icmp sge i32 %469, 62
  br i1 %470, label %471, label %472

471:                                              ; preds = %468
  store i32 62, i32* %14, align 4
  br label %472

472:                                              ; preds = %471, %468
  %473 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %474 = load i32, i32* @COMP_DIG, align 4
  %475 = load i32, i32* @DBG_LOUD, align 4
  %476 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %473, i32 %474, i32 %475, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  br label %477

477:                                              ; preds = %472, %431
  br label %478

478:                                              ; preds = %477, %423
  %479 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %480 = load i32, i32* @COMP_DIG, align 4
  %481 = load i32, i32* @DBG_LOUD, align 4
  %482 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %479, i32 %480, i32 %481, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  %483 = load i32, i32* %14, align 4
  %484 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %485 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %484, i32 0, i32 4
  %486 = load i32, i32* %485, align 4
  %487 = icmp sgt i32 %483, %486
  br i1 %487, label %488, label %492

488:                                              ; preds = %478
  %489 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %490 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %489, i32 0, i32 4
  %491 = load i32, i32* %490, align 4
  store i32 %491, i32* %14, align 4
  br label %492

492:                                              ; preds = %488, %478
  %493 = load i32, i32* %14, align 4
  %494 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %495 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %494, i32 0, i32 7
  %496 = load i32, i32* %495, align 4
  %497 = icmp slt i32 %493, %496
  br i1 %497, label %498, label %502

498:                                              ; preds = %492
  %499 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %500 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %499, i32 0, i32 7
  %501 = load i32, i32* %500, align 4
  store i32 %501, i32* %14, align 4
  br label %502

502:                                              ; preds = %498, %492
  %503 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %504 = load i32, i32* @COMP_DIG, align 4
  %505 = load i32, i32* @DBG_LOUD, align 4
  %506 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %507 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %506, i32 0, i32 4
  %508 = load i32, i32* %507, align 4
  %509 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %510 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %509, i32 0, i32 7
  %511 = load i32, i32* %510, align 4
  %512 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %503, i32 %504, i32 %505, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0), i32 %508, i32 %511)
  %513 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %514 = load i32, i32* @COMP_DIG, align 4
  %515 = load i32, i32* @DBG_LOUD, align 4
  %516 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %517 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %516, i32 0, i32 0
  %518 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 8
  %520 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %513, i32 %514, i32 %515, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 %519)
  %521 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %522 = load i32, i32* @COMP_DIG, align 4
  %523 = load i32, i32* @DBG_LOUD, align 4
  %524 = load i32, i32* %14, align 4
  %525 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %521, i32 %522, i32 %523, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i32 %524)
  %526 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %527 = load i32, i32* %14, align 4
  %528 = call i32 @rtl8821ae_dm_write_dig(%struct.ieee80211_hw* %526, i32 %527)
  %529 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %530 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %529, i32 0, i32 0
  %531 = load i64, i64* %530, align 8
  %532 = load i64, i64* @MAC80211_LINKED, align 8
  %533 = icmp sge i64 %531, %532
  %534 = zext i1 %533 to i64
  %535 = select i1 %533, i32 1, i32 0
  %536 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %537 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %536, i32 0, i32 2
  store i32 %535, i32* %537, align 4
  %538 = load i32, i32* %7, align 4
  %539 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %540 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %539, i32 0, i32 1
  store i32 %538, i32* %540, align 4
  br label %541

541:                                              ; preds = %502, %36
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl8821ae_dm_write_dig(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
