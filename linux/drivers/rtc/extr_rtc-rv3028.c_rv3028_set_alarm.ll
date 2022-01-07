; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3028.c_rv3028_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3028.c_rv3028_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.rv3028_data = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@RV3028_CTRL2 = common dso_local global i32 0, align 4
@RV3028_CTRL2_AIE = common dso_local global i32 0, align 4
@RV3028_CTRL2_UIE = common dso_local global i32 0, align 4
@RV3028_STATUS = common dso_local global i32 0, align 4
@RV3028_STATUS_AF = common dso_local global i32 0, align 4
@RV3028_ALARM_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @rv3028_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv3028_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.rv3028_data*, align 8
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.rv3028_data* @dev_get_drvdata(%struct.device* %11)
  store %struct.rv3028_data* %12, %struct.rv3028_data** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %14 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %20 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %19, i32 0, i32 1
  %21 = call i32 @rtc_tm_to_time64(%struct.TYPE_9__* %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %23 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 60, %25
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %31 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %30, i32 0, i32 1
  %32 = call i32 @rtc_time64_to_tm(i32 %29, %struct.TYPE_9__* %31)
  br label %33

33:                                               ; preds = %18, %2
  %34 = load %struct.rv3028_data*, %struct.rv3028_data** %6, align 8
  %35 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @RV3028_CTRL2, align 4
  %38 = load i32, i32* @RV3028_CTRL2_AIE, align 4
  %39 = load i32, i32* @RV3028_CTRL2_UIE, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @regmap_update_bits(i32 %36, i32 %37, i32 %40, i32 0)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %3, align 4
  br label %127

46:                                               ; preds = %33
  %47 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %48 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bin2bcd(i32 %50)
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 %51, i32* %52, align 4
  %53 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %54 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @bin2bcd(i32 %56)
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 %57, i32* %58, align 4
  %59 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %60 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @bin2bcd(i32 %62)
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  store i32 %63, i32* %64, align 4
  %65 = load %struct.rv3028_data*, %struct.rv3028_data** %6, align 8
  %66 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @RV3028_STATUS, align 4
  %69 = load i32, i32* @RV3028_STATUS_AF, align 4
  %70 = call i32 @regmap_update_bits(i32 %67, i32 %68, i32 %69, i32 0)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %46
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %3, align 4
  br label %127

75:                                               ; preds = %46
  %76 = load %struct.rv3028_data*, %struct.rv3028_data** %6, align 8
  %77 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @RV3028_ALARM_MIN, align 4
  %80 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %81 = call i32 @regmap_bulk_write(i32 %78, i32 %79, i32* %80, i32 12)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %3, align 4
  br label %127

86:                                               ; preds = %75
  %87 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %88 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %116

91:                                               ; preds = %86
  %92 = load %struct.rv3028_data*, %struct.rv3028_data** %6, align 8
  %93 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %92, i32 0, i32 1
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %91
  %100 = load i32, i32* @RV3028_CTRL2_UIE, align 4
  %101 = load i32, i32* %8, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %99, %91
  %104 = load %struct.rv3028_data*, %struct.rv3028_data** %6, align 8
  %105 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %104, i32 0, i32 1
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %103
  %112 = load i32, i32* @RV3028_CTRL2_AIE, align 4
  %113 = load i32, i32* %8, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %111, %103
  br label %116

116:                                              ; preds = %115, %86
  %117 = load %struct.rv3028_data*, %struct.rv3028_data** %6, align 8
  %118 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @RV3028_CTRL2, align 4
  %121 = load i32, i32* @RV3028_CTRL2_UIE, align 4
  %122 = load i32, i32* @RV3028_CTRL2_AIE, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @regmap_update_bits(i32 %119, i32 %120, i32 %123, i32 %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %116, %84, %73, %44
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.rv3028_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtc_tm_to_time64(%struct.TYPE_9__*) #1

declare dso_local i32 @rtc_time64_to_tm(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
