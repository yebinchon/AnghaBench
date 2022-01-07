; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_dm_txpower_track_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_dm_txpower_track_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i64* }
%struct.rtl_dm = type { i32*, i32*, i64, i64 }

@RF90_PATH_A = common dso_local global i64 0, align 8
@TXPWRTRACK_MAX_IDX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8821ae_dm_txpower_track_adjust(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.rtl_dm*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %9, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  %16 = call %struct.rtl_dm* @rtl_dm(%struct.rtl_priv* %15)
  store %struct.rtl_dm* %16, %struct.rtl_dm** %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %66

19:                                               ; preds = %4
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %21 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* @RF90_PATH_A, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %28 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* @RF90_PATH_A, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp sle i64 %26, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %19
  %36 = load i32*, i32** %7, align 8
  store i32 1, i32* %36, align 4
  %37 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %38 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @RF90_PATH_A, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %44 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @RF90_PATH_A, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %42, %48
  store i32 %49, i32* %11, align 4
  br label %65

50:                                               ; preds = %19
  %51 = load i32*, i32** %7, align 8
  store i32 2, i32* %51, align 4
  %52 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %53 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @RF90_PATH_A, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %59 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @RF90_PATH_A, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %57, %63
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %50, %35
  br label %99

66:                                               ; preds = %4
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %98

69:                                               ; preds = %66
  %70 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %71 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %74 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp sle i64 %72, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %69
  %78 = load i32*, i32** %7, align 8
  store i32 1, i32* %78, align 4
  %79 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %80 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %83 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %81, %84
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %11, align 4
  br label %97

87:                                               ; preds = %69
  %88 = load i32*, i32** %7, align 8
  store i32 2, i32* %88, align 4
  %89 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %90 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %93 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %91, %94
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %87, %77
  br label %98

98:                                               ; preds = %97, %66
  br label %99

99:                                               ; preds = %98, %65
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @TXPWRTRACK_MAX_IDX, align 4
  %102 = icmp sge i32 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32, i32* @TXPWRTRACK_MAX_IDX, align 4
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %107, %103, %99
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = shl i32 %111, 8
  %113 = or i32 %110, %112
  %114 = load i32, i32* %11, align 4
  %115 = shl i32 %114, 16
  %116 = or i32 %113, %115
  %117 = load i32, i32* %11, align 4
  %118 = shl i32 %117, 24
  %119 = or i32 %116, %118
  %120 = load i32*, i32** %8, align 8
  store i32 %119, i32* %120, align 4
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
