; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_sta_get_ap_rate_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_sta_get_ap_rate_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i64, i32 }

@NL80211_CHAN_HT40MINUS = common dso_local global i64 0, align 8
@NL80211_CHAN_HT40PLUS = common dso_local global i64 0, align 8
@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"using wide channel rate mask\00", align 1
@CONF_TX_RATE_USE_WIDE_CHAN = common dso_local global i32 0, align 4
@CONF_TX_MIMO_RATES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"using MIMO channel rate mask\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*)* @wl18xx_sta_get_ap_rate_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl18xx_sta_get_ap_rate_mask(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.wl12xx_vif*, align 8
  %5 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %4, align 8
  %6 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %7 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %10 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NL80211_CHAN_HT40MINUS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %16 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NL80211_CHAN_HT40PLUS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %14, %2
  %21 = load i32, i32* @DEBUG_ACX, align 4
  %22 = call i32 @wl1271_debug(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @CONF_TX_RATE_USE_WIDE_CHAN, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @CONF_TX_MIMO_RATES, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %41

30:                                               ; preds = %14
  %31 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %32 = call i64 @wl18xx_is_mimo_supported(%struct.wl1271* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* @DEBUG_ACX, align 4
  %36 = call i32 @wl1271_debug(i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @CONF_TX_MIMO_RATES, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %34, %30
  br label %41

41:                                               ; preds = %40, %20
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i64 @wl18xx_is_mimo_supported(%struct.wl1271*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
