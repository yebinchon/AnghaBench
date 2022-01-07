; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_phy_config_macphymode_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_phy_config_macphymode_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i8* }
%struct.rtl_hal = type { i32, i8*, i8*, i32, i32 }

@RF_2T2R = common dso_local global i8* null, align 8
@RF_TYPE_2T2R = common dso_local global i32 0, align 4
@BAND_ON_BOTH = common dso_local global i8* null, align 8
@BAND_ON_2_4G = common dso_local global i8* null, align 8
@RF_1T1R = common dso_local global i8* null, align 8
@RF_TYPE_1T1R = common dso_local global i32 0, align 4
@BAND_ON_5G = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92d_phy_config_macphymode_info(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca %struct.rtl_phy*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  %10 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %9)
  store %struct.rtl_hal* %10, %struct.rtl_hal** %4, align 8
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %12 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %11, i32 0, i32 0
  store %struct.rtl_phy* %12, %struct.rtl_phy** %5, align 8
  %13 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %14 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %74 [
    i32 129, label %16
    i32 128, label %31
    i32 130, label %46
  ]

16:                                               ; preds = %1
  %17 = load i8*, i8** @RF_2T2R, align 8
  %18 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %19 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* @RF_TYPE_2T2R, align 4
  %21 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %22 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i8*, i8** @BAND_ON_BOTH, align 8
  %26 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %27 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** @BAND_ON_2_4G, align 8
  %29 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %30 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  br label %75

31:                                               ; preds = %1
  %32 = load i8*, i8** @RF_2T2R, align 8
  %33 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %34 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* @RF_TYPE_2T2R, align 4
  %36 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %37 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i8*, i8** @BAND_ON_BOTH, align 8
  %41 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %42 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @BAND_ON_2_4G, align 8
  %44 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %45 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  br label %75

46:                                               ; preds = %1
  %47 = load i8*, i8** @RF_1T1R, align 8
  %48 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %49 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* @RF_TYPE_1T1R, align 4
  %51 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %52 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %56 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %46
  %60 = load i8*, i8** @BAND_ON_5G, align 8
  %61 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %62 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** @BAND_ON_5G, align 8
  %64 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %65 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  br label %73

66:                                               ; preds = %46
  %67 = load i8*, i8** @BAND_ON_2_4G, align 8
  %68 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %69 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** @BAND_ON_2_4G, align 8
  %71 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %72 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %66, %59
  br label %75

74:                                               ; preds = %1
  br label %75

75:                                               ; preds = %74, %73, %31, %16
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
