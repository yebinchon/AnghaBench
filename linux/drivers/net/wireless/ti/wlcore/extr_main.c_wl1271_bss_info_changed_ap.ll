; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_bss_info_changed_ap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_bss_info_changed_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32* }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.wl12xx_vif = type { i32, i32, i32, i32, i32 }

@BSS_CHANGED_BASIC_RATES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"AP rate policy change failed %d\00", align 1
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@WLVIF_FLAG_AP_STARTED = common dso_local global i32 0, align 4
@DEBUG_AP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"started AP\00", align 1
@WLVIF_FLAG_AP_PROBE_RESP_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"stopped AP\00", align 1
@BSS_CHANGED_HT = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"Set ht information failed %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @wl1271_bss_info_changed_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1271_bss_info_changed_ap(%struct.wl1271* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wl12xx_vif*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %13 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %12)
  store %struct.wl12xx_vif* %13, %struct.wl12xx_vif** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @BSS_CHANGED_BASIC_RATES, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %75

18:                                               ; preds = %4
  %19 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %20 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %25 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @wl1271_tx_enabled_rates_get(%struct.wl1271* %22, i32 %23, i32 %26)
  %28 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %29 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %31 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %32 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @wl1271_tx_min_rate_get(%struct.wl1271* %30, i32 %33)
  %35 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %36 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %38 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %39 = call i32 @wl1271_init_ap_rates(%struct.wl1271* %37, %struct.wl12xx_vif* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %18
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @wl1271_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %198

45:                                               ; preds = %18
  %46 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %47 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %48 = call i32 @wl1271_ap_init_templates(%struct.wl1271* %46, %struct.ieee80211_vif* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %198

52:                                               ; preds = %45
  %53 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %54 = call i32 @ieee80211_vif_is_mesh(%struct.ieee80211_vif* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %52
  %57 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %58 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %59 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %62 = call i32 @wl1271_ap_set_probe_resp_tmpl(%struct.wl1271* %57, i32 %60, %struct.ieee80211_vif* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %198

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %52
  %68 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %69 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %70 = call i32 @wlcore_set_beacon_template(%struct.wl1271* %68, %struct.ieee80211_vif* %69, i32 1)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %198

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %4
  %76 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %77 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %78 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @wl1271_bss_beacon_info_changed(%struct.wl1271* %76, %struct.ieee80211_vif* %77, %struct.ieee80211_bss_conf* %78, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %198

84:                                               ; preds = %75
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %163

89:                                               ; preds = %84
  %90 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %91 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %122

94:                                               ; preds = %89
  %95 = load i32, i32* @WLVIF_FLAG_AP_STARTED, align 4
  %96 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %97 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %96, i32 0, i32 0
  %98 = call i64 @test_bit(i32 %95, i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %121, label %100

100:                                              ; preds = %94
  %101 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %102 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %103 = call i32 @wl12xx_cmd_role_start_ap(%struct.wl1271* %101, %struct.wl12xx_vif* %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %198

107:                                              ; preds = %100
  %108 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %109 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %110 = call i32 @wl1271_ap_init_hwenc(%struct.wl1271* %108, %struct.wl12xx_vif* %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %198

114:                                              ; preds = %107
  %115 = load i32, i32* @WLVIF_FLAG_AP_STARTED, align 4
  %116 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %117 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %116, i32 0, i32 0
  %118 = call i32 @set_bit(i32 %115, i32* %117)
  %119 = load i32, i32* @DEBUG_AP, align 4
  %120 = call i32 @wl1271_debug(i32 %119, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %121

121:                                              ; preds = %114, %94
  br label %162

122:                                              ; preds = %89
  %123 = load i32, i32* @WLVIF_FLAG_AP_STARTED, align 4
  %124 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %125 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %124, i32 0, i32 0
  %126 = call i64 @test_bit(i32 %123, i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %161

128:                                              ; preds = %122
  %129 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %130 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %133 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = call i64 @test_bit(i32 %131, i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %128
  %138 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %139 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %140 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @wl12xx_croc(%struct.wl1271* %138, i32 %141)
  br label %143

143:                                              ; preds = %137, %128
  %144 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %145 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %146 = call i32 @wl12xx_cmd_role_stop_ap(%struct.wl1271* %144, %struct.wl12xx_vif* %145)
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  br label %198

150:                                              ; preds = %143
  %151 = load i32, i32* @WLVIF_FLAG_AP_STARTED, align 4
  %152 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %153 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %152, i32 0, i32 0
  %154 = call i32 @clear_bit(i32 %151, i32* %153)
  %155 = load i32, i32* @WLVIF_FLAG_AP_PROBE_RESP_SET, align 4
  %156 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %157 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %156, i32 0, i32 0
  %158 = call i32 @clear_bit(i32 %155, i32* %157)
  %159 = load i32, i32* @DEBUG_AP, align 4
  %160 = call i32 @wl1271_debug(i32 %159, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %161

161:                                              ; preds = %150, %122
  br label %162

162:                                              ; preds = %161, %121
  br label %163

163:                                              ; preds = %162, %84
  %164 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %165 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %166 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @wl1271_bss_erp_info_changed(%struct.wl1271* %164, %struct.ieee80211_vif* %165, %struct.ieee80211_bss_conf* %166, i32 %167)
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %163
  br label %198

172:                                              ; preds = %163
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* @BSS_CHANGED_HT, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %197

177:                                              ; preds = %172
  %178 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %179 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @NL80211_CHAN_WIDTH_20_NOHT, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %197

184:                                              ; preds = %177
  %185 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %186 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %187 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %188 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @wl1271_acx_set_ht_information(%struct.wl1271* %185, %struct.wl12xx_vif* %186, i32 %189)
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %10, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %184
  %194 = load i32, i32* %10, align 4
  %195 = call i32 @wl1271_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %194)
  br label %198

196:                                              ; preds = %184
  br label %197

197:                                              ; preds = %196, %177, %172
  br label %198

198:                                              ; preds = %197, %193, %171, %149, %113, %106, %83, %73, %65, %51, %42
  ret void
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_tx_enabled_rates_get(%struct.wl1271*, i32, i32) #1

declare dso_local i32 @wl1271_tx_min_rate_get(%struct.wl1271*, i32) #1

declare dso_local i32 @wl1271_init_ap_rates(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_error(i8*, i32) #1

declare dso_local i32 @wl1271_ap_init_templates(%struct.wl1271*, %struct.ieee80211_vif*) #1

declare dso_local i32 @ieee80211_vif_is_mesh(%struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_ap_set_probe_resp_tmpl(%struct.wl1271*, i32, %struct.ieee80211_vif*) #1

declare dso_local i32 @wlcore_set_beacon_template(%struct.wl1271*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @wl1271_bss_beacon_info_changed(%struct.wl1271*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @wl12xx_cmd_role_start_ap(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_ap_init_hwenc(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i32 @wl12xx_croc(%struct.wl1271*, i32) #1

declare dso_local i32 @wl12xx_cmd_role_stop_ap(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wl1271_bss_erp_info_changed(%struct.wl1271*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32) #1

declare dso_local i32 @wl1271_acx_set_ht_information(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
