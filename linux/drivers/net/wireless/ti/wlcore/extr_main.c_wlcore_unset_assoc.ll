; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_unset_assoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_unset_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i64, %struct.TYPE_2__, i32, i32, i32*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_vif = type { i32 }

@BSS_TYPE_STA_BSS = common dso_local global i64 0, align 8
@WLVIF_FLAG_STA_ASSOCIATED = common dso_local global i32 0, align 4
@WLVIF_FLAG_IBSS_JOINED = common dso_local global i32 0, align 4
@WLVIF_FLAG_CS_PROGRESS = common dso_local global i32 0, align 4
@ACX_KEEP_ALIVE_TPL_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*)* @wlcore_unset_assoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_unset_assoc(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_vif*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  %9 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %10 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BSS_TYPE_STA_BSS, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32, i32* @WLVIF_FLAG_STA_ASSOCIATED, align 4
  %19 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %20 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %19, i32 0, i32 3
  %21 = call i64 @test_and_clear_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %96

24:                                               ; preds = %17, %2
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @WLVIF_FLAG_IBSS_JOINED, align 4
  %29 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %30 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %29, i32 0, i32 3
  %31 = call i64 @test_and_clear_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %96

34:                                               ; preds = %27, %24
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %70

37:                                               ; preds = %34
  %38 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %39 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %38, i32 0, i32 5
  store i64 0, i64* %39, align 8
  %40 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %41 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @dev_kfree_skb(i32* %42)
  %44 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %45 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %44, i32 0, i32 4
  store i32* null, i32** %45, align 8
  %46 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %47 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %48 = call i32 @wl1271_acx_conn_monit_params(%struct.wl1271* %46, %struct.wl12xx_vif* %47, i32 0)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %37
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %96

53:                                               ; preds = %37
  %54 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %55 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %56 = call i32 @wl1271_acx_keep_alive_mode(%struct.wl1271* %54, %struct.wl12xx_vif* %55, i32 0)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %96

61:                                               ; preds = %53
  %62 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %63 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %64 = call i32 @wl1271_acx_beacon_filter_opt(%struct.wl1271* %62, %struct.wl12xx_vif* %63, i32 0)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %96

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %34
  %71 = load i32, i32* @WLVIF_FLAG_CS_PROGRESS, align 4
  %72 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %73 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %72, i32 0, i32 3
  %74 = call i64 @test_and_clear_bit(i32 %71, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %70
  %77 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %78 = call %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif* %77)
  store %struct.ieee80211_vif* %78, %struct.ieee80211_vif** %8, align 8
  %79 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %80 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %81 = call i32 @wl12xx_cmd_stop_channel_switch(%struct.wl1271* %79, %struct.wl12xx_vif* %80)
  %82 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %83 = call i32 @ieee80211_chswitch_done(%struct.ieee80211_vif* %82, i32 0)
  %84 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %85 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %84, i32 0, i32 2
  %86 = call i32 @cancel_delayed_work(i32* %85)
  br label %87

87:                                               ; preds = %76, %70
  %88 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %89 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %90 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %91 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @ACX_KEEP_ALIVE_TPL_INVALID, align 4
  %95 = call i32 @wl1271_acx_keep_alive_config(%struct.wl1271* %88, %struct.wl12xx_vif* %89, i32 %93, i32 %94)
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %87, %67, %59, %51, %33, %23
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @wl1271_acx_conn_monit_params(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

declare dso_local i32 @wl1271_acx_keep_alive_mode(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

declare dso_local i32 @wl1271_acx_beacon_filter_opt(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

declare dso_local %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif*) #1

declare dso_local i32 @wl12xx_cmd_stop_channel_switch(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @ieee80211_chswitch_done(%struct.ieee80211_vif*, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @wl1271_acx_keep_alive_config(%struct.wl1271*, %struct.wl12xx_vif*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
