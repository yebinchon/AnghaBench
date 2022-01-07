; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1685.c_ds1685_rtc_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1685.c_ds1685_rtc_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ds1685_priv = type { i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32, i32)* }

@RTC_CTRL_B = common dso_local global i32 0, align 4
@RTC_CTRL_B_AIE = common dso_local global i32 0, align 4
@RTC_CTRL_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @ds1685_rtc_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1685_rtc_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ds1685_priv*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.ds1685_priv* @dev_get_drvdata(%struct.device* %6)
  store %struct.ds1685_priv* %7, %struct.ds1685_priv** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %12 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %11, i32 0, i32 1
  %13 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %12, align 8
  %14 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %15 = load i32, i32* @RTC_CTRL_B, align 4
  %16 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %17 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %16, i32 0, i32 0
  %18 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %17, align 8
  %19 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %20 = load i32, i32* @RTC_CTRL_B, align 4
  %21 = call i32 %18(%struct.ds1685_priv* %19, i32 %20)
  %22 = load i32, i32* @RTC_CTRL_B_AIE, align 4
  %23 = or i32 %21, %22
  %24 = call i32 %13(%struct.ds1685_priv* %14, i32 %15, i32 %23)
  br label %41

25:                                               ; preds = %2
  %26 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %27 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %26, i32 0, i32 1
  %28 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %27, align 8
  %29 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %30 = load i32, i32* @RTC_CTRL_B, align 4
  %31 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %32 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %31, i32 0, i32 0
  %33 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %32, align 8
  %34 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %35 = load i32, i32* @RTC_CTRL_B, align 4
  %36 = call i32 %33(%struct.ds1685_priv* %34, i32 %35)
  %37 = load i32, i32* @RTC_CTRL_B_AIE, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = call i32 %28(%struct.ds1685_priv* %29, i32 %30, i32 %39)
  br label %41

41:                                               ; preds = %25, %10
  %42 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %43 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %42, i32 0, i32 0
  %44 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %43, align 8
  %45 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %46 = load i32, i32* @RTC_CTRL_C, align 4
  %47 = call i32 %44(%struct.ds1685_priv* %45, i32 %46)
  ret i32 0
}

declare dso_local %struct.ds1685_priv* @dev_get_drvdata(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
