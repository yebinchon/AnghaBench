; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_pm8916_wdt.c_pm8916_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_pm8916_wdt.c_pm8916_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device* }
%struct.pm8916_wdt = type { %struct.TYPE_5__, i64, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i32, %struct.device*, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to locate regmap\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to get pm8916-pon address\0A\00", align 1
@pm8916_wdt_isr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"pm8916_wdt\00", align 1
@pm8916_wdt_pt_ident = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@pm8916_wdt_ident = common dso_local global i32 0, align 4
@PON_PMIC_WD_RESET_S2_CTL = common dso_local global i64 0, align 8
@RESET_TYPE_HARD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"failed configure watchdog\0A\00", align 1
@pm8916_wdt_ops = common dso_local global i32 0, align 4
@PM8916_WDT_MIN_TIMEOUT = common dso_local global i32 0, align 4
@PM8916_WDT_MAX_TIMEOUT = common dso_local global i32 0, align 4
@PM8916_WDT_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pm8916_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8916_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.pm8916_wdt*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.pm8916_wdt* @devm_kzalloc(%struct.device* %11, i32 64, i32 %12)
  store %struct.pm8916_wdt* %13, %struct.pm8916_wdt** %5, align 8
  %14 = load %struct.pm8916_wdt*, %struct.pm8916_wdt** %5, align 8
  %15 = icmp ne %struct.pm8916_wdt* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %135

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load %struct.device*, %struct.device** %21, align 8
  store %struct.device* %22, %struct.device** %6, align 8
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  %25 = load %struct.device*, %struct.device** %24, align 8
  %26 = call i32 @dev_get_regmap(%struct.device* %25, i32* null)
  %27 = load %struct.pm8916_wdt*, %struct.pm8916_wdt** %5, align 8
  %28 = getelementptr inbounds %struct.pm8916_wdt, %struct.pm8916_wdt* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.pm8916_wdt*, %struct.pm8916_wdt** %5, align 8
  %30 = getelementptr inbounds %struct.pm8916_wdt, %struct.pm8916_wdt* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %19
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %135

38:                                               ; preds = %19
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = load %struct.pm8916_wdt*, %struct.pm8916_wdt** %5, align 8
  %41 = getelementptr inbounds %struct.pm8916_wdt, %struct.pm8916_wdt* %40, i32 0, i32 1
  %42 = call i32 @device_property_read_u32(%struct.device* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %135

49:                                               ; preds = %38
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = call i32 @platform_get_irq(%struct.platform_device* %50, i32 0)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @pm8916_wdt_isr, align 4
  %58 = load %struct.pm8916_wdt*, %struct.pm8916_wdt** %5, align 8
  %59 = call i32 @devm_request_irq(%struct.device* %55, i32 %56, i32 %57, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct.pm8916_wdt* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %135

64:                                               ; preds = %54
  %65 = load %struct.pm8916_wdt*, %struct.pm8916_wdt** %5, align 8
  %66 = getelementptr inbounds %struct.pm8916_wdt, %struct.pm8916_wdt* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 6
  store i32* @pm8916_wdt_pt_ident, i32** %67, align 8
  br label %80

68:                                               ; preds = %49
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @EPROBE_DEFER, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* @EPROBE_DEFER, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %135

76:                                               ; preds = %68
  %77 = load %struct.pm8916_wdt*, %struct.pm8916_wdt** %5, align 8
  %78 = getelementptr inbounds %struct.pm8916_wdt, %struct.pm8916_wdt* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 6
  store i32* @pm8916_wdt_ident, i32** %79, align 8
  br label %80

80:                                               ; preds = %76, %64
  %81 = load %struct.pm8916_wdt*, %struct.pm8916_wdt** %5, align 8
  %82 = getelementptr inbounds %struct.pm8916_wdt, %struct.pm8916_wdt* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.pm8916_wdt*, %struct.pm8916_wdt** %5, align 8
  %85 = getelementptr inbounds %struct.pm8916_wdt, %struct.pm8916_wdt* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @PON_PMIC_WD_RESET_S2_CTL, align 8
  %88 = add nsw i64 %86, %87
  %89 = load i32, i32* @RESET_TYPE_HARD, align 4
  %90 = call i32 @regmap_write(i32 %83, i64 %88, i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %80
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = call i32 @dev_err(%struct.device* %94, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %2, align 4
  br label %135

97:                                               ; preds = %80
  %98 = load %struct.pm8916_wdt*, %struct.pm8916_wdt** %5, align 8
  %99 = getelementptr inbounds %struct.pm8916_wdt, %struct.pm8916_wdt* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 5
  store i32* @pm8916_wdt_ops, i32** %100, align 8
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = load %struct.pm8916_wdt*, %struct.pm8916_wdt** %5, align 8
  %103 = getelementptr inbounds %struct.pm8916_wdt, %struct.pm8916_wdt* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 4
  store %struct.device* %101, %struct.device** %104, align 8
  %105 = load i32, i32* @PM8916_WDT_MIN_TIMEOUT, align 4
  %106 = load %struct.pm8916_wdt*, %struct.pm8916_wdt** %5, align 8
  %107 = getelementptr inbounds %struct.pm8916_wdt, %struct.pm8916_wdt* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 3
  store i32 %105, i32* %108, align 8
  %109 = load i32, i32* @PM8916_WDT_MAX_TIMEOUT, align 4
  %110 = load %struct.pm8916_wdt*, %struct.pm8916_wdt** %5, align 8
  %111 = getelementptr inbounds %struct.pm8916_wdt, %struct.pm8916_wdt* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 2
  store i32 %109, i32* %112, align 4
  %113 = load i32, i32* @PM8916_WDT_DEFAULT_TIMEOUT, align 4
  %114 = load %struct.pm8916_wdt*, %struct.pm8916_wdt** %5, align 8
  %115 = getelementptr inbounds %struct.pm8916_wdt, %struct.pm8916_wdt* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 8
  %117 = load %struct.pm8916_wdt*, %struct.pm8916_wdt** %5, align 8
  %118 = getelementptr inbounds %struct.pm8916_wdt, %struct.pm8916_wdt* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  store i64 0, i64* %119, align 8
  %120 = load %struct.pm8916_wdt*, %struct.pm8916_wdt** %5, align 8
  %121 = getelementptr inbounds %struct.pm8916_wdt, %struct.pm8916_wdt* %120, i32 0, i32 0
  %122 = load %struct.pm8916_wdt*, %struct.pm8916_wdt** %5, align 8
  %123 = call i32 @watchdog_set_drvdata(%struct.TYPE_5__* %121, %struct.pm8916_wdt* %122)
  %124 = load %struct.pm8916_wdt*, %struct.pm8916_wdt** %5, align 8
  %125 = getelementptr inbounds %struct.pm8916_wdt, %struct.pm8916_wdt* %124, i32 0, i32 0
  %126 = load %struct.device*, %struct.device** %4, align 8
  %127 = call i32 @watchdog_init_timeout(%struct.TYPE_5__* %125, i32 0, %struct.device* %126)
  %128 = load %struct.pm8916_wdt*, %struct.pm8916_wdt** %5, align 8
  %129 = getelementptr inbounds %struct.pm8916_wdt, %struct.pm8916_wdt* %128, i32 0, i32 0
  %130 = call i32 @pm8916_wdt_configure_timers(%struct.TYPE_5__* %129)
  %131 = load %struct.device*, %struct.device** %4, align 8
  %132 = load %struct.pm8916_wdt*, %struct.pm8916_wdt** %5, align 8
  %133 = getelementptr inbounds %struct.pm8916_wdt, %struct.pm8916_wdt* %132, i32 0, i32 0
  %134 = call i32 @devm_watchdog_register_device(%struct.device* %131, %struct.TYPE_5__* %133)
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %97, %93, %73, %62, %45, %33, %16
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.pm8916_wdt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_get_regmap(%struct.device*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i64*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.pm8916_wdt*) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_5__*, %struct.pm8916_wdt*) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_5__*, i32, %struct.device*) #1

declare dso_local i32 @pm8916_wdt_configure_timers(%struct.TYPE_5__*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
