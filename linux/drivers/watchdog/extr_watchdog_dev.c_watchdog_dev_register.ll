; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_watchdog_dev.c_watchdog_dev_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_watchdog_dev.c_watchdog_dev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@watchdog_devt = common dso_local global i32 0, align 4
@watchdog_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"watchdog%d\00", align 1
@WDOG_STOP_ON_REBOOT = common dso_local global i32 0, align 4
@watchdog_reboot_notifier = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"watchdog%d: Cannot register reboot notifier (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @watchdog_dev_register(%struct.watchdog_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  %7 = load i32, i32* @watchdog_devt, align 4
  %8 = call i32 @MAJOR(i32 %7)
  %9 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %10 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @MKDEV(i32 %8, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @watchdog_cdev_register(%struct.watchdog_device* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %80

20:                                               ; preds = %1
  %21 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %22 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %26 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %27 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %30 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.device* @device_create_with_groups(i32* @watchdog_class, i32 %23, i32 %24, %struct.watchdog_device* %25, i32 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %31)
  store %struct.device* %32, %struct.device** %4, align 8
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = call i64 @IS_ERR(%struct.device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %20
  %37 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %38 = call i32 @watchdog_cdev_unregister(%struct.watchdog_device* %37)
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = call i32 @PTR_ERR(%struct.device* %39)
  store i32 %40, i32* %2, align 4
  br label %80

41:                                               ; preds = %20
  %42 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %43 = call i32 @watchdog_register_pretimeout(%struct.watchdog_device* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @device_destroy(i32* @watchdog_class, i32 %47)
  %49 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %50 = call i32 @watchdog_cdev_unregister(%struct.watchdog_device* %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %80

52:                                               ; preds = %41
  %53 = load i32, i32* @WDOG_STOP_ON_REBOOT, align 4
  %54 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %55 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %54, i32 0, i32 2
  %56 = call i64 @test_bit(i32 %53, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %52
  %59 = load i32, i32* @watchdog_reboot_notifier, align 4
  %60 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %61 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %65 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %64, i32 0, i32 1
  %66 = call i32 @devm_register_reboot_notifier(%struct.device* %63, %struct.TYPE_2__* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %58
  %70 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %71 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %76 = call i32 @watchdog_dev_unregister(%struct.watchdog_device* %75)
  br label %77

77:                                               ; preds = %69, %58
  br label %78

78:                                               ; preds = %77, %52
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %78, %46, %36, %18
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @watchdog_cdev_register(%struct.watchdog_device*, i32) #1

declare dso_local %struct.device* @device_create_with_groups(i32*, i32, i32, %struct.watchdog_device*, i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @watchdog_cdev_unregister(%struct.watchdog_device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @watchdog_register_pretimeout(%struct.watchdog_device*) #1

declare dso_local i32 @device_destroy(i32*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @devm_register_reboot_notifier(%struct.device*, %struct.TYPE_2__*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @watchdog_dev_unregister(%struct.watchdog_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
