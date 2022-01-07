; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl1271_cmd_build_ap_probe_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl1271_cmd_build_ap_probe_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i64, i32, i32* }
%struct.sk_buff = type { i32, i32 }
%struct.ieee80211_vif = type { i32 }

@DEBUG_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"set ap probe request template\00", align 1
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@CMD_TEMPL_CFG_PROBE_REQ_2_4 = common dso_local global i32 0, align 4
@CMD_TEMPL_CFG_PROBE_REQ_5 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Unable to set ap probe request template.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @wl1271_cmd_build_ap_probe_req(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %10 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %11 = call %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif* %10)
  store %struct.ieee80211_vif* %11, %struct.ieee80211_vif** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %16 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %19 = call %struct.sk_buff* @ieee80211_ap_probereq_get(i32 %17, %struct.ieee80211_vif* %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %6, align 8
  br label %20

20:                                               ; preds = %14, %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  br label %76

24:                                               ; preds = %20
  %25 = load i32, i32* @DEBUG_SCAN, align 4
  %26 = call i32 @wl1271_debug(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %28 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %29 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %32 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @wl1271_tx_min_rate_get(%struct.wl1271* %27, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %38 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %24
  %43 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %44 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %45 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @CMD_TEMPL_CFG_PROBE_REQ_2_4, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @wl1271_cmd_template_set(%struct.wl1271* %43, i32 %46, i32 %47, i32 %50, i32 %53, i32 0, i32 %54)
  store i32 %55, i32* %8, align 4
  br label %70

56:                                               ; preds = %24
  %57 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %58 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %59 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @CMD_TEMPL_CFG_PROBE_REQ_5, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @wl1271_cmd_template_set(%struct.wl1271* %57, i32 %60, i32 %61, i32 %64, i32 %67, i32 0, i32 %68)
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %56, %42
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = call i32 @wl1271_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %70
  br label %76

76:                                               ; preds = %75, %23
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %77
}

declare dso_local %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif*) #1

declare dso_local %struct.sk_buff* @ieee80211_ap_probereq_get(i32, %struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i32 @wl1271_tx_min_rate_get(%struct.wl1271*, i32) #1

declare dso_local i32 @wl1271_cmd_template_set(%struct.wl1271*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
