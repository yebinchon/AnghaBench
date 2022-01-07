; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1685.c_ds1685_rtc_begin_data_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1685.c_ds1685_rtc_begin_data_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1685_priv = type { i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32, i32)* }

@RTC_CTRL_B = common dso_local global i32 0, align 4
@RTC_CTRL_B_SET = common dso_local global i32 0, align 4
@RTC_EXT_CTRL_4A = common dso_local global i32 0, align 4
@RTC_CTRL_4A_INCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ds1685_priv*)* @ds1685_rtc_begin_data_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds1685_rtc_begin_data_access(%struct.ds1685_priv* %0) #0 {
  %2 = alloca %struct.ds1685_priv*, align 8
  store %struct.ds1685_priv* %0, %struct.ds1685_priv** %2, align 8
  %3 = load %struct.ds1685_priv*, %struct.ds1685_priv** %2, align 8
  %4 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %3, i32 0, i32 1
  %5 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %4, align 8
  %6 = load %struct.ds1685_priv*, %struct.ds1685_priv** %2, align 8
  %7 = load i32, i32* @RTC_CTRL_B, align 4
  %8 = load %struct.ds1685_priv*, %struct.ds1685_priv** %2, align 8
  %9 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %8, i32 0, i32 0
  %10 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %9, align 8
  %11 = load %struct.ds1685_priv*, %struct.ds1685_priv** %2, align 8
  %12 = load i32, i32* @RTC_CTRL_B, align 4
  %13 = call i32 %10(%struct.ds1685_priv* %11, i32 %12)
  %14 = load i32, i32* @RTC_CTRL_B_SET, align 4
  %15 = or i32 %13, %14
  %16 = call i32 %5(%struct.ds1685_priv* %6, i32 %7, i32 %15)
  br label %17

17:                                               ; preds = %27, %1
  %18 = load %struct.ds1685_priv*, %struct.ds1685_priv** %2, align 8
  %19 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %18, i32 0, i32 0
  %20 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %19, align 8
  %21 = load %struct.ds1685_priv*, %struct.ds1685_priv** %2, align 8
  %22 = load i32, i32* @RTC_EXT_CTRL_4A, align 4
  %23 = call i32 %20(%struct.ds1685_priv* %21, i32 %22)
  %24 = load i32, i32* @RTC_CTRL_4A_INCR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = call i32 (...) @cpu_relax()
  br label %17

29:                                               ; preds = %17
  %30 = load %struct.ds1685_priv*, %struct.ds1685_priv** %2, align 8
  %31 = call i32 @ds1685_rtc_switch_to_bank1(%struct.ds1685_priv* %30)
  ret void
}

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @ds1685_rtc_switch_to_bank1(%struct.ds1685_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
