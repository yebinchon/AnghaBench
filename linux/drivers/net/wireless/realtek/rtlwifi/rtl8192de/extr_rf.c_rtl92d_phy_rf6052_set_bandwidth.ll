; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_rf.c_rtl92d_phy_rf6052_set_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_rf.c_rtl92d_phy_rf6052_set_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32, i32* }

@RF_CHNLBW = common dso_local global i32 0, align 4
@COMP_RF = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"20M RF 0x18 = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"40M RF 0x18 = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"unknown bandwidth: %#X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92d_phy_rf6052_set_bandwidth(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %5, align 8
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %11 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %10, i32 0, i32 0
  store %struct.rtl_phy* %11, %struct.rtl_phy** %6, align 8
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %102 [
    i32 129, label %13
    i32 128, label %58
  ]

13:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %54, %13
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %17 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %57

20:                                               ; preds = %14
  %21 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %22 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, -3073
  %29 = or i32 %28, 1024
  %30 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %31 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %29, i32* %35, align 4
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @RF_CHNLBW, align 4
  %39 = call i32 @BIT(i32 10)
  %40 = call i32 @BIT(i32 11)
  %41 = or i32 %39, %40
  %42 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %36, i32 %37, i32 %38, i32 %41, i32 1)
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %44 = load i32, i32* @COMP_RF, align 4
  %45 = load i32, i32* @DBG_LOUD, align 4
  %46 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %47 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @RT_TRACE(%struct.rtl_priv* %43, i32 %44, i32 %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %20
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %14

57:                                               ; preds = %14
  br label %105

58:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %98, %58
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %62 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %101

65:                                               ; preds = %59
  %66 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %67 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, -3073
  %74 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %75 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %73, i32* %79, align 4
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @RF_CHNLBW, align 4
  %83 = call i32 @BIT(i32 10)
  %84 = call i32 @BIT(i32 11)
  %85 = or i32 %83, %84
  %86 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %80, i32 %81, i32 %82, i32 %85, i32 0)
  %87 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %88 = load i32, i32* @COMP_RF, align 4
  %89 = load i32, i32* @DBG_LOUD, align 4
  %90 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %91 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @RT_TRACE(%struct.rtl_priv* %87, i32 %88, i32 %89, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %65
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %59

101:                                              ; preds = %59
  br label %105

102:                                              ; preds = %2
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %102, %101, %57
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_set_rfreg(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
