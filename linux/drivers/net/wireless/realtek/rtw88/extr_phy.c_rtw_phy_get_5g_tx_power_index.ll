; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_get_5g_tx_power_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_get_5g_tx_power_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_chip_info* }
%struct.rtw_chip_info = type { i64 }
%struct.rtw_5g_txpwr_idx = type { i64*, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }

@DESC_RATEMCS0 = common dso_local global i64 0, align 8
@DESC_RATEMCS15 = common dso_local global i64 0, align 8
@DESC_RATEVHT1SS_MCS0 = common dso_local global i64 0, align 8
@DESC_RATEVHT2SS_MCS9 = common dso_local global i64 0, align 8
@DESC_RATEMCS8 = common dso_local global i64 0, align 8
@DESC_RATEVHT2SS_MCS0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rtw_dev*, %struct.rtw_5g_txpwr_idx*, i32, i64, i64)* @rtw_phy_get_5g_tx_power_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtw_phy_get_5g_tx_power_index(%struct.rtw_dev* %0, %struct.rtw_5g_txpwr_idx* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.rtw_dev*, align 8
  %8 = alloca %struct.rtw_5g_txpwr_idx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.rtw_chip_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %7, align 8
  store %struct.rtw_5g_txpwr_idx* %1, %struct.rtw_5g_txpwr_idx** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %20 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %19, i32 0, i32 0
  %21 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %20, align 8
  store %struct.rtw_chip_info* %21, %struct.rtw_chip_info** %12, align 8
  %22 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %12, align 8
  %23 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %18, align 8
  %25 = load %struct.rtw_5g_txpwr_idx*, %struct.rtw_5g_txpwr_idx** %8, align 8
  %26 = getelementptr inbounds %struct.rtw_5g_txpwr_idx, %struct.rtw_5g_txpwr_idx* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %11, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @DESC_RATEMCS0, align 8
  %33 = icmp uge i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %5
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @DESC_RATEMCS15, align 8
  %37 = icmp ule i64 %35, %36
  br i1 %37, label %48, label %38

38:                                               ; preds = %34, %5
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @DESC_RATEVHT1SS_MCS0, align 8
  %41 = icmp uge i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* @DESC_RATEVHT2SS_MCS9, align 8
  %45 = icmp ule i64 %43, %44
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i1 [ false, %38 ], [ %45, %42 ]
  br label %48

48:                                               ; preds = %46, %34
  %49 = phi i1 [ true, %34 ], [ %47, %46 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %16, align 4
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* @DESC_RATEMCS8, align 8
  %53 = icmp uge i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* @DESC_RATEMCS15, align 8
  %57 = icmp ule i64 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54, %48
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @DESC_RATEVHT2SS_MCS0, align 8
  %61 = icmp uge i64 %59, %60
  br label %62

62:                                               ; preds = %58, %54
  %63 = phi i1 [ true, %54 ], [ %61, %58 ]
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %62
  %68 = load %struct.rtw_5g_txpwr_idx*, %struct.rtw_5g_txpwr_idx** %8, align 8
  %69 = getelementptr inbounds %struct.rtw_5g_txpwr_idx, %struct.rtw_5g_txpwr_idx* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %18, align 8
  %73 = mul i64 %71, %72
  %74 = load i64, i64* %13, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %13, align 8
  %76 = load i64, i64* %13, align 8
  store i64 %76, i64* %6, align 8
  br label %155

77:                                               ; preds = %62
  %78 = load i32, i32* %9, align 4
  switch i32 %78, label %79 [
    i32 130, label %81
    i32 129, label %102
    i32 128, label %115
  ]

79:                                               ; preds = %77
  %80 = call i32 @WARN_ON(i32 1)
  br label %81

81:                                               ; preds = %77, %79
  %82 = load %struct.rtw_5g_txpwr_idx*, %struct.rtw_5g_txpwr_idx** %8, align 8
  %83 = getelementptr inbounds %struct.rtw_5g_txpwr_idx, %struct.rtw_5g_txpwr_idx* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %18, align 8
  %87 = mul i64 %85, %86
  %88 = load i64, i64* %13, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %13, align 8
  %90 = load i32, i32* %17, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %81
  %93 = load %struct.rtw_5g_txpwr_idx*, %struct.rtw_5g_txpwr_idx** %8, align 8
  %94 = getelementptr inbounds %struct.rtw_5g_txpwr_idx, %struct.rtw_5g_txpwr_idx* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %18, align 8
  %98 = mul i64 %96, %97
  %99 = load i64, i64* %13, align 8
  %100 = add i64 %99, %98
  store i64 %100, i64* %13, align 8
  br label %101

101:                                              ; preds = %92, %81
  br label %153

102:                                              ; preds = %77
  %103 = load i32, i32* %17, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %102
  %106 = load %struct.rtw_5g_txpwr_idx*, %struct.rtw_5g_txpwr_idx** %8, align 8
  %107 = getelementptr inbounds %struct.rtw_5g_txpwr_idx, %struct.rtw_5g_txpwr_idx* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %18, align 8
  %111 = mul i64 %109, %110
  %112 = load i64, i64* %13, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %13, align 8
  br label %114

114:                                              ; preds = %105, %102
  br label %153

115:                                              ; preds = %77
  %116 = load %struct.rtw_5g_txpwr_idx*, %struct.rtw_5g_txpwr_idx** %8, align 8
  %117 = getelementptr inbounds %struct.rtw_5g_txpwr_idx, %struct.rtw_5g_txpwr_idx* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = load i64, i64* %11, align 8
  %120 = getelementptr inbounds i64, i64* %118, i64 %119
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %15, align 8
  %122 = load %struct.rtw_5g_txpwr_idx*, %struct.rtw_5g_txpwr_idx** %8, align 8
  %123 = getelementptr inbounds %struct.rtw_5g_txpwr_idx, %struct.rtw_5g_txpwr_idx* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  %125 = load i64, i64* %11, align 8
  %126 = add i64 %125, 1
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %14, align 8
  %129 = load i64, i64* %15, align 8
  %130 = load i64, i64* %14, align 8
  %131 = add i64 %129, %130
  %132 = udiv i64 %131, 2
  store i64 %132, i64* %13, align 8
  %133 = load %struct.rtw_5g_txpwr_idx*, %struct.rtw_5g_txpwr_idx** %8, align 8
  %134 = getelementptr inbounds %struct.rtw_5g_txpwr_idx, %struct.rtw_5g_txpwr_idx* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %18, align 8
  %138 = mul i64 %136, %137
  %139 = load i64, i64* %13, align 8
  %140 = add i64 %139, %138
  store i64 %140, i64* %13, align 8
  %141 = load i32, i32* %17, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %115
  %144 = load %struct.rtw_5g_txpwr_idx*, %struct.rtw_5g_txpwr_idx** %8, align 8
  %145 = getelementptr inbounds %struct.rtw_5g_txpwr_idx, %struct.rtw_5g_txpwr_idx* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %18, align 8
  %149 = mul i64 %147, %148
  %150 = load i64, i64* %13, align 8
  %151 = add i64 %150, %149
  store i64 %151, i64* %13, align 8
  br label %152

152:                                              ; preds = %143, %115
  br label %153

153:                                              ; preds = %152, %114, %101
  %154 = load i64, i64* %13, align 8
  store i64 %154, i64* %6, align 8
  br label %155

155:                                              ; preds = %153, %67
  %156 = load i64, i64* %6, align 8
  ret i64 %156
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
