; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_phy_common.c__rtl92c_phy_set_rfpath_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_phy_common.c__rtl92c_phy_set_rfpath_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_hal = type { i32 }

@REG_LEDCFG0 = common dso_local global i32 0, align 4
@RFPGA0_XAB_RFPARAMETER = common dso_local global i32 0, align 4
@RFPGA0_XB_RFINTERFACEOE = common dso_local global i32 0, align 4
@RFPGA0_XA_RFINTERFACEOE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32)* @_rtl92c_phy_set_rfpath_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92c_phy_set_rfpath_switch(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_hal*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = call i32 @rtl_priv(%struct.ieee80211_hw* %8)
  %10 = call %struct.rtl_hal* @rtl_hal(i32 %9)
  store %struct.rtl_hal* %10, %struct.rtl_hal** %7, align 8
  %11 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %12 = call i64 @is_hal_stop(%struct.rtl_hal* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %16 = load i32, i32* @REG_LEDCFG0, align 4
  %17 = call i32 @BIT(i32 23)
  %18 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %15, i32 %16, i32 %17, i32 1)
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %20 = load i32, i32* @RFPGA0_XAB_RFPARAMETER, align 4
  %21 = call i32 @BIT(i32 13)
  %22 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %19, i32 %20, i32 %21, i32 1)
  br label %23

23:                                               ; preds = %14, %3
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %31 = load i32, i32* @RFPGA0_XB_RFINTERFACEOE, align 4
  %32 = call i32 @BIT(i32 5)
  %33 = call i32 @BIT(i32 6)
  %34 = or i32 %32, %33
  %35 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %30, i32 %31, i32 %34, i32 1)
  br label %43

36:                                               ; preds = %26
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %38 = load i32, i32* @RFPGA0_XB_RFINTERFACEOE, align 4
  %39 = call i32 @BIT(i32 5)
  %40 = call i32 @BIT(i32 6)
  %41 = or i32 %39, %40
  %42 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %37, i32 %38, i32 %41, i32 2)
  br label %43

43:                                               ; preds = %36, %29
  br label %56

44:                                               ; preds = %23
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %49 = load i32, i32* @RFPGA0_XA_RFINTERFACEOE, align 4
  %50 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %48, i32 %49, i32 768, i32 2)
  br label %55

51:                                               ; preds = %44
  %52 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %53 = load i32, i32* @RFPGA0_XA_RFINTERFACEOE, align 4
  %54 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %52, i32 %53, i32 768, i32 1)
  br label %55

55:                                               ; preds = %51, %47
  br label %56

56:                                               ; preds = %55, %43
  ret void
}

declare dso_local %struct.rtl_hal* @rtl_hal(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @is_hal_stop(%struct.rtl_hal*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
