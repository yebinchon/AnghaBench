; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_set_autotimer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_set_autotimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq2415x_device = type { i32, i32, i32* }

@bq2415x_timer_mutex = common dso_local global i32 0, align 4
@BQ2415X_TIMER_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@BQ2415X_TIMER_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bq2415x_device*, i32)* @bq2415x_set_autotimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bq2415x_set_autotimer(%struct.bq2415x_device* %0, i32 %1) #0 {
  %3 = alloca %struct.bq2415x_device*, align 8
  %4 = alloca i32, align 4
  store %struct.bq2415x_device* %0, %struct.bq2415x_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 @mutex_lock(i32* @bq2415x_timer_mutex)
  %6 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %7 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @mutex_unlock(i32* @bq2415x_timer_mutex)
  br label %37

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %16 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %21 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %20, i32 0, i32 1
  %22 = load i32, i32* @BQ2415X_TIMER_TIMEOUT, align 4
  %23 = load i32, i32* @HZ, align 4
  %24 = mul nsw i32 %22, %23
  %25 = call i32 @schedule_delayed_work(i32* %21, i32 %24)
  %26 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %27 = load i32, i32* @BQ2415X_TIMER_RESET, align 4
  %28 = call i32 @bq2415x_exec_command(%struct.bq2415x_device* %26, i32 %27)
  %29 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %30 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %29, i32 0, i32 2
  store i32* null, i32** %30, align 8
  br label %35

31:                                               ; preds = %13
  %32 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %33 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %32, i32 0, i32 1
  %34 = call i32 @cancel_delayed_work_sync(i32* %33)
  br label %35

35:                                               ; preds = %31, %19
  %36 = call i32 @mutex_unlock(i32* @bq2415x_timer_mutex)
  br label %37

37:                                               ; preds = %35, %11
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @bq2415x_exec_command(%struct.bq2415x_device*, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
