; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_f71808e_wdt.c_watchdog_set_pulse_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_f71808e_wdt.c_watchdog_set_pulse_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@watchdog = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@f71868 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"pulse width out of range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @watchdog_set_pulse_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @watchdog_set_pulse_width(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 25, i32* %4, align 4
  store i32 125, i32* %5, align 4
  store i32 5000, i32* %6, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 0), align 8
  %8 = load i64, i64* @f71868, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 30, i32* %4, align 4
  store i32 150, i32* %5, align 4
  store i32 6000, i32* %6, align 4
  br label %11

11:                                               ; preds = %10, %1
  %12 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 3))
  %13 = load i32, i32* %2, align 4
  %14 = icmp ule i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 1), align 8
  br label %38

16:                                               ; preds = %11
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ule i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 1), align 8
  br label %37

21:                                               ; preds = %16
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ule i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 1), align 8
  br label %36

26:                                               ; preds = %21
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ule i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 1), align 8
  br label %35

31:                                               ; preds = %26
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %40

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %25
  br label %37

37:                                               ; preds = %36, %20
  br label %38

38:                                               ; preds = %37, %15
  %39 = load i32, i32* %2, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 2), align 4
  br label %40

40:                                               ; preds = %38, %31
  %41 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 3))
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
