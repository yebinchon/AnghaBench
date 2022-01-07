; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c___wlcore_switch_vif_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c___wlcore_switch_vif_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.ieee80211_chanctx_conf = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"switch vif (role %d) %d -> %d chan_type: %d\00", align 1
@BSS_TYPE_AP_BSS = common dso_local global i64 0, align 8
@WLVIF_FLAG_BEACON_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Stop radar detection\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Start radar detection\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_chanctx_conf*)* @__wlcore_switch_vif_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__wlcore_switch_vif_chan(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.ieee80211_chanctx_conf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %8 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store %struct.ieee80211_chanctx_conf* %2, %struct.ieee80211_chanctx_conf** %7, align 8
  %9 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %7, align 8
  %10 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ieee80211_frequency_to_channel(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @DEBUG_MAC80211, align 4
  %17 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %18 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %21 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %7, align 8
  %25 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %24, i32 0, i32 1
  %26 = call i32 @cfg80211_get_chandef_type(%struct.TYPE_4__* %25)
  %27 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i32 %23, i32 %26)
  %28 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %29 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %32 = icmp ne i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN_ON_ONCE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %88

37:                                               ; preds = %3
  %38 = load i32, i32* @WLVIF_FLAG_BEACON_DISABLED, align 4
  %39 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %40 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %39, i32 0, i32 5
  %41 = call i32 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @WARN_ON(i32 %44)
  %46 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %47 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %37
  %51 = load i32, i32* @DEBUG_MAC80211, align 4
  %52 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %54 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %55 = call i32 @wlcore_hw_set_cac(%struct.wl1271* %53, %struct.wl12xx_vif* %54, i32 0)
  %56 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %57 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %56, i32 0, i32 2
  store i32 0, i32* %57, align 8
  br label %58

58:                                               ; preds = %50, %37
  %59 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %7, align 8
  %60 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %66 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %69 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %7, align 8
  %71 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %70, i32 0, i32 1
  %72 = call i32 @cfg80211_get_chandef_type(%struct.TYPE_4__* %71)
  %73 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %74 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %7, align 8
  %76 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %58
  %80 = load i32, i32* @DEBUG_MAC80211, align 4
  %81 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %82 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %83 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %84 = call i32 @wlcore_hw_set_cac(%struct.wl1271* %82, %struct.wl12xx_vif* %83, i32 1)
  %85 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %86 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %85, i32 0, i32 2
  store i32 1, i32* %86, align 8
  br label %87

87:                                               ; preds = %79, %58
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %36
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i32 @wl1271_debug(i32, i8*, ...) #1

declare dso_local i32 @cfg80211_get_chandef_type(%struct.TYPE_4__*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @wlcore_hw_set_cac(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
