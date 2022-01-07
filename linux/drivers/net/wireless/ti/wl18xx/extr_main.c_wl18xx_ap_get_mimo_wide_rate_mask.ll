; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_ap_get_mimo_wide_rate_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_ap_get_mimo_wide_rate_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i64, i64 }

@NL80211_CHAN_HT40MINUS = common dso_local global i64 0, align 8
@NL80211_CHAN_HT40PLUS = common dso_local global i64 0, align 8
@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"using wide channel rate mask\00", align 1
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@CONF_TX_RATE_USE_WIDE_CHAN = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"using MIMO rate mask\00", align 1
@CONF_TX_MIMO_RATES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*)* @wl18xx_ap_get_mimo_wide_rate_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl18xx_ap_get_mimo_wide_rate_mask(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  %6 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %7 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @NL80211_CHAN_HT40MINUS, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %13 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NL80211_CHAN_HT40PLUS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %11, %2
  %18 = load i32, i32* @DEBUG_ACX, align 4
  %19 = call i32 @wl1271_debug(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %21 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %24 = icmp ne i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %46

29:                                               ; preds = %17
  %30 = load i32, i32* @CONF_TX_RATE_USE_WIDE_CHAN, align 4
  store i32 %30, i32* %3, align 4
  br label %46

31:                                               ; preds = %11
  %32 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %33 = call i64 @wl18xx_is_mimo_supported(%struct.wl1271* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %37 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* @DEBUG_ACX, align 4
  %43 = call i32 @wl1271_debug(i32 %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @CONF_TX_MIMO_RATES, align 4
  store i32 %44, i32* %3, align 4
  br label %46

45:                                               ; preds = %35, %31
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %41, %29, %28
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @wl18xx_is_mimo_supported(%struct.wl1271*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
