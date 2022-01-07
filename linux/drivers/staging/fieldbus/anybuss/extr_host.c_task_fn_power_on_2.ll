; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_task_fn_power_on_2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_task_fn_power_on_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anybuss_host = type { i32, i32, i32, i32 }
%struct.ab_task = type { i64 }

@jiffies = common dso_local global i32 0, align 4
@TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"power on timed out\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.anybuss_host*, %struct.ab_task*)* @task_fn_power_on_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_fn_power_on_2(%struct.anybuss_host* %0, %struct.ab_task* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.anybuss_host*, align 8
  %5 = alloca %struct.ab_task*, align 8
  store %struct.anybuss_host* %0, %struct.anybuss_host** %4, align 8
  store %struct.ab_task* %1, %struct.ab_task** %5, align 8
  %6 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %7 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %6, i32 0, i32 3
  %8 = call i64 @completion_done(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %12 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  store i32 0, i32* %3, align 4
  br label %38

13:                                               ; preds = %2
  %14 = load i32, i32* @jiffies, align 4
  %15 = load %struct.ab_task*, %struct.ab_task** %5, align 8
  %16 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TIMEOUT, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i64 @time_after(i32 %14, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %13
  %23 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %24 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @disable_irq(i32 %25)
  %27 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %28 = call i32 @reset_assert(%struct.anybuss_host* %27)
  %29 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %30 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ETIMEDOUT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %38

35:                                               ; preds = %13
  %36 = load i32, i32* @EINPROGRESS, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %22, %10
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @completion_done(i32*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @reset_assert(%struct.anybuss_host*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
