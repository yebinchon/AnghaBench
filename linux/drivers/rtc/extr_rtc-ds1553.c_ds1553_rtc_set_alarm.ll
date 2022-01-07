; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1553.c_ds1553_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1553.c_ds1553_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.rtc_plat_data = type { i64, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @ds1553_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1553_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
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
  br label %54

16:                                               ; preds = %2
  %17 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %18 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %6, align 8
  %22 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %24 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %6, align 8
  %28 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %30 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %6, align 8
  %34 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %36 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %6, align 8
  %40 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %42 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %16
  %46 = load i32, i32* @RTC_AF, align 4
  %47 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %6, align 8
  %48 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %16
  %52 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %6, align 8
  %53 = call i32 @ds1553_rtc_update_alarm(%struct.rtc_plat_data* %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %13
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.rtc_plat_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ds1553_rtc_update_alarm(%struct.rtc_plat_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
