; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd.c_pcwd_get_temperature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd.c_pcwd_get_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@pcwd_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ENODEV = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@DEBUG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"temperature is: %d F\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @pcwd_get_temperature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcwd_get_temperature(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 3), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %31

7:                                                ; preds = %1
  %8 = load i32*, i32** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 2), align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %31

14:                                               ; preds = %7
  %15 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 0))
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 1), align 4
  %17 = call i32 @inb(i32 %16)
  %18 = mul nsw i32 %17, 9
  %19 = sdiv i32 %18, 5
  %20 = add nsw i32 %19, 32
  %21 = load i32*, i32** %3, align 8
  store i32 %20, i32* %21, align 4
  %22 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 0))
  %23 = load i64, i64* @debug, align 8
  %24 = load i64, i64* @DEBUG, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %14
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %14
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %11, %6
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
