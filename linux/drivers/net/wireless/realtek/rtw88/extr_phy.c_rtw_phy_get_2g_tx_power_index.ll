; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_get_2g_tx_power_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_get_2g_tx_power_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_chip_info* }
%struct.rtw_chip_info = type { i64 }
%struct.rtw_2g_txpwr_idx = type { i64*, i64*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@DESC_RATE11M = common dso_local global i64 0, align 8
@DESC_RATE6M = common dso_local global i64 0, align 8
@DESC_RATE54M = common dso_local global i64 0, align 8
@DESC_RATEMCS0 = common dso_local global i64 0, align 8
@DESC_RATEMCS15 = common dso_local global i64 0, align 8
@DESC_RATEVHT1SS_MCS0 = common dso_local global i64 0, align 8
@DESC_RATEVHT2SS_MCS9 = common dso_local global i64 0, align 8
@DESC_RATEMCS8 = common dso_local global i64 0, align 8
@DESC_RATEVHT2SS_MCS0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rtw_dev*, %struct.rtw_2g_txpwr_idx*, i32, i64, i64)* @rtw_phy_get_2g_tx_power_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtw_phy_get_2g_tx_power_index(%struct.rtw_dev* %0, %struct.rtw_2g_txpwr_idx* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.rtw_dev*, align 8
  %8 = alloca %struct.rtw_2g_txpwr_idx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.rtw_chip_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %7, align 8
  store %struct.rtw_2g_txpwr_idx* %1, %struct.rtw_2g_txpwr_idx** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %18 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %17, i32 0, i32 0
  %19 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %18, align 8
  store %struct.rtw_chip_info* %19, %struct.rtw_chip_info** %12, align 8
  %20 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %12, align 8
  %21 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %16, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @DESC_RATE11M, align 8
  %25 = icmp sle i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %5
  %27 = load %struct.rtw_2g_txpwr_idx*, %struct.rtw_2g_txpwr_idx** %8, align 8
  %28 = getelementptr inbounds %struct.rtw_2g_txpwr_idx, %struct.rtw_2g_txpwr_idx* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %13, align 8
  br label %40

33:                                               ; preds = %5
  %34 = load %struct.rtw_2g_txpwr_idx*, %struct.rtw_2g_txpwr_idx** %8, align 8
  %35 = getelementptr inbounds %struct.rtw_2g_txpwr_idx, %struct.rtw_2g_txpwr_idx* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %13, align 8
  br label %40

40:                                               ; preds = %33, %26
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @DESC_RATE6M, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @DESC_RATE54M, align 8
  %47 = icmp sle i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load %struct.rtw_2g_txpwr_idx*, %struct.rtw_2g_txpwr_idx** %8, align 8
  %50 = getelementptr inbounds %struct.rtw_2g_txpwr_idx, %struct.rtw_2g_txpwr_idx* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %16, align 8
  %54 = mul nsw i64 %52, %53
  %55 = load i64, i64* %13, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %13, align 8
  br label %57

57:                                               ; preds = %48, %44, %40
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* @DESC_RATEMCS0, align 8
  %60 = icmp sge i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* @DESC_RATEMCS15, align 8
  %64 = icmp sle i64 %62, %63
  br i1 %64, label %75, label %65

65:                                               ; preds = %61, %57
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @DESC_RATEVHT1SS_MCS0, align 8
  %68 = icmp sge i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* @DESC_RATEVHT2SS_MCS9, align 8
  %72 = icmp sle i64 %70, %71
  br label %73

73:                                               ; preds = %69, %65
  %74 = phi i1 [ false, %65 ], [ %72, %69 ]
  br label %75

75:                                               ; preds = %73, %61
  %76 = phi i1 [ true, %61 ], [ %74, %73 ]
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %14, align 4
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* @DESC_RATEMCS8, align 8
  %80 = icmp sge i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* @DESC_RATEMCS15, align 8
  %84 = icmp sle i64 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81, %75
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* @DESC_RATEVHT2SS_MCS0, align 8
  %88 = icmp sge i64 %86, %87
  br label %89

89:                                               ; preds = %85, %81
  %90 = phi i1 [ true, %81 ], [ %88, %85 ]
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %89
  %95 = load i64, i64* %13, align 8
  store i64 %95, i64* %6, align 8
  br label %136

96:                                               ; preds = %89
  %97 = load i32, i32* %9, align 4
  switch i32 %97, label %98 [
    i32 129, label %100
    i32 128, label %121
  ]

98:                                               ; preds = %96
  %99 = call i32 @WARN_ON(i32 1)
  br label %100

100:                                              ; preds = %96, %98
  %101 = load %struct.rtw_2g_txpwr_idx*, %struct.rtw_2g_txpwr_idx** %8, align 8
  %102 = getelementptr inbounds %struct.rtw_2g_txpwr_idx, %struct.rtw_2g_txpwr_idx* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %16, align 8
  %106 = mul nsw i64 %104, %105
  %107 = load i64, i64* %13, align 8
  %108 = add nsw i64 %107, %106
  store i64 %108, i64* %13, align 8
  %109 = load i32, i32* %15, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %100
  %112 = load %struct.rtw_2g_txpwr_idx*, %struct.rtw_2g_txpwr_idx** %8, align 8
  %113 = getelementptr inbounds %struct.rtw_2g_txpwr_idx, %struct.rtw_2g_txpwr_idx* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %16, align 8
  %117 = mul nsw i64 %115, %116
  %118 = load i64, i64* %13, align 8
  %119 = add nsw i64 %118, %117
  store i64 %119, i64* %13, align 8
  br label %120

120:                                              ; preds = %111, %100
  br label %134

121:                                              ; preds = %96
  %122 = load i32, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %121
  %125 = load %struct.rtw_2g_txpwr_idx*, %struct.rtw_2g_txpwr_idx** %8, align 8
  %126 = getelementptr inbounds %struct.rtw_2g_txpwr_idx, %struct.rtw_2g_txpwr_idx* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %16, align 8
  %130 = mul nsw i64 %128, %129
  %131 = load i64, i64* %13, align 8
  %132 = add nsw i64 %131, %130
  store i64 %132, i64* %13, align 8
  br label %133

133:                                              ; preds = %124, %121
  br label %134

134:                                              ; preds = %133, %120
  %135 = load i64, i64* %13, align 8
  store i64 %135, i64* %6, align 8
  br label %136

136:                                              ; preds = %134, %94
  %137 = load i64, i64* %6, align 8
  ret i64 %137
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
