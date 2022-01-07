; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1343.c_ds1343_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1343.c_ds1343_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ds1343_priv = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @ds1343_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1343_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ds1343_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
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
  br label %43

17:                                               ; preds = %2
  %18 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %19 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load i32, i32* @RTC_AF, align 4
  %25 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %26 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %36

29:                                               ; preds = %17
  %30 = load i32, i32* @RTC_AF, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %33 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %29, %23
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = call i32 @ds1343_update_alarm(%struct.device* %37)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %40 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %39, i32 0, i32 1
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %36, %14
  %44 = load i32, i32* %3, align 4
  ret i32 %44
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
