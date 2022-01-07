; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_rtl88e_dm_txpower_track_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_rtl88e_dm_txpower_track_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }
%struct.rtl_dm = type { i64, i64, i64* }

@RF90_PATH_A = common dso_local global i64 0, align 8
@TXPWRTRACK_MAX_IDX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl88e_dm_txpower_track_adjust(%struct.ieee80211_hw* %0, i64 %1, i64* %2, i64* %3) #0 {
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
  %21 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %22 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %12, align 8
  %24 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %25 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %13, align 8
  %27 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %28 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %27, i32 0, i32 2
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %14, align 8
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %33 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @RF90_PATH_A, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %15, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %4
  %42 = load i64, i64* %15, align 8
  %43 = load i64, i64* %14, align 8
  %44 = icmp sle i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i64*, i64** %7, align 8
  store i64 1, i64* %46, align 8
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* %15, align 8
  %49 = sub nsw i64 %47, %48
  store i64 %49, i64* %11, align 8
  br label %55

50:                                               ; preds = %41
  %51 = load i64*, i64** %7, align 8
  store i64 2, i64* %51, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* %15, align 8
  %54 = sub nsw i64 %52, %53
  store i64 %54, i64* %11, align 8
  br label %55

55:                                               ; preds = %50, %45
  br label %75

56:                                               ; preds = %4
  %57 = load i64, i64* %6, align 8
  %58 = icmp eq i64 %57, 1
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* %12, align 8
  %62 = icmp sle i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i64*, i64** %7, align 8
  store i64 1, i64* %64, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %13, align 8
  %67 = sub nsw i64 %65, %66
  store i64 %67, i64* %11, align 8
  br label %73

68:                                               ; preds = %59
  %69 = load i64*, i64** %7, align 8
  store i64 2, i64* %69, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* %12, align 8
  %72 = sub nsw i64 %70, %71
  store i64 %72, i64* %11, align 8
  br label %73

73:                                               ; preds = %68, %63
  br label %74

74:                                               ; preds = %73, %56
  br label %75

75:                                               ; preds = %74, %55
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* @TXPWRTRACK_MAX_IDX, align 8
  %78 = icmp sge i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i64*, i64** %7, align 8
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 1
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i64, i64* @TXPWRTRACK_MAX_IDX, align 8
  store i64 %84, i64* %11, align 8
  br label %85

85:                                               ; preds = %83, %79, %75
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %11, align 8
  %88 = shl i64 %87, 8
  %89 = or i64 %86, %88
  %90 = load i64, i64* %11, align 8
  %91 = shl i64 %90, 16
  %92 = or i64 %89, %91
  %93 = load i64, i64* %11, align 8
  %94 = shl i64 %93, 24
  %95 = or i64 %92, %94
  %96 = load i64*, i64** %8, align 8
  store i64 %95, i64* %96, align 8
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
