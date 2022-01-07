; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723com/extr_phy_common.c_rtl8723_phy_path_adda_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723com/extr_phy_common.c_rtl8723_phy_path_adda_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_hal = type { i64 }

@HARDWARE_TYPE_RTL8723AE = common dso_local global i64 0, align 8
@MASKDWORD = common dso_local global i32 0, align 4
@IQK_ADDA_REG_NUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723_phy_path_adda_on(%struct.ieee80211_hw* %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_hal*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = call i32 @rtl_priv(%struct.ieee80211_hw* %12)
  %14 = call %struct.rtl_hal* @rtl_hal(i32 %13)
  store %struct.rtl_hal* %14, %struct.rtl_hal** %9, align 8
  %15 = load %struct.rtl_hal*, %struct.rtl_hal** %9, align 8
  %16 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HARDWARE_TYPE_RTL8723AE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 81470884, i32 186328484
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %10, align 8
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %20
  store i64 198911392, i64* %10, align 8
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %30 = load i64*, i64** %6, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @MASKDWORD, align 4
  %34 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %29, i64 %32, i32 %33, i64 186328480)
  br label %43

35:                                               ; preds = %20
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %37 = load i64*, i64** %6, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @MASKDWORD, align 4
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %36, i64 %39, i32 %40, i64 %41)
  br label %43

43:                                               ; preds = %35, %28
  br label %52

44:                                               ; preds = %4
  store i64 29360148, i64* %10, align 8
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %46 = load i64*, i64** %6, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @MASKDWORD, align 4
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %45, i64 %48, i32 %49, i64 %50)
  br label %52

52:                                               ; preds = %44, %43
  store i64 1, i64* %11, align 8
  br label %53

53:                                               ; preds = %66, %52
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* @IQK_ADDA_REG_NUM, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %59 = load i64*, i64** %6, align 8
  %60 = load i64, i64* %11, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @MASKDWORD, align 4
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %58, i64 %62, i32 %63, i64 %64)
  br label %66

66:                                               ; preds = %57
  %67 = load i64, i64* %11, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %11, align 8
  br label %53

69:                                               ; preds = %53
  ret void
}

declare dso_local %struct.rtl_hal* @rtl_hal(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
