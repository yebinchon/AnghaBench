; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_usbpd_logger.c_cros_usbpd_logger_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_usbpd_logger.c_cros_usbpd_logger_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.cros_ec_dev = type { i32 }
%struct.logger_data = type { i32, i32, %struct.cros_ec_dev*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cros_usbpd_log_check = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cros_usbpd_log\00", align 1
@CROS_USBPD_LOG_UPDATE_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cros_usbpd_logger_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_usbpd_logger_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.cros_ec_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.logger_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.cros_ec_dev* @dev_get_drvdata(i32 %10)
  store %struct.cros_ec_dev* %11, %struct.cros_ec_dev** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.logger_data* @devm_kzalloc(%struct.device* %14, i32 24, i32 %15)
  store %struct.logger_data* %16, %struct.logger_data** %6, align 8
  %17 = load %struct.logger_data*, %struct.logger_data** %6, align 8
  %18 = icmp ne %struct.logger_data* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %54

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = load %struct.logger_data*, %struct.logger_data** %6, align 8
  %25 = getelementptr inbounds %struct.logger_data, %struct.logger_data* %24, i32 0, i32 3
  store %struct.device* %23, %struct.device** %25, align 8
  %26 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %27 = load %struct.logger_data*, %struct.logger_data** %6, align 8
  %28 = getelementptr inbounds %struct.logger_data, %struct.logger_data* %27, i32 0, i32 2
  store %struct.cros_ec_dev* %26, %struct.cros_ec_dev** %28, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load %struct.logger_data*, %struct.logger_data** %6, align 8
  %31 = call i32 @platform_set_drvdata(%struct.platform_device* %29, %struct.logger_data* %30)
  %32 = load %struct.logger_data*, %struct.logger_data** %6, align 8
  %33 = getelementptr inbounds %struct.logger_data, %struct.logger_data* %32, i32 0, i32 0
  %34 = load i32, i32* @cros_usbpd_log_check, align 4
  %35 = call i32 @INIT_DELAYED_WORK(i32* %33, i32 %34)
  %36 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.logger_data*, %struct.logger_data** %6, align 8
  %38 = getelementptr inbounds %struct.logger_data, %struct.logger_data* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.logger_data*, %struct.logger_data** %6, align 8
  %40 = getelementptr inbounds %struct.logger_data, %struct.logger_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %22
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %54

46:                                               ; preds = %22
  %47 = load %struct.logger_data*, %struct.logger_data** %6, align 8
  %48 = getelementptr inbounds %struct.logger_data, %struct.logger_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.logger_data*, %struct.logger_data** %6, align 8
  %51 = getelementptr inbounds %struct.logger_data, %struct.logger_data* %50, i32 0, i32 0
  %52 = load i32, i32* @CROS_USBPD_LOG_UPDATE_DELAY, align 4
  %53 = call i32 @queue_delayed_work(i32 %49, i32* %51, i32 %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %46, %43, %19
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.cros_ec_dev* @dev_get_drvdata(i32) #1

declare dso_local %struct.logger_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.logger_data*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
