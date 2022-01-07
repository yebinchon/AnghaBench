; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1343.c_ds1343_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1343.c_ds1343_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.ds1343_priv = type { i64, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @ds1343_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1343_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.ds1343_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.ds1343_priv* @dev_get_drvdata(%struct.device* %8)
  store %struct.ds1343_priv* %9, %struct.ds1343_priv** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %11 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sle i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %62

17:                                               ; preds = %2
  %18 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %19 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %22 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %26 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 4
  %27 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %28 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %32 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 8
  %33 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %34 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %38 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %40 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %44 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %46 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %17
  %50 = load i32, i32* @RTC_AF, align 4
  %51 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %52 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %17
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = call i32 @ds1343_update_alarm(%struct.device* %56)
  store i32 %57, i32* %7, align 4
  %58 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %59 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %58, i32 0, i32 1
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %55, %14
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.ds1343_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ds1343_update_alarm(%struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
