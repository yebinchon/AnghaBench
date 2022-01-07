; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c_rtl88e_phy_set_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c_rtl88e_phy_set_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.dig_t, %struct.rtl_phy }
%struct.dig_t = type { i32 }
%struct.rtl_phy = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@COMP_CMD = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"--->Cmd(%#x), set_io_inprogress(%d)\0A\00", align 1
@RCCK0_CCA = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"switch case %#x not processed\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(%#x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl88e_phy_set_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl88e_phy_set_io(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_phy*, align 8
  %5 = alloca %struct.dig_t*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %9 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %8, i32 0, i32 1
  store %struct.rtl_phy* %9, %struct.rtl_phy** %4, align 8
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %11 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %10, i32 0, i32 0
  store %struct.dig_t* %11, %struct.dig_t** %5, align 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %13 = load i32, i32* @COMP_CMD, align 4
  %14 = load i32, i32* @DBG_TRACE, align 4
  %15 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %16 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %19 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %12, i32 %13, i32 %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  %22 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %23 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %52 [
    i32 128, label %25
    i32 129, label %40
  ]

25:                                               ; preds = %1
  %26 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %27 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %31 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %33 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %34 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @rtl88e_phy_set_txpower_level(%struct.ieee80211_hw* %32, i32 %35)
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %38 = load i32, i32* @RCCK0_CCA, align 4
  %39 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %37, i32 %38, i32 16711680, i32 131)
  br label %60

40:                                               ; preds = %1
  %41 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %42 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %45 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %48 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %47, i32 0, i32 0
  store i32 23, i32* %48, align 4
  %49 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %50 = load i32, i32* @RCCK0_CCA, align 4
  %51 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %49, i32 %50, i32 16711680, i32 64)
  br label %60

52:                                               ; preds = %1
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %54 = load i32, i32* @COMP_ERR, align 4
  %55 = load i32, i32* @DBG_LOUD, align 4
  %56 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %57 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %53, i32 %54, i32 %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %52, %40, %25
  %61 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %62 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  %63 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %64 = load i32, i32* @COMP_CMD, align 4
  %65 = load i32, i32* @DBG_TRACE, align 4
  %66 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %67 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %63, i32 %64, i32 %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @rtl88e_phy_set_txpower_level(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
