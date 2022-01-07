; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_ebc-c384_wdt.c_ebc_c384_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_ebc-c384_wdt.c_ebc_c384_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.watchdog_device = type { i32, i32, i32, i32*, i32* }

@BASE_ADDR = common dso_local global i64 0, align 8
@ADDR_EXTENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Unable to lock port addresses (0x%X-0x%X)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ebc_c384_wdt_info = common dso_local global i32 0, align 4
@ebc_c384_wdt_ops = common dso_local global i32 0, align 4
@WATCHDOG_TIMEOUT = common dso_local global i32 0, align 4
@WATCHDOG_MAX_TIMEOUT = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @ebc_c384_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebc_c384_wdt_probe(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.watchdog_device*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = load i64, i64* @BASE_ADDR, align 8
  %9 = load i64, i64* @ADDR_EXTENT, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i32 @dev_name(%struct.device* %10)
  %12 = call i32 @devm_request_region(%struct.device* %7, i64 %8, i64 %9, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load i64, i64* @BASE_ADDR, align 8
  %17 = load i64, i64* @BASE_ADDR, align 8
  %18 = load i64, i64* @ADDR_EXTENT, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @dev_err(%struct.device* %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %16, i64 %19)
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %55

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.watchdog_device* @devm_kzalloc(%struct.device* %24, i32 32, i32 %25)
  store %struct.watchdog_device* %26, %struct.watchdog_device** %6, align 8
  %27 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %28 = icmp ne %struct.watchdog_device* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %55

32:                                               ; preds = %23
  %33 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %34 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %33, i32 0, i32 4
  store i32* @ebc_c384_wdt_info, i32** %34, align 8
  %35 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %36 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %35, i32 0, i32 3
  store i32* @ebc_c384_wdt_ops, i32** %36, align 8
  %37 = load i32, i32* @WATCHDOG_TIMEOUT, align 4
  %38 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %39 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %41 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load i32, i32* @WATCHDOG_MAX_TIMEOUT, align 4
  %43 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %44 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %46 = load i32, i32* @nowayout, align 4
  %47 = call i32 @watchdog_set_nowayout(%struct.watchdog_device* %45, i32 %46)
  %48 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %49 = load i32, i32* @timeout, align 4
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = call i32 @watchdog_init_timeout(%struct.watchdog_device* %48, i32 %49, %struct.device* %50)
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %54 = call i32 @devm_watchdog_register_device(%struct.device* %52, %struct.watchdog_device* %53)
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %32, %29, %14
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @devm_request_region(%struct.device*, i64, i64, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i64) #1

declare dso_local %struct.watchdog_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.watchdog_device*, i32) #1

declare dso_local i32 @watchdog_init_timeout(%struct.watchdog_device*, i32, %struct.device*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.watchdog_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
