; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c_rtl92ee_phy_set_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c_rtl92ee_phy_set_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.dig_t, %struct.rtl_phy }
%struct.dig_t = type { i32, i32 }
%struct.rtl_phy = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@COMP_CMD = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"--->Cmd(%#x), set_io_inprogress(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"no set txpower\0A\00", align 1
@COMP_ERR = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"switch case %#x not processed\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"(%#x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl92ee_phy_set_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92ee_phy_set_io(%struct.ieee80211_hw* %0) #0 {
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
  %21 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %12, i32 %13, i32 %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  %22 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %23 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %64 [
    i32 128, label %25
    i32 129, label %47
  ]

25:                                               ; preds = %1
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %27 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %28 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @rtl92ee_dm_write_dig(%struct.ieee80211_hw* %26, i32 %30)
  %32 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %33 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %34 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rtl92ee_dm_write_cck_cca_thres(%struct.ieee80211_hw* %32, i32 %36)
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %39 = load i32, i32* @COMP_CMD, align 4
  %40 = load i32, i32* @DBG_TRACE, align 4
  %41 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %38, i32 %39, i32 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %43 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %44 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @rtl92ee_phy_set_txpower_level(%struct.ieee80211_hw* %42, i32 %45)
  br label %72

47:                                               ; preds = %1
  %48 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %49 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %52 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %55 = call i32 @rtl92ee_dm_write_dig(%struct.ieee80211_hw* %54, i32 23)
  %56 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %57 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %60 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %63 = call i32 @rtl92ee_dm_write_cck_cca_thres(%struct.ieee80211_hw* %62, i32 64)
  br label %72

64:                                               ; preds = %1
  %65 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %66 = load i32, i32* @COMP_ERR, align 4
  %67 = load i32, i32* @DBG_LOUD, align 4
  %68 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %69 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %65, i32 %66, i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %64, %47, %25
  %73 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %74 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %73, i32 0, i32 1
  store i32 0, i32* %74, align 4
  %75 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %76 = load i32, i32* @COMP_CMD, align 4
  %77 = load i32, i32* @DBG_TRACE, align 4
  %78 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %79 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %75, i32 %76, i32 %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl92ee_dm_write_dig(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl92ee_dm_write_cck_cca_thres(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl92ee_phy_set_txpower_level(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
