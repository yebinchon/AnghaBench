; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c__rtl92ee_phy_set_txpower_by_rate_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c__rtl92ee_phy_set_txpower_by_rate_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64*** }

@RF90_PATH_D = common dso_local global i64 0, align 8
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid Rf Path %d\0A\00", align 1
@BAND_ON_2_4G = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Invalid RateSection %d in 2.4G,Rf %d,%dTx\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Invalid Band %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64, i64, i64, i64, i64)* @_rtl92ee_phy_set_txpower_by_rate_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92ee_phy_set_txpower_by_rate_base(%struct.ieee80211_hw* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.rtl_priv*, align 8
  %14 = alloca %struct.rtl_phy*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  store %struct.rtl_priv* %16, %struct.rtl_priv** %13, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 0
  store %struct.rtl_phy* %18, %struct.rtl_phy** %14, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @RF90_PATH_D, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %6
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %24 = load i32, i32* @COMP_INIT, align 4
  %25 = load i32, i32* @DBG_LOUD, align 4
  %26 = load i64, i64* %9, align 8
  %27 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i64, ...) @RT_TRACE(%struct.rtl_priv* %23, i32 %24, i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %26)
  br label %97

28:                                               ; preds = %6
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @BAND_ON_2_4G, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %91

32:                                               ; preds = %28
  %33 = load i64, i64* %10, align 8
  switch i64 %33, label %82 [
    i64 131, label %34
    i64 128, label %46
    i64 130, label %58
    i64 129, label %70
  ]

34:                                               ; preds = %32
  %35 = load i64, i64* %12, align 8
  %36 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %37 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %36, i32 0, i32 0
  %38 = load i64***, i64**** %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds i64**, i64*** %38, i64 %39
  %41 = load i64**, i64*** %40, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds i64*, i64** %41, i64 %42
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  store i64 %35, i64* %45, align 8
  br label %90

46:                                               ; preds = %32
  %47 = load i64, i64* %12, align 8
  %48 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %49 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %48, i32 0, i32 0
  %50 = load i64***, i64**** %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds i64**, i64*** %50, i64 %51
  %53 = load i64**, i64*** %52, align 8
  %54 = load i64, i64* %11, align 8
  %55 = getelementptr inbounds i64*, i64** %53, i64 %54
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 1
  store i64 %47, i64* %57, align 8
  br label %90

58:                                               ; preds = %32
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %61 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %60, i32 0, i32 0
  %62 = load i64***, i64**** %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds i64**, i64*** %62, i64 %63
  %65 = load i64**, i64*** %64, align 8
  %66 = load i64, i64* %11, align 8
  %67 = getelementptr inbounds i64*, i64** %65, i64 %66
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 2
  store i64 %59, i64* %69, align 8
  br label %90

70:                                               ; preds = %32
  %71 = load i64, i64* %12, align 8
  %72 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %73 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %72, i32 0, i32 0
  %74 = load i64***, i64**** %73, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds i64**, i64*** %74, i64 %75
  %77 = load i64**, i64*** %76, align 8
  %78 = load i64, i64* %11, align 8
  %79 = getelementptr inbounds i64*, i64** %77, i64 %78
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 3
  store i64 %71, i64* %81, align 8
  br label %90

82:                                               ; preds = %32
  %83 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %84 = load i32, i32* @COMP_INIT, align 4
  %85 = load i32, i32* @DBG_LOUD, align 4
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %11, align 8
  %89 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i64, ...) @RT_TRACE(%struct.rtl_priv* %83, i32 %84, i32 %85, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %86, i64 %87, i64 %88)
  br label %90

90:                                               ; preds = %82, %70, %58, %46, %34
  br label %97

91:                                               ; preds = %28
  %92 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %93 = load i32, i32* @COMP_INIT, align 4
  %94 = load i32, i32* @DBG_LOUD, align 4
  %95 = load i64, i64* %8, align 8
  %96 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i64, ...) @RT_TRACE(%struct.rtl_priv* %92, i32 %93, i32 %94, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %95)
  br label %97

97:                                               ; preds = %22, %91, %90
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
