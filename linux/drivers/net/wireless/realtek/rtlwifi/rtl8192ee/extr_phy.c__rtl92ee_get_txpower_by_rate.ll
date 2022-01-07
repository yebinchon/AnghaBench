; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c__rtl92ee_get_txpower_by_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c__rtl92ee_get_txpower_by_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32**** }

@RF_TX_NUM_NONIMPLEMENT = common dso_local global i32 0, align 4
@RF_2TX = common dso_local global i32 0, align 4
@RF_1TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"rtl8192ee: Rate_Section is Illegal\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, i32, i32)* @_rtl92ee_get_txpower_by_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92ee_get_txpower_by_rate(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.rtl_phy*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  store %struct.rtl_priv* %16, %struct.rtl_priv** %9, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 0
  store %struct.rtl_phy* %18, %struct.rtl_phy** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @_rtl92ee_phy_get_ratesection_intxpower_byrate(i32 %19, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* @RF_TX_NUM_NONIMPLEMENT, align 4
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @RF_TX_NUM_NONIMPLEMENT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = icmp sge i32 %27, 129
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = icmp sle i32 %30, 136
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @RF_2TX, align 4
  store i32 %33, i32* %13, align 4
  br label %36

34:                                               ; preds = %29, %26
  %35 = load i32, i32* @RF_1TX, align 4
  store i32 %35, i32* %13, align 4
  br label %36

36:                                               ; preds = %34, %32
  br label %37

37:                                               ; preds = %36, %4
  %38 = load i32, i32* %8, align 4
  switch i32 %38, label %43 [
    i32 152, label %39
    i32 145, label %39
    i32 151, label %39
    i32 143, label %39
    i32 133, label %39
    i32 129, label %39
    i32 139, label %39
    i32 150, label %40
    i32 144, label %40
    i32 149, label %40
    i32 142, label %40
    i32 132, label %40
    i32 128, label %40
    i32 138, label %40
    i32 146, label %41
    i32 154, label %41
    i32 148, label %41
    i32 135, label %41
    i32 131, label %41
    i32 141, label %41
    i32 137, label %41
    i32 155, label %42
    i32 153, label %42
    i32 147, label %42
    i32 134, label %42
    i32 130, label %42
    i32 140, label %42
    i32 136, label %42
  ]

39:                                               ; preds = %37, %37, %37, %37, %37, %37, %37
  store i32 0, i32* %11, align 4
  br label %45

40:                                               ; preds = %37, %37, %37, %37, %37, %37, %37
  store i32 8, i32* %11, align 4
  br label %45

41:                                               ; preds = %37, %37, %37, %37, %37, %37, %37
  store i32 16, i32* %11, align 4
  br label %45

42:                                               ; preds = %37, %37, %37, %37, %37, %37, %37
  store i32 24, i32* %11, align 4
  br label %45

43:                                               ; preds = %37
  %44 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %42, %41, %40, %39
  %46 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %47 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %46, i32 0, i32 0
  %48 = load i32****, i32***** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32***, i32**** %48, i64 %50
  %52 = load i32***, i32**** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32**, i32*** %52, i64 %54
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %11, align 4
  %66 = ashr i32 %64, %65
  %67 = and i32 %66, 255
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  ret i32 %68
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92ee_phy_get_ratesection_intxpower_byrate(i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
