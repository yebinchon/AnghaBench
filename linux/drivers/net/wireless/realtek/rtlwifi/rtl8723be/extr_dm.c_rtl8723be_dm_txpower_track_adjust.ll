; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_dm.c_rtl8723be_dm_txpower_track_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_dm.c_rtl8723be_dm_txpower_track_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i64* }
%struct.rtl_dm = type { i64, i64 }

@RF90_PATH_A = common dso_local global i64 0, align 8
@TXPWRTRACK_MAX_IDX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723be_dm_txpower_track_adjust(%struct.ieee80211_hw* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.rtl_dm*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  store %struct.rtl_priv* %17, %struct.rtl_priv** %9, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %19 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %18)
  %20 = call %struct.rtl_dm* @rtl_dm(%struct.rtl_priv* %19)
  store %struct.rtl_dm* %20, %struct.rtl_dm** %10, align 8
  store i64 0, i64* %11, align 8
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %22 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* @RF90_PATH_A, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %12, align 8
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %29 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @RF90_PATH_A, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %13, align 8
  %35 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %36 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %14, align 8
  %38 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %39 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %15, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %4
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* %12, align 8
  %46 = icmp sle i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i64*, i64** %7, align 8
  store i64 1, i64* %48, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %13, align 8
  %51 = sub nsw i64 %49, %50
  store i64 %51, i64* %11, align 8
  br label %57

52:                                               ; preds = %43
  %53 = load i64*, i64** %7, align 8
  store i64 2, i64* %53, align 8
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* %12, align 8
  %56 = sub nsw i64 %54, %55
  store i64 %56, i64* %11, align 8
  br label %57

57:                                               ; preds = %52, %47
  br label %77

58:                                               ; preds = %4
  %59 = load i64, i64* %6, align 8
  %60 = icmp eq i64 %59, 1
  br i1 %60, label %61, label %76

61:                                               ; preds = %58
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* %14, align 8
  %64 = icmp sle i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i64*, i64** %7, align 8
  store i64 1, i64* %66, align 8
  %67 = load i64, i64* %14, align 8
  %68 = load i64, i64* %15, align 8
  %69 = sub nsw i64 %67, %68
  store i64 %69, i64* %11, align 8
  br label %75

70:                                               ; preds = %61
  %71 = load i64*, i64** %7, align 8
  store i64 2, i64* %71, align 8
  %72 = load i64, i64* %15, align 8
  %73 = load i64, i64* %14, align 8
  %74 = sub nsw i64 %72, %73
  store i64 %74, i64* %11, align 8
  br label %75

75:                                               ; preds = %70, %65
  br label %76

76:                                               ; preds = %75, %58
  br label %77

77:                                               ; preds = %76, %57
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* @TXPWRTRACK_MAX_IDX, align 8
  %80 = icmp sge i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load i64*, i64** %7, align 8
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 1
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i64, i64* @TXPWRTRACK_MAX_IDX, align 8
  store i64 %86, i64* %11, align 8
  br label %87

87:                                               ; preds = %85, %81, %77
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %11, align 8
  %90 = shl i64 %89, 8
  %91 = or i64 %88, %90
  %92 = load i64, i64* %11, align 8
  %93 = shl i64 %92, 16
  %94 = or i64 %91, %93
  %95 = load i64, i64* %11, align 8
  %96 = shl i64 %95, 24
  %97 = or i64 %94, %96
  %98 = load i64*, i64** %8, align 8
  store i64 %97, i64* %98, align 8
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_dm* @rtl_dm(%struct.rtl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
