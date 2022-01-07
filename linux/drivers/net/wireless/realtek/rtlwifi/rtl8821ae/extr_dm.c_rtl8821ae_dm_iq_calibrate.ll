; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_dm_iq_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_dm_iq_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_mac = type { i64 }
%struct.rtl_dm = type { i32 }
%struct.rtl_hal = type { i64 }

@MAC80211_LINKED = common dso_local global i64 0, align 8
@HARDWARE_TYPE_RTL8812AE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8821ae_dm_iq_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8821ae_dm_iq_calibrate(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_mac*, align 8
  %4 = alloca %struct.rtl_dm*, align 8
  %5 = alloca %struct.rtl_hal*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call i32 @rtl_priv(%struct.ieee80211_hw* %6)
  %8 = call %struct.rtl_mac* @rtl_mac(i32 %7)
  store %struct.rtl_mac* %8, %struct.rtl_mac** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call i32 @rtl_priv(%struct.ieee80211_hw* %9)
  %11 = call %struct.rtl_dm* @rtl_dm(i32 %10)
  store %struct.rtl_dm* %11, %struct.rtl_dm** %4, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %13 = call i32 @rtl_priv(%struct.ieee80211_hw* %12)
  %14 = call %struct.rtl_hal* @rtl_hal(i32 %13)
  store %struct.rtl_hal* %14, %struct.rtl_hal** %5, align 8
  %15 = load %struct.rtl_mac*, %struct.rtl_mac** %3, align 8
  %16 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MAC80211_LINKED, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %1
  %21 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %22 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 3
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %27 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %32 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %37 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %43 = call i32 @rtl8812ae_phy_iq_calibrate(%struct.ieee80211_hw* %42, i32 0)
  br label %47

44:                                               ; preds = %35
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %46 = call i32 @rtl8821ae_phy_iq_calibrate(%struct.ieee80211_hw* %45, i32 0)
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47, %30
  br label %52

49:                                               ; preds = %1
  %50 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %51 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %48
  ret void
}

declare dso_local %struct.rtl_mac* @rtl_mac(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_dm* @rtl_dm(i32) #1

declare dso_local %struct.rtl_hal* @rtl_hal(i32) #1

declare dso_local i32 @rtl8812ae_phy_iq_calibrate(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl8821ae_phy_iq_calibrate(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
