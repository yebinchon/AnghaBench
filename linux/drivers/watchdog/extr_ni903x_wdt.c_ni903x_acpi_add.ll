; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_ni903x_wdt.c_ni903x_acpi_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_ni903x_wdt.c_ni903x_acpi_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, %struct.ni903x_wdt*, %struct.device }
%struct.ni903x_wdt = type { i64, %struct.watchdog_device, %struct.device* }
%struct.watchdog_device = type { %struct.device*, i32, i32, i32, i32*, i32* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@METHOD_NAME__CRS = common dso_local global i32 0, align 4
@ni903x_resources = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to get resources\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ni903x_wdd_info = common dso_local global i32 0, align 4
@ni903x_wdd_ops = common dso_local global i32 0, align 4
@NIWD_MIN_TIMEOUT = common dso_local global i32 0, align 4
@NIWD_MAX_TIMEOUT = common dso_local global i32 0, align 4
@NIWD_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@NIWD_CONTROL_RESET = common dso_local global i32 0, align 4
@NIWD_CONTROL_MODE = common dso_local global i32 0, align 4
@NIWD_CONTROL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"io_base=0x%04X, timeout=%d, nowayout=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @ni903x_acpi_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni903x_acpi_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.watchdog_device*, align 8
  %6 = alloca %struct.ni903x_wdt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %9 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %10 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %9, i32 0, i32 2
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ni903x_wdt* @devm_kzalloc(%struct.device* %11, i32 56, i32 %12)
  store %struct.ni903x_wdt* %13, %struct.ni903x_wdt** %6, align 8
  %14 = load %struct.ni903x_wdt*, %struct.ni903x_wdt** %6, align 8
  %15 = icmp ne %struct.ni903x_wdt* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %98

19:                                               ; preds = %1
  %20 = load %struct.ni903x_wdt*, %struct.ni903x_wdt** %6, align 8
  %21 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 1
  store %struct.ni903x_wdt* %20, %struct.ni903x_wdt** %22, align 8
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load %struct.ni903x_wdt*, %struct.ni903x_wdt** %6, align 8
  %25 = getelementptr inbounds %struct.ni903x_wdt, %struct.ni903x_wdt* %24, i32 0, i32 2
  store %struct.device* %23, %struct.device** %25, align 8
  %26 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %27 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @METHOD_NAME__CRS, align 4
  %30 = load i32, i32* @ni903x_resources, align 4
  %31 = load %struct.ni903x_wdt*, %struct.ni903x_wdt** %6, align 8
  %32 = call i32 @acpi_walk_resources(i32 %28, i32 %29, i32 %30, %struct.ni903x_wdt* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @ACPI_FAILURE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %19
  %37 = load %struct.ni903x_wdt*, %struct.ni903x_wdt** %6, align 8
  %38 = getelementptr inbounds %struct.ni903x_wdt, %struct.ni903x_wdt* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36, %19
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %98

46:                                               ; preds = %36
  %47 = load %struct.ni903x_wdt*, %struct.ni903x_wdt** %6, align 8
  %48 = getelementptr inbounds %struct.ni903x_wdt, %struct.ni903x_wdt* %47, i32 0, i32 1
  store %struct.watchdog_device* %48, %struct.watchdog_device** %5, align 8
  %49 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %50 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %49, i32 0, i32 5
  store i32* @ni903x_wdd_info, i32** %50, align 8
  %51 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %52 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %51, i32 0, i32 4
  store i32* @ni903x_wdd_ops, i32** %52, align 8
  %53 = load i32, i32* @NIWD_MIN_TIMEOUT, align 4
  %54 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %55 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @NIWD_MAX_TIMEOUT, align 4
  %57 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %58 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @NIWD_DEFAULT_TIMEOUT, align 4
  %60 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %61 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %64 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %63, i32 0, i32 0
  store %struct.device* %62, %struct.device** %64, align 8
  %65 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %66 = load %struct.ni903x_wdt*, %struct.ni903x_wdt** %6, align 8
  %67 = call i32 @watchdog_set_drvdata(%struct.watchdog_device* %65, %struct.ni903x_wdt* %66)
  %68 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %69 = load i32, i32* @nowayout, align 4
  %70 = call i32 @watchdog_set_nowayout(%struct.watchdog_device* %68, i32 %69)
  %71 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %72 = load i32, i32* @timeout, align 4
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = call i32 @watchdog_init_timeout(%struct.watchdog_device* %71, i32 %72, %struct.device* %73)
  %75 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %76 = call i32 @watchdog_register_device(%struct.watchdog_device* %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %46
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %2, align 4
  br label %98

81:                                               ; preds = %46
  %82 = load i32, i32* @NIWD_CONTROL_RESET, align 4
  %83 = load i32, i32* @NIWD_CONTROL_MODE, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.ni903x_wdt*, %struct.ni903x_wdt** %6, align 8
  %86 = getelementptr inbounds %struct.ni903x_wdt, %struct.ni903x_wdt* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @NIWD_CONTROL, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @outb(i32 %84, i64 %89)
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = load %struct.ni903x_wdt*, %struct.ni903x_wdt** %6, align 8
  %93 = getelementptr inbounds %struct.ni903x_wdt, %struct.ni903x_wdt* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @timeout, align 4
  %96 = load i32, i32* @nowayout, align 4
  %97 = call i32 @dev_dbg(%struct.device* %91, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %94, i32 %95, i32 %96)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %81, %79, %41, %16
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.ni903x_wdt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @acpi_walk_resources(i32, i32, i32, %struct.ni903x_wdt*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.watchdog_device*, %struct.ni903x_wdt*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.watchdog_device*, i32) #1

declare dso_local i32 @watchdog_init_timeout(%struct.watchdog_device*, i32, %struct.device*) #1

declare dso_local i32 @watchdog_register_device(%struct.watchdog_device*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
