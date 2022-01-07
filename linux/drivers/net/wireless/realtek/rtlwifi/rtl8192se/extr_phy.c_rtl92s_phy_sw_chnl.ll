; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c_rtl92s_phy_sw_chnl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c_rtl92s_phy_sw_chnl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32, i64, i64, i32, i64 }
%struct.rtl_hal = type { i32 }

@COMP_SCAN = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"switch to channel%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"<==\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92s_phy_sw_chnl(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.rtl_hal*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %4, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %12)
  store %struct.rtl_hal* %13, %struct.rtl_hal** %5, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 0
  store %struct.rtl_phy* %15, %struct.rtl_phy** %6, align 8
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %17 = load i32, i32* @COMP_SCAN, align 4
  %18 = load i32, i32* @DBG_TRACE, align 4
  %19 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %20 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %16, i32 %17, i32 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %24 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %84

28:                                               ; preds = %1
  %29 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %30 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %84

34:                                               ; preds = %28
  %35 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %36 = call i64 @is_hal_stop(%struct.rtl_hal* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %84

39:                                               ; preds = %34
  %40 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %41 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %43 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %45 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %76, %39
  %47 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %48 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %77

52:                                               ; preds = %46
  %53 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %54 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %55 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %58 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %57, i32 0, i32 2
  %59 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %60 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %59, i32 0, i32 1
  %61 = call i32 @_rtl92s_phy_sw_chnl_step_by_step(%struct.ieee80211_hw* %53, i32 %56, i64* %58, i64* %60, i64* %7)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %52
  %65 = load i64, i64* %7, align 8
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @mdelay(i64 %68)
  br label %71

70:                                               ; preds = %64
  br label %76

71:                                               ; preds = %67
  br label %75

72:                                               ; preds = %52
  %73 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %74 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  br label %75

75:                                               ; preds = %72, %71
  br label %77

76:                                               ; preds = %70
  br i1 true, label %46, label %77

77:                                               ; preds = %76, %75, %51
  %78 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %79 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  %80 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %81 = load i32, i32* @COMP_SCAN, align 4
  %82 = load i32, i32* @DBG_TRACE, align 4
  %83 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %80, i32 %81, i32 %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %84

84:                                               ; preds = %77, %38, %33, %27
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i64 @is_hal_stop(%struct.rtl_hal*) #1

declare dso_local i32 @_rtl92s_phy_sw_chnl_step_by_step(%struct.ieee80211_hw*, i32, i64*, i64*, i64*) #1

declare dso_local i32 @mdelay(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
