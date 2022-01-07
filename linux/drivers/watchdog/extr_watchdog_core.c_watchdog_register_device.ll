; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_watchdog_core.c_watchdog_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_watchdog_core.c_watchdog_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@wtd_deferred_reg_mutex = common dso_local global i32 0, align 4
@wtd_deferred_reg_done = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"%s: failed to register watchdog device (err = %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @watchdog_register_device(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 @mutex_lock(i32* @wtd_deferred_reg_mutex)
  %6 = load i64, i64* @wtd_deferred_reg_done, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %10 = call i32 @__watchdog_register_device(%struct.watchdog_device* %9)
  store i32 %10, i32* %4, align 4
  br label %14

11:                                               ; preds = %1
  %12 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %13 = call i32 @watchdog_deferred_registration_add(%struct.watchdog_device* %12)
  br label %14

14:                                               ; preds = %11, %8
  %15 = call i32 @mutex_unlock(i32* @wtd_deferred_reg_mutex)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %20 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %25 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i8* @dev_name(i64 %26)
  br label %35

28:                                               ; preds = %18
  %29 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %30 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  br label %35

35:                                               ; preds = %28, %23
  %36 = phi i8* [ %27, %23 ], [ %34, %28 ]
  store i8* %36, i8** %3, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %14
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__watchdog_register_device(%struct.watchdog_device*) #1

declare dso_local i32 @watchdog_deferred_registration_add(%struct.watchdog_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i8* @dev_name(i64) #1

declare dso_local i32 @pr_err(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
