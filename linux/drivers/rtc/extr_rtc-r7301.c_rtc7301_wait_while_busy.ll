; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-r7301.c_rtc7301_wait_while_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-r7301.c_rtc7301_wait_while_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc7301_priv = type { i32 }

@RTC7301_CONTROL = common dso_local global i32 0, align 4
@RTC7301_CONTROL_BUSY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtc7301_priv*)* @rtc7301_wait_while_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc7301_wait_while_busy(%struct.rtc7301_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtc7301_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtc7301_priv* %0, %struct.rtc7301_priv** %3, align 8
  store i32 100, i32* %4, align 4
  br label %6

6:                                                ; preds = %19, %1
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %4, align 4
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %3, align 8
  %12 = load i32, i32* @RTC7301_CONTROL, align 4
  %13 = call i32 @rtc7301_read(%struct.rtc7301_priv* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @RTC7301_CONTROL_BUSY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %24

19:                                               ; preds = %10
  %20 = call i32 @udelay(i32 300)
  br label %6

21:                                               ; preds = %6
  %22 = load i32, i32* @ETIMEDOUT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @rtc7301_read(%struct.rtc7301_priv*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
