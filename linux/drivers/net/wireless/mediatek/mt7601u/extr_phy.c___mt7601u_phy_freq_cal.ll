; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c___mt7601u_phy_freq_cal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c___mt7601u_phy_freq_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MT_FREQ_OFFSET_INVALID = common dso_local global i64 0, align 8
@MT_FREQ_CAL_ADJ_INTERVAL = common dso_local global i64 0, align 8
@MT_FREQ_CAL_CHECK_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mt7601u_dev*, i64, i64)* @__mt7601u_phy_freq_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__mt7601u_phy_freq_cal(%struct.mt7601u_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mt7601u_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @trace_freq_cal_offset(%struct.mt7601u_dev* %10, i64 %11, i64 %12)
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @MT_FREQ_OFFSET_INVALID, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* @MT_FREQ_CAL_ADJ_INTERVAL, align 8
  store i64 %18, i64* %4, align 8
  br label %124

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  switch i64 %20, label %24 [
    i64 131, label %21
    i64 128, label %22
    i64 130, label %23
    i64 129, label %23
  ]

21:                                               ; preds = %19
  store i64 19, i64* %8, align 8
  store i64 5, i64* %9, align 8
  br label %27

22:                                               ; preds = %19
  store i64 102, i64* %8, align 8
  store i64 32, i64* %9, align 8
  br label %27

23:                                               ; preds = %19, %19
  store i64 82, i64* %8, align 8
  store i64 20, i64* %9, align 8
  br label %27

24:                                               ; preds = %19
  %25 = call i32 @WARN_ON(i32 1)
  %26 = load i64, i64* @MT_FREQ_CAL_CHECK_INTERVAL, align 8
  store i64 %26, i64* %4, align 8
  br label %124

27:                                               ; preds = %23, %22, %21
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @abs(i64 %28)
  %30 = load i64, i64* %8, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %34 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  br label %46

36:                                               ; preds = %27
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @abs(i64 %37)
  %39 = load i64, i64* %9, align 8
  %40 = icmp sle i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %43 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %36
  br label %46

46:                                               ; preds = %45, %32
  %47 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %48 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %46
  %53 = load i64, i64* @MT_FREQ_CAL_CHECK_INTERVAL, align 8
  store i64 %53, i64* %4, align 8
  br label %124

54:                                               ; preds = %46
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %54
  %59 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %60 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %66 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %67, align 4
  br label %74

70:                                               ; preds = %58
  %71 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %72 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %64
  br label %98

75:                                               ; preds = %54
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* %9, align 8
  %78 = sub nsw i64 0, %77
  %79 = icmp slt i64 %76, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %75
  %81 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %82 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %84, 191
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %88 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %96

92:                                               ; preds = %80
  %93 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %94 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i32 0, i32* %95, align 4
  br label %96

96:                                               ; preds = %92, %86
  br label %97

97:                                               ; preds = %96, %75
  br label %98

98:                                               ; preds = %97, %74
  %99 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %100 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %101 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @trace_freq_cal_adjust(%struct.mt7601u_dev* %99, i32 %103)
  %105 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %106 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %107 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @mt7601u_rf_wr(%struct.mt7601u_dev* %105, i32 0, i32 12, i32 %109)
  %111 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %112 = call i32 @mt7601u_vco_cal(%struct.mt7601u_dev* %111)
  %113 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %114 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %98
  %119 = load i64, i64* @MT_FREQ_CAL_ADJ_INTERVAL, align 8
  br label %122

120:                                              ; preds = %98
  %121 = load i64, i64* @MT_FREQ_CAL_CHECK_INTERVAL, align 8
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i64 [ %119, %118 ], [ %121, %120 ]
  store i64 %123, i64* %4, align 8
  br label %124

124:                                              ; preds = %122, %52, %24, %17
  %125 = load i64, i64* %4, align 8
  ret i64 %125
}

declare dso_local i32 @trace_freq_cal_offset(%struct.mt7601u_dev*, i64, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @trace_freq_cal_adjust(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @mt7601u_rf_wr(%struct.mt7601u_dev*, i32, i32, i32) #1

declare dso_local i32 @mt7601u_vco_cal(%struct.mt7601u_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
