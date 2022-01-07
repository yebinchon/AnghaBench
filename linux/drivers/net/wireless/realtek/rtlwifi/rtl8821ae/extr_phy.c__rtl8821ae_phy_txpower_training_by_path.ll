; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_txpower_training_by_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_txpower_training_by_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64 }

@RF90_PATH_A = common dso_local global i64 0, align 8
@DESC_RATEMCS7 = common dso_local global i32 0, align 4
@RA_TXPWRTRAING = common dso_local global i32 0, align 4
@RF90_PATH_B = common dso_local global i64 0, align 8
@RB_TXPWRTRAING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64, i64, i64)* @_rtl8821ae_phy_txpower_training_by_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_phy_txpower_training_by_path(%struct.ieee80211_hw* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.rtl_phy*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  store %struct.rtl_priv* %16, %struct.rtl_priv** %9, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 0
  store %struct.rtl_phy* %18, %struct.rtl_phy** %10, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %21 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %87

25:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @RF90_PATH_A, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %31 = load i64, i64* @RF90_PATH_A, align 8
  %32 = load i32, i32* @DESC_RATEMCS7, align 4
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @_rtl8821ae_get_txpower_index(%struct.ieee80211_hw* %30, i64 %31, i32 %32, i64 %33, i64 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* @RA_TXPWRTRAING, align 4
  store i32 %36, i32* %14, align 4
  br label %45

37:                                               ; preds = %25
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %39 = load i64, i64* @RF90_PATH_B, align 8
  %40 = load i32, i32* @DESC_RATEMCS7, align 4
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @_rtl8821ae_get_txpower_index(%struct.ieee80211_hw* %38, i64 %39, i32 %40, i64 %41, i64 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* @RB_TXPWRTRAING, align 4
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %37, %29
  store i64 0, i64* %11, align 8
  br label %46

46:                                               ; preds = %79, %45
  %47 = load i64, i64* %11, align 8
  %48 = icmp slt i64 %47, 3
  br i1 %48, label %49, label %82

49:                                               ; preds = %46
  %50 = load i64, i64* %11, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %12, align 4
  %54 = sub nsw i32 %53, 10
  store i32 %54, i32* %12, align 4
  br label %65

55:                                               ; preds = %49
  %56 = load i64, i64* %11, align 8
  %57 = icmp eq i64 %56, 1
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %12, align 4
  %60 = sub nsw i32 %59, 8
  store i32 %60, i32* %12, align 4
  br label %64

61:                                               ; preds = %55
  %62 = load i32, i32* %12, align 4
  %63 = sub nsw i32 %62, 6
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %61, %58
  br label %65

65:                                               ; preds = %64, %52
  %66 = load i32, i32* %12, align 4
  %67 = icmp sgt i32 %66, 2
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* %12, align 4
  br label %71

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i32 [ %69, %68 ], [ 2, %70 ]
  %73 = load i64, i64* %11, align 8
  %74 = mul nsw i64 %73, 8
  %75 = trunc i64 %74 to i32
  %76 = shl i32 %72, %75
  %77 = load i32, i32* %13, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %71
  %80 = load i64, i64* %11, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %11, align 8
  br label %46

82:                                               ; preds = %46
  %83 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %83, i32 %84, i32 16777215, i32 %85)
  br label %87

87:                                               ; preds = %82, %24
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl8821ae_get_txpower_index(%struct.ieee80211_hw*, i64, i32, i64, i64) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
