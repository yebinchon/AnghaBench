; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_watchdog_core.c_devm_watchdog_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_watchdog_core.c_devm_watchdog_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.watchdog_device = type { i32 }

@devm_watchdog_unregister_device = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_watchdog_register_device(%struct.device* %0, %struct.watchdog_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.watchdog_device*, align 8
  %6 = alloca %struct.watchdog_device**, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.watchdog_device* %1, %struct.watchdog_device** %5, align 8
  %8 = load i32, i32* @devm_watchdog_unregister_device, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.watchdog_device** @devres_alloc(i32 %8, i32 8, i32 %9)
  store %struct.watchdog_device** %10, %struct.watchdog_device*** %6, align 8
  %11 = load %struct.watchdog_device**, %struct.watchdog_device*** %6, align 8
  %12 = icmp ne %struct.watchdog_device** %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %18 = call i32 @watchdog_register_device(%struct.watchdog_device* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %23 = load %struct.watchdog_device**, %struct.watchdog_device*** %6, align 8
  store %struct.watchdog_device* %22, %struct.watchdog_device** %23, align 8
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load %struct.watchdog_device**, %struct.watchdog_device*** %6, align 8
  %26 = call i32 @devres_add(%struct.device* %24, %struct.watchdog_device** %25)
  br label %30

27:                                               ; preds = %16
  %28 = load %struct.watchdog_device**, %struct.watchdog_device*** %6, align 8
  %29 = call i32 @devres_free(%struct.watchdog_device** %28)
  br label %30

30:                                               ; preds = %27, %21
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %13
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.watchdog_device** @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @watchdog_register_device(%struct.watchdog_device*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.watchdog_device**) #1

declare dso_local i32 @devres_free(%struct.watchdog_device**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
