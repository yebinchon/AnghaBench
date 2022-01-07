; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_init.c_wl1271_init_vif_specific.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_init.c_wl1271_init_vif_specific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64, i64, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, %struct.conf_tx_tid*, %struct.conf_tx_ac_category* }
%struct.conf_tx_tid = type { i32*, i32, i32, i32, i32, i32 }
%struct.conf_tx_ac_category = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ieee80211_vif = type { i32 }
%struct.wl12xx_vif = type { i64 }

@BSS_TYPE_AP_BSS = common dso_local global i64 0, align 8
@WL1271_PSM_ELP = common dso_local global i64 0, align 8
@WL1271_PSM_ILLEGAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_init_vif_specific(%struct.wl1271* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca %struct.conf_tx_ac_category*, align 8
  %8 = alloca %struct.conf_tx_tid*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %14 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %13)
  store %struct.wl12xx_vif* %14, %struct.wl12xx_vif** %6, align 8
  %15 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %16 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %9, align 4
  %21 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %22 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %51

28:                                               ; preds = %25
  %29 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %30 = load i64, i64* @WL1271_PSM_ELP, align 8
  %31 = call i32 @wl1271_acx_sleep_auth(%struct.wl1271* %29, i64 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %3, align 4
  br label %267

36:                                               ; preds = %28
  %37 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %38 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %41 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %45 = call i32 @wl1271_event_unmask(%struct.wl1271* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %3, align 4
  br label %267

50:                                               ; preds = %36
  br label %88

51:                                               ; preds = %25, %2
  %52 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %53 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %87

56:                                               ; preds = %51
  %57 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %58 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %87

61:                                               ; preds = %56
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %87, label %64

64:                                               ; preds = %61
  %65 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %66 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %12, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* @WL1271_PSM_ILLEGAL, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %75 = load i64, i64* %12, align 8
  %76 = call i32 @wl1271_acx_sleep_auth(%struct.wl1271* %74, i64 %75)
  store i32 %76, i32* %10, align 4
  br label %81

77:                                               ; preds = %64
  %78 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %79 = load i64, i64* @WL1271_PSM_ELP, align 8
  %80 = call i32 @wl1271_acx_sleep_auth(%struct.wl1271* %78, i64 %79)
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %77, %73
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %3, align 4
  br label %267

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %86, %61, %56, %51
  br label %88

88:                                               ; preds = %87, %50
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %88
  %92 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %93 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %94 = call i32 @wl1271_ap_hw_init(%struct.wl1271* %92, %struct.wl12xx_vif* %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %3, align 4
  br label %267

99:                                               ; preds = %91
  %100 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %101 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %102 = call i32 @wl12xx_init_ap_role(%struct.wl1271* %100, %struct.wl12xx_vif* %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %3, align 4
  br label %267

107:                                              ; preds = %99
  br label %125

108:                                              ; preds = %88
  %109 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %110 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %111 = call i32 @wl1271_sta_hw_init(%struct.wl1271* %109, %struct.wl12xx_vif* %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %3, align 4
  br label %267

116:                                              ; preds = %108
  %117 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %118 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %119 = call i32 @wl12xx_init_sta_role(%struct.wl1271* %117, %struct.wl12xx_vif* %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %3, align 4
  br label %267

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124, %107
  %126 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %127 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %128 = call i32 @wl12xx_init_phy_vif_config(%struct.wl1271* %126, %struct.wl12xx_vif* %127)
  %129 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %130 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %135 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %133, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @BUG_ON(i32 %140)
  store i32 0, i32* %11, align 4
  br label %142

142:                                              ; preds = %223, %125
  %143 = load i32, i32* %11, align 4
  %144 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %145 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp slt i32 %143, %148
  br i1 %149, label %150, label %226

150:                                              ; preds = %142
  %151 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %152 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 3
  %155 = load %struct.conf_tx_ac_category*, %struct.conf_tx_ac_category** %154, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.conf_tx_ac_category, %struct.conf_tx_ac_category* %155, i64 %157
  store %struct.conf_tx_ac_category* %158, %struct.conf_tx_ac_category** %7, align 8
  %159 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %160 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %161 = load %struct.conf_tx_ac_category*, %struct.conf_tx_ac_category** %7, align 8
  %162 = getelementptr inbounds %struct.conf_tx_ac_category, %struct.conf_tx_ac_category* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.conf_tx_ac_category*, %struct.conf_tx_ac_category** %7, align 8
  %165 = getelementptr inbounds %struct.conf_tx_ac_category, %struct.conf_tx_ac_category* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.conf_tx_ac_category*, %struct.conf_tx_ac_category** %7, align 8
  %168 = getelementptr inbounds %struct.conf_tx_ac_category, %struct.conf_tx_ac_category* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.conf_tx_ac_category*, %struct.conf_tx_ac_category** %7, align 8
  %171 = getelementptr inbounds %struct.conf_tx_ac_category, %struct.conf_tx_ac_category* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.conf_tx_ac_category*, %struct.conf_tx_ac_category** %7, align 8
  %174 = getelementptr inbounds %struct.conf_tx_ac_category, %struct.conf_tx_ac_category* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @wl1271_acx_ac_cfg(%struct.wl1271* %159, %struct.wl12xx_vif* %160, i32 %163, i32 %166, i32 %169, i32 %172, i32 %175)
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* %10, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %150
  %180 = load i32, i32* %10, align 4
  store i32 %180, i32* %3, align 4
  br label %267

181:                                              ; preds = %150
  %182 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %183 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 2
  %186 = load %struct.conf_tx_tid*, %struct.conf_tx_tid** %185, align 8
  %187 = load i32, i32* %11, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.conf_tx_tid, %struct.conf_tx_tid* %186, i64 %188
  store %struct.conf_tx_tid* %189, %struct.conf_tx_tid** %8, align 8
  %190 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %191 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %192 = load %struct.conf_tx_tid*, %struct.conf_tx_tid** %8, align 8
  %193 = getelementptr inbounds %struct.conf_tx_tid, %struct.conf_tx_tid* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.conf_tx_tid*, %struct.conf_tx_tid** %8, align 8
  %196 = getelementptr inbounds %struct.conf_tx_tid, %struct.conf_tx_tid* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.conf_tx_tid*, %struct.conf_tx_tid** %8, align 8
  %199 = getelementptr inbounds %struct.conf_tx_tid, %struct.conf_tx_tid* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.conf_tx_tid*, %struct.conf_tx_tid** %8, align 8
  %202 = getelementptr inbounds %struct.conf_tx_tid, %struct.conf_tx_tid* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.conf_tx_tid*, %struct.conf_tx_tid** %8, align 8
  %205 = getelementptr inbounds %struct.conf_tx_tid, %struct.conf_tx_tid* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.conf_tx_tid*, %struct.conf_tx_tid** %8, align 8
  %208 = getelementptr inbounds %struct.conf_tx_tid, %struct.conf_tx_tid* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.conf_tx_tid*, %struct.conf_tx_tid** %8, align 8
  %213 = getelementptr inbounds %struct.conf_tx_tid, %struct.conf_tx_tid* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 1
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @wl1271_acx_tid_cfg(%struct.wl1271* %190, %struct.wl12xx_vif* %191, i32 %194, i32 %197, i32 %200, i32 %203, i32 %206, i32 %211, i32 %216)
  store i32 %217, i32* %10, align 4
  %218 = load i32, i32* %10, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %181
  %221 = load i32, i32* %10, align 4
  store i32 %221, i32* %3, align 4
  br label %267

222:                                              ; preds = %181
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %11, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %11, align 4
  br label %142

226:                                              ; preds = %142
  %227 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %228 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %229 = call i32 @wl1271_acx_feature_cfg(%struct.wl1271* %227, %struct.wl12xx_vif* %228)
  store i32 %229, i32* %10, align 4
  %230 = load i32, i32* %10, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %226
  %233 = load i32, i32* %10, align 4
  store i32 %233, i32* %3, align 4
  br label %267

234:                                              ; preds = %226
  %235 = load i32, i32* %9, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %234
  %238 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %239 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %240 = call i32 @wl1271_ap_hw_init_post_mem(%struct.wl1271* %238, %struct.ieee80211_vif* %239)
  store i32 %240, i32* %10, align 4
  br label %245

241:                                              ; preds = %234
  %242 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %243 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %244 = call i32 @wl1271_sta_hw_init_post_mem(%struct.wl1271* %242, %struct.ieee80211_vif* %243)
  store i32 %244, i32* %10, align 4
  br label %245

245:                                              ; preds = %241, %237
  %246 = load i32, i32* %10, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %245
  %249 = load i32, i32* %10, align 4
  store i32 %249, i32* %3, align 4
  br label %267

250:                                              ; preds = %245
  %251 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %252 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %253 = call i32 @wl1271_set_ba_policies(%struct.wl1271* %251, %struct.wl12xx_vif* %252)
  store i32 %253, i32* %10, align 4
  %254 = load i32, i32* %10, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %250
  %257 = load i32, i32* %10, align 4
  store i32 %257, i32* %3, align 4
  br label %267

258:                                              ; preds = %250
  %259 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %260 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %261 = call i32 @wlcore_hw_init_vif(%struct.wl1271* %259, %struct.wl12xx_vif* %260)
  store i32 %261, i32* %10, align 4
  %262 = load i32, i32* %10, align 4
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %258
  %265 = load i32, i32* %10, align 4
  store i32 %265, i32* %3, align 4
  br label %267

266:                                              ; preds = %258
  store i32 0, i32* %3, align 4
  br label %267

267:                                              ; preds = %266, %264, %256, %248, %232, %220, %179, %122, %114, %105, %97, %84, %48, %34
  %268 = load i32, i32* %3, align 4
  ret i32 %268
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_acx_sleep_auth(%struct.wl1271*, i64) #1

declare dso_local i32 @wl1271_event_unmask(%struct.wl1271*) #1

declare dso_local i32 @wl1271_ap_hw_init(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl12xx_init_ap_role(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_sta_hw_init(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl12xx_init_sta_role(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl12xx_init_phy_vif_config(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wl1271_acx_ac_cfg(%struct.wl1271*, %struct.wl12xx_vif*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wl1271_acx_tid_cfg(%struct.wl1271*, %struct.wl12xx_vif*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wl1271_acx_feature_cfg(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_ap_hw_init_post_mem(%struct.wl1271*, %struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_sta_hw_init_post_mem(%struct.wl1271*, %struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_set_ba_policies(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wlcore_hw_init_vif(%struct.wl1271*, %struct.wl12xx_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
