; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_path_adda_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_path_adda_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@FINIT = common dso_local global i32 0, align 4
@INIT_IQK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ADDA ON.\0A\00", align 1
@IQK_ADDA_REG_NUM = common dso_local global i64 0, align 8
@MASKDWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64*, i32, i32)* @_rtl92d_phy_path_adda_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92d_phy_path_adda_on(%struct.ieee80211_hw* %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %9, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %15 = load i32, i32* @FINIT, align 4
  %16 = load i32, i32* @INIT_IQK, align 4
  %17 = call i32 @RTPRINT(%struct.rtl_priv* %14, i32 %15, i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 81470884, i32 186328484
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %10, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %4
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %27 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 81470884, i32 186328484
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %10, align 8
  br label %34

34:                                               ; preds = %25, %4
  store i64 0, i64* %11, align 8
  br label %35

35:                                               ; preds = %48, %34
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @IQK_ADDA_REG_NUM, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %41 = load i64*, i64** %6, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @MASKDWORD, align 4
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %40, i64 %44, i32 %45, i64 %46)
  br label %48

48:                                               ; preds = %39
  %49 = load i64, i64* %11, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %11, align 8
  br label %35

51:                                               ; preds = %35
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RTPRINT(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
