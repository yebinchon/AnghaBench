; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_rf.c_rtl8723be_phy_rf6052_set_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_rf.c_rtl8723be_phy_rf6052_set_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32* }

@RF90_PATH_A = common dso_local global i32 0, align 4
@RF_CHNLBW = common dso_local global i32 0, align 4
@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unknown bandwidth: %#X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723be_phy_rf6052_set_bandwidth(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %5, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %10 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %9, i32 0, i32 0
  store %struct.rtl_phy* %10, %struct.rtl_phy** %6, align 8
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %60 [
    i32 129, label %12
    i32 128, label %37
  ]

12:                                               ; preds = %2
  %13 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %14 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, -3073
  %19 = call i32 @BIT(i32 10)
  %20 = or i32 %18, %19
  %21 = call i32 @BIT(i32 11)
  %22 = or i32 %20, %21
  %23 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %24 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %22, i32* %26, align 4
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %28 = load i32, i32* @RF90_PATH_A, align 4
  %29 = load i32, i32* @RF_CHNLBW, align 4
  %30 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %31 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %32 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %27, i32 %28, i32 %29, i32 %30, i32 %35)
  br label %63

37:                                               ; preds = %2
  %38 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %39 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, -3073
  %44 = call i32 @BIT(i32 10)
  %45 = or i32 %43, %44
  %46 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %47 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %45, i32* %49, align 4
  %50 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %51 = load i32, i32* @RF90_PATH_A, align 4
  %52 = load i32, i32* @RF_CHNLBW, align 4
  %53 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %54 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %55 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %50, i32 %51, i32 %52, i32 %53, i32 %58)
  br label %63

60:                                               ; preds = %2
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %60, %37, %12
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_set_rfreg(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
