; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_enable_aspm_back_door.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_enable_aspm_back_door.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i64 }

@HARDWARE_TYPE_RTL8821AE = common dso_local global i64 0, align 8
@ASPM_L1_LATENCY = common dso_local global i32 0, align 4
@HARDWARE_TYPE_RTL8812AE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl8821ae_enable_aspm_back_door to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_enable_aspm_back_door(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  %10 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %9)
  store %struct.rtl_hal* %10, %struct.rtl_hal** %4, align 8
  %11 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %12 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HARDWARE_TYPE_RTL8821AE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %1
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %18 = call i32 @_rtl8821ae_mdio_read(%struct.rtl_priv* %17, i32 4)
  %19 = icmp ne i32 %18, 34116
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %22 = call i32 @_rtl8821ae_mdio_write(%struct.rtl_priv* %21, i32 4, i32 34116)
  br label %23

23:                                               ; preds = %20, %16
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %25 = call i32 @_rtl8821ae_mdio_read(%struct.rtl_priv* %24, i32 11)
  %26 = icmp ne i32 %25, 112
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %29 = call i32 @_rtl8821ae_mdio_write(%struct.rtl_priv* %28, i32 11, i32 112)
  br label %30

30:                                               ; preds = %27, %23
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %33 = call i32 @_rtl8821ae_dbi_read(%struct.rtl_priv* %32, i32 1807)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @BIT(i32 7)
  %37 = or i32 %35, %36
  %38 = load i32, i32* @ASPM_L1_LATENCY, align 4
  %39 = shl i32 %38, 3
  %40 = or i32 %37, %39
  %41 = call i32 @_rtl8821ae_dbi_write(%struct.rtl_priv* %34, i32 1807, i32 %40)
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %43 = call i32 @_rtl8821ae_dbi_read(%struct.rtl_priv* %42, i32 1817)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @BIT(i32 3)
  %47 = or i32 %45, %46
  %48 = call i32 @BIT(i32 4)
  %49 = or i32 %47, %48
  %50 = call i32 @_rtl8821ae_dbi_write(%struct.rtl_priv* %44, i32 1817, i32 %49)
  %51 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %52 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %31
  %57 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %58 = call i32 @_rtl8821ae_dbi_read(%struct.rtl_priv* %57, i32 1816)
  store i32 %58, i32* %5, align 4
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @BIT(i32 4)
  %62 = or i32 %60, %61
  %63 = call i32 @_rtl8821ae_dbi_write(%struct.rtl_priv* %59, i32 1816, i32 %62)
  br label %64

64:                                               ; preds = %56, %31
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @_rtl8821ae_mdio_read(%struct.rtl_priv*, i32) #1

declare dso_local i32 @_rtl8821ae_mdio_write(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @_rtl8821ae_dbi_read(%struct.rtl_priv*, i32) #1

declare dso_local i32 @_rtl8821ae_dbi_write(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
