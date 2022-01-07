; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c_rtl88e_phy_sw_chnl_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c_rtl88e_phy_sw_chnl_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32, i32, i32, i32 }
%struct.rtl_hal = type { i32 }

@COMP_SCAN = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"switch to channel%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl88e_phy_sw_chnl_callback(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca %struct.rtl_phy*, align 8
  %6 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  %11 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %10)
  store %struct.rtl_hal* %11, %struct.rtl_hal** %4, align 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %13 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %12, i32 0, i32 0
  store %struct.rtl_phy* %13, %struct.rtl_phy** %5, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %15 = load i32, i32* @COMP_SCAN, align 4
  %16 = load i32, i32* @DBG_TRACE, align 4
  %17 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %18 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %14, i32 %15, i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %22 = call i64 @is_hal_stop(%struct.rtl_hal* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %61

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %55, %25
  %27 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %28 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %56

32:                                               ; preds = %26
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %34 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %35 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %38 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %37, i32 0, i32 2
  %39 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %40 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %39, i32 0, i32 1
  %41 = call i32 @_rtl88e_phy_sw_chnl_step_by_step(%struct.ieee80211_hw* %33, i32 %36, i32* %38, i32* %40, i64* %6)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %32
  %44 = load i64, i64* %6, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @mdelay(i64 %47)
  br label %50

49:                                               ; preds = %43
  br label %55

50:                                               ; preds = %46
  br label %54

51:                                               ; preds = %32
  %52 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %53 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %50
  br label %56

55:                                               ; preds = %49
  br i1 true, label %26, label %56

56:                                               ; preds = %55, %54, %31
  %57 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %58 = load i32, i32* @COMP_SCAN, align 4
  %59 = load i32, i32* @DBG_TRACE, align 4
  %60 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %57, i32 %58, i32 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %56, %24
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i64 @is_hal_stop(%struct.rtl_hal*) #1

declare dso_local i32 @_rtl88e_phy_sw_chnl_step_by_step(%struct.ieee80211_hw*, i32, i32*, i32*, i64*) #1

declare dso_local i32 @mdelay(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
