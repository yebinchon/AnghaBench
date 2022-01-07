; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stk17ta8.c_stk17ta8_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stk17ta8.c_stk17ta8_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.rtc_plat_data = type { i64, i64, i64, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @stk17ta8_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk17ta8_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.rtc_plat_data*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.rtc_plat_data* @dev_get_drvdata(%struct.device* %7)
  store %struct.rtc_plat_data* %8, %struct.rtc_plat_data** %6, align 8
  %9 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %6, align 8
  %10 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %83

16:                                               ; preds = %2
  %17 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %6, align 8
  %18 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %26

22:                                               ; preds = %16
  %23 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %6, align 8
  %24 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  br label %26

26:                                               ; preds = %22, %21
  %27 = phi i64 [ 0, %21 ], [ %25, %22 ]
  %28 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %29 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 %27, i64* %30, align 8
  %31 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %6, align 8
  %32 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %40

36:                                               ; preds = %26
  %37 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %6, align 8
  %38 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  br label %40

40:                                               ; preds = %36, %35
  %41 = phi i64 [ 0, %35 ], [ %39, %36 ]
  %42 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %43 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i64 %41, i64* %44, align 8
  %45 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %6, align 8
  %46 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %54

50:                                               ; preds = %40
  %51 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %6, align 8
  %52 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  br label %54

54:                                               ; preds = %50, %49
  %55 = phi i64 [ 0, %49 ], [ %53, %50 ]
  %56 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %57 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i64 %55, i64* %58, align 8
  %59 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %6, align 8
  %60 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %68

64:                                               ; preds = %54
  %65 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %6, align 8
  %66 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  br label %68

68:                                               ; preds = %64, %63
  %69 = phi i64 [ 0, %63 ], [ %67, %64 ]
  %70 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %71 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  store i64 %69, i64* %72, align 8
  %73 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %6, align 8
  %74 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @RTC_AF, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 1, i32 0
  %81 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %82 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %68, %13
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.rtc_plat_data* @dev_get_drvdata(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
