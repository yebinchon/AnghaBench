; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_op_add_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_op_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_vif = type { i32, i32 }
%struct.wl12xx_vif = type { i64, i32, i32, i32, i32, %struct.wl1271* }
%struct.vif_counter_data = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Adding Interface not allowed while in PLT mode\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@IEEE80211_VIF_BEACON_FILTER = common dso_local global i32 0, align 4
@IEEE80211_VIF_SUPPORTS_UAPSD = common dso_local global i32 0, align 4
@IEEE80211_VIF_SUPPORTS_CQM_RSSI = common dso_local global i32 0, align 4
@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"mac80211 add interface type %d mac %pM\00", align 1
@WL1271_FLAG_RECOVERY_IN_PROGRESS = common dso_local global i32 0, align 4
@WLVIF_FLAG_INITIALIZED = common dso_local global i32 0, align 4
@WL12XX_INVALID_ROLE_TYPE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@WLCORE_STATE_OFF = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@WL1271_FLAG_INTENDED_FW_RECOVERY = common dso_local global i32 0, align 4
@WL1271_ROLE_DEVICE = common dso_local global i64 0, align 8
@BSS_TYPE_AP_BSS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @wl1271_op_add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_op_add_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.wl1271*, align 8
  %7 = alloca %struct.wl12xx_vif*, align 8
  %8 = alloca %struct.vif_counter_data, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  store %struct.wl1271* %13, %struct.wl1271** %6, align 8
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %15 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %14)
  store %struct.wl12xx_vif* %15, %struct.wl12xx_vif** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %17 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %16, i32 0, i32 9
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = call i32 @wl1271_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %227

24:                                               ; preds = %2
  %25 = load i32, i32* @IEEE80211_VIF_BEACON_FILTER, align 4
  %26 = load i32, i32* @IEEE80211_VIF_SUPPORTS_UAPSD, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @IEEE80211_VIF_SUPPORTS_CQM_RSSI, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* @DEBUG_MAC80211, align 4
  %35 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %36 = call i32 @ieee80211_vif_type_p2p(%struct.ieee80211_vif* %35)
  %37 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %38 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @wl1271_debug(i32 %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %39)
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %42 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %43 = call i32 @wl12xx_get_vif_count(%struct.ieee80211_hw* %41, %struct.ieee80211_vif* %42, %struct.vif_counter_data* %8)
  %44 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %45 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %44, i32 0, i32 1
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load i32, i32* @WL1271_FLAG_RECOVERY_IN_PROGRESS, align 4
  %48 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %49 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %48, i32 0, i32 7
  %50 = call i64 @test_bit(i32 %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %24
  %53 = load i32, i32* @WLVIF_FLAG_INITIALIZED, align 4
  %54 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %55 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %54, i32 0, i32 1
  %56 = call i64 @test_bit(i32 %53, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52, %24
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %9, align 4
  br label %213

61:                                               ; preds = %52
  %62 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %63 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %64 = call i32 @wl12xx_init_vif_data(%struct.wl1271* %62, %struct.ieee80211_vif* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %213

68:                                               ; preds = %61
  %69 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %70 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %71 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %70, i32 0, i32 5
  store %struct.wl1271* %69, %struct.wl1271** %71, align 8
  %72 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %73 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %74 = call i64 @wl12xx_get_role_type(%struct.wl1271* %72, %struct.wl12xx_vif* %73)
  store i64 %74, i64* %10, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* @WL12XX_INVALID_ROLE_TYPE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %9, align 4
  br label %213

81:                                               ; preds = %68
  %82 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %83 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %84 = call i32 @wlcore_allocate_hw_queue_base(%struct.wl1271* %82, %struct.wl12xx_vif* %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %213

88:                                               ; preds = %81
  %89 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %90 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @WLCORE_STATE_OFF, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %112

94:                                               ; preds = %88
  %95 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %96 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %95, i32 0, i32 8
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %102 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @ETH_ALEN, align 4
  %105 = call i32 @memcpy(i32 %100, i32 %103, i32 %104)
  %106 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %107 = call i32 @wl12xx_init_fw(%struct.wl1271* %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %94
  br label %213

111:                                              ; preds = %94
  br label %112

112:                                              ; preds = %111, %88
  %113 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %114 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @pm_runtime_get_sync(i32 %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %112
  %120 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %121 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @pm_runtime_put_noidle(i32 %122)
  br label %222

124:                                              ; preds = %112
  %125 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %126 = getelementptr inbounds %struct.vif_counter_data, %struct.vif_counter_data* %8, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @wl12xx_need_fw_change(%struct.wl1271* %125, i32 %127, i32 1)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %124
  %131 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %132 = call i32 @wl12xx_force_active_psm(%struct.wl1271* %131)
  %133 = load i32, i32* @WL1271_FLAG_INTENDED_FW_RECOVERY, align 4
  %134 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %135 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %134, i32 0, i32 7
  %136 = call i32 @set_bit(i32 %133, i32* %135)
  %137 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %138 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %137, i32 0, i32 1
  %139 = call i32 @mutex_unlock(i32* %138)
  %140 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %141 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %140, i32 0, i32 6
  %142 = call i32 @wl1271_recovery_work(i32* %141)
  store i32 0, i32* %3, align 4
  br label %227

143:                                              ; preds = %124
  %144 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %145 = call i32 @wlcore_is_p2p_mgmt(%struct.wl12xx_vif* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %167, label %147

147:                                              ; preds = %143
  %148 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %149 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %150 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i64, i64* %10, align 8
  %153 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %154 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %153, i32 0, i32 4
  %155 = call i32 @wl12xx_cmd_role_enable(%struct.wl1271* %148, i32 %151, i64 %152, i32* %154)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %147
  br label %213

159:                                              ; preds = %147
  %160 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %161 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %162 = call i32 @wl1271_init_vif_specific(%struct.wl1271* %160, %struct.ieee80211_vif* %161)
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %159
  br label %213

166:                                              ; preds = %159
  br label %187

167:                                              ; preds = %143
  %168 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %169 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %170 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i64, i64* @WL1271_ROLE_DEVICE, align 8
  %173 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %174 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %173, i32 0, i32 3
  %175 = call i32 @wl12xx_cmd_role_enable(%struct.wl1271* %168, i32 %171, i64 %172, i32* %174)
  store i32 %175, i32* %9, align 4
  %176 = load i32, i32* %9, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %167
  br label %213

179:                                              ; preds = %167
  %180 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %181 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %182 = call i32 @wl1271_sta_hw_init(%struct.wl1271* %180, %struct.wl12xx_vif* %181)
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  br label %213

186:                                              ; preds = %179
  br label %187

187:                                              ; preds = %186, %166
  %188 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %189 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %188, i32 0, i32 2
  %190 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %191 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %190, i32 0, i32 5
  %192 = call i32 @list_add(i32* %189, i32* %191)
  %193 = load i32, i32* @WLVIF_FLAG_INITIALIZED, align 4
  %194 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %195 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %194, i32 0, i32 1
  %196 = call i32 @set_bit(i32 %193, i32* %195)
  %197 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %198 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %207

202:                                              ; preds = %187
  %203 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %204 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 4
  br label %212

207:                                              ; preds = %187
  %208 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %209 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 8
  br label %212

212:                                              ; preds = %207, %202
  br label %213

213:                                              ; preds = %212, %185, %178, %165, %158, %110, %87, %78, %67, %58
  %214 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %215 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @pm_runtime_mark_last_busy(i32 %216)
  %218 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %219 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @pm_runtime_put_autosuspend(i32 %220)
  br label %222

222:                                              ; preds = %213, %119
  %223 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %224 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %223, i32 0, i32 1
  %225 = call i32 @mutex_unlock(i32* %224)
  %226 = load i32, i32* %9, align 4
  store i32 %226, i32* %3, align 4
  br label %227

227:                                              ; preds = %222, %130, %20
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32, i32) #1

declare dso_local i32 @ieee80211_vif_type_p2p(%struct.ieee80211_vif*) #1

declare dso_local i32 @wl12xx_get_vif_count(%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.vif_counter_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @wl12xx_init_vif_data(%struct.wl1271*, %struct.ieee80211_vif*) #1

declare dso_local i64 @wl12xx_get_role_type(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wlcore_allocate_hw_queue_base(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @wl12xx_init_fw(%struct.wl1271*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i64 @wl12xx_need_fw_change(%struct.wl1271*, i32, i32) #1

declare dso_local i32 @wl12xx_force_active_psm(%struct.wl1271*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wl1271_recovery_work(i32*) #1

declare dso_local i32 @wlcore_is_p2p_mgmt(%struct.wl12xx_vif*) #1

declare dso_local i32 @wl12xx_cmd_role_enable(%struct.wl1271*, i32, i64, i32*) #1

declare dso_local i32 @wl1271_init_vif_specific(%struct.wl1271*, %struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_sta_hw_init(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
