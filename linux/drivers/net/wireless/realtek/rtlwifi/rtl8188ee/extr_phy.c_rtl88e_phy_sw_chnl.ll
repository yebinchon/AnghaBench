; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c_rtl88e_phy_sw_chnl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c_rtl88e_phy_sw_chnl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32, i32, i64, i64, i64 }
%struct.rtl_hal = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"rtl8188ee: WIRELESS_MODE_G but channel>14\00", align 1
@COMP_CHAN = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"sw_chnl_inprogress false schedule workitem current channel %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"sw_chnl_inprogress false driver sleep or unload\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl88e_phy_sw_chnl(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.rtl_phy*, align 8
  %6 = alloca %struct.rtl_hal*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %4, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %10 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %9, i32 0, i32 0
  store %struct.rtl_phy* %10, %struct.rtl_phy** %5, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %12)
  store %struct.rtl_hal* %13, %struct.rtl_hal** %6, align 8
  %14 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %15 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

19:                                               ; preds = %1
  %20 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %21 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %65

25:                                               ; preds = %19
  %26 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %27 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 14
  %30 = zext i1 %29 to i32
  %31 = call i32 @WARN_ONCE(i32 %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %33 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %35 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %37 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %39 = call i32 @is_hal_stop(%struct.rtl_hal* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %25
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %43 = call i32 @RT_CANNOT_IO(%struct.ieee80211_hw* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %41
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %47 = call i32 @rtl88e_phy_sw_chnl_callback(%struct.ieee80211_hw* %46)
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %49 = load i32, i32* @COMP_CHAN, align 4
  %50 = load i32, i32* @DBG_LOUD, align 4
  %51 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %52 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %56 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %64

57:                                               ; preds = %41, %25
  %58 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %59 = load i32, i32* @COMP_CHAN, align 4
  %60 = load i32, i32* @DBG_LOUD, align 4
  %61 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %58, i32 %59, i32 %60, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %62 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %63 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  br label %64

64:                                               ; preds = %57, %45
  store i32 1, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %24, %18
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @is_hal_stop(%struct.rtl_hal*) #1

declare dso_local i32 @RT_CANNOT_IO(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl88e_phy_sw_chnl_callback(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
