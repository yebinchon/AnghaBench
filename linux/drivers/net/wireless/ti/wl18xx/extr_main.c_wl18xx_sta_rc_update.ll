; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_sta_rc_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_sta_rc_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@IEEE80211_STA_RX_BW_40 = common dso_local global i64 0, align 8
@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"mac80211 sta_rc_update wide %d\00", align 1
@BSS_TYPE_STA_BSS = common dso_local global i64 0, align 8
@WLVIF_FLAG_STA_ASSOCIATED = common dso_local global i32 0, align 4
@NL80211_CHAN_HT40MINUS = common dso_local global i64 0, align 8
@NL80211_CHAN_HT40PLUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, %struct.wl12xx_vif*)* @wl18xx_sta_rc_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl18xx_sta_rc_update(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.wl12xx_vif*, align 8
  %5 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %4, align 8
  %6 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %7 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IEEE80211_STA_RX_BW_40, align 8
  %10 = icmp sge i64 %8, %9
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @DEBUG_MAC80211, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @wl1271_debug(i32 %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %16 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BSS_TYPE_STA_BSS, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %57

24:                                               ; preds = %2
  %25 = load i32, i32* @WLVIF_FLAG_STA_ASSOCIATED, align 4
  %26 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %27 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %26, i32 0, i32 3
  %28 = call i32 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %57

31:                                               ; preds = %24
  %32 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %33 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NL80211_CHAN_HT40MINUS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %31
  %39 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %40 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NL80211_CHAN_HT40PLUS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %38, %31
  %46 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %47 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %48 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @wl18xx_acx_peer_ht_operation_mode(%struct.wl1271* %46, i32 %50, i32 %51)
  br label %57

53:                                               ; preds = %38
  %54 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %55 = call i32 @wl12xx_wlvif_to_vif(%struct.wl12xx_vif* %54)
  %56 = call i32 @ieee80211_connection_loss(i32 %55)
  br label %57

57:                                               ; preds = %23, %30, %53, %45
  ret void
}

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @wl18xx_acx_peer_ht_operation_mode(%struct.wl1271*, i32, i32) #1

declare dso_local i32 @ieee80211_connection_loss(i32) #1

declare dso_local i32 @wl12xx_wlvif_to_vif(%struct.wl12xx_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
