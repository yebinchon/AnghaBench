; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_ftwdt010_wdt.c_ftwdt010_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_ftwdt010_wdt.c_ftwdt010_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.ftwdt010_wdt = type { i32, %struct.TYPE_3__, i64, %struct.device* }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.device*, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ftwdt010_wdt_info = common dso_local global i32 0, align 4
@ftwdt010_wdt_ops = common dso_local global i32 0, align 4
@WDT_CLOCK = common dso_local global i32 0, align 4
@FTWDT010_WDCR = common dso_local global i64 0, align 8
@WDCR_ENABLE = common dso_local global i32 0, align 4
@ftwdt010_wdt_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"watchdog bark\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"FTWDT010 watchdog driver enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ftwdt010_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftwdt010_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ftwdt010_wdt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ftwdt010_wdt* @devm_kzalloc(%struct.device* %11, i32 64, i32 %12)
  store %struct.ftwdt010_wdt* %13, %struct.ftwdt010_wdt** %5, align 8
  %14 = load %struct.ftwdt010_wdt*, %struct.ftwdt010_wdt** %5, align 8
  %15 = icmp ne %struct.ftwdt010_wdt* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %118

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %20, i32 0)
  %22 = load %struct.ftwdt010_wdt*, %struct.ftwdt010_wdt** %5, align 8
  %23 = getelementptr inbounds %struct.ftwdt010_wdt, %struct.ftwdt010_wdt* %22, i32 0, i32 2
  store i64 %21, i64* %23, align 8
  %24 = load %struct.ftwdt010_wdt*, %struct.ftwdt010_wdt** %5, align 8
  %25 = getelementptr inbounds %struct.ftwdt010_wdt, %struct.ftwdt010_wdt* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @IS_ERR(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load %struct.ftwdt010_wdt*, %struct.ftwdt010_wdt** %5, align 8
  %31 = getelementptr inbounds %struct.ftwdt010_wdt, %struct.ftwdt010_wdt* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @PTR_ERR(i64 %32)
  store i32 %33, i32* %2, align 4
  br label %118

34:                                               ; preds = %19
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load %struct.ftwdt010_wdt*, %struct.ftwdt010_wdt** %5, align 8
  %37 = getelementptr inbounds %struct.ftwdt010_wdt, %struct.ftwdt010_wdt* %36, i32 0, i32 3
  store %struct.device* %35, %struct.device** %37, align 8
  %38 = load %struct.ftwdt010_wdt*, %struct.ftwdt010_wdt** %5, align 8
  %39 = getelementptr inbounds %struct.ftwdt010_wdt, %struct.ftwdt010_wdt* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 5
  store i32* @ftwdt010_wdt_info, i32** %40, align 8
  %41 = load %struct.ftwdt010_wdt*, %struct.ftwdt010_wdt** %5, align 8
  %42 = getelementptr inbounds %struct.ftwdt010_wdt, %struct.ftwdt010_wdt* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  store i32* @ftwdt010_wdt_ops, i32** %43, align 8
  %44 = load %struct.ftwdt010_wdt*, %struct.ftwdt010_wdt** %5, align 8
  %45 = getelementptr inbounds %struct.ftwdt010_wdt, %struct.ftwdt010_wdt* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load i32, i32* @WDT_CLOCK, align 4
  %48 = udiv i32 -1, %47
  %49 = load %struct.ftwdt010_wdt*, %struct.ftwdt010_wdt** %5, align 8
  %50 = getelementptr inbounds %struct.ftwdt010_wdt, %struct.ftwdt010_wdt* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load %struct.ftwdt010_wdt*, %struct.ftwdt010_wdt** %5, align 8
  %54 = getelementptr inbounds %struct.ftwdt010_wdt, %struct.ftwdt010_wdt* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  store %struct.device* %52, %struct.device** %55, align 8
  %56 = load %struct.ftwdt010_wdt*, %struct.ftwdt010_wdt** %5, align 8
  %57 = getelementptr inbounds %struct.ftwdt010_wdt, %struct.ftwdt010_wdt* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  store i32 13, i32* %58, align 8
  %59 = load %struct.ftwdt010_wdt*, %struct.ftwdt010_wdt** %5, align 8
  %60 = getelementptr inbounds %struct.ftwdt010_wdt, %struct.ftwdt010_wdt* %59, i32 0, i32 1
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = call i32 @watchdog_init_timeout(%struct.TYPE_3__* %60, i32 0, %struct.device* %61)
  %63 = load %struct.ftwdt010_wdt*, %struct.ftwdt010_wdt** %5, align 8
  %64 = getelementptr inbounds %struct.ftwdt010_wdt, %struct.ftwdt010_wdt* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @FTWDT010_WDCR, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @readw(i64 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @WDCR_ENABLE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %34
  %74 = load i32, i32* @WDCR_ENABLE, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %6, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.ftwdt010_wdt*, %struct.ftwdt010_wdt** %5, align 8
  %80 = getelementptr inbounds %struct.ftwdt010_wdt, %struct.ftwdt010_wdt* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @FTWDT010_WDCR, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel(i32 %78, i64 %83)
  br label %85

85:                                               ; preds = %73, %34
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = call i32 @platform_get_irq(%struct.platform_device* %86, i32 0)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %85
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @ftwdt010_wdt_interrupt, align 4
  %94 = load %struct.ftwdt010_wdt*, %struct.ftwdt010_wdt** %5, align 8
  %95 = call i32 @devm_request_irq(%struct.device* %91, i32 %92, i32 %93, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.ftwdt010_wdt* %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %2, align 4
  br label %118

100:                                              ; preds = %90
  %101 = load %struct.ftwdt010_wdt*, %struct.ftwdt010_wdt** %5, align 8
  %102 = getelementptr inbounds %struct.ftwdt010_wdt, %struct.ftwdt010_wdt* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  br label %103

103:                                              ; preds = %100, %85
  %104 = load %struct.device*, %struct.device** %4, align 8
  %105 = load %struct.ftwdt010_wdt*, %struct.ftwdt010_wdt** %5, align 8
  %106 = getelementptr inbounds %struct.ftwdt010_wdt, %struct.ftwdt010_wdt* %105, i32 0, i32 1
  %107 = call i32 @devm_watchdog_register_device(%struct.device* %104, %struct.TYPE_3__* %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %2, align 4
  br label %118

112:                                              ; preds = %103
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = load %struct.ftwdt010_wdt*, %struct.ftwdt010_wdt** %5, align 8
  %115 = call i32 @platform_set_drvdata(%struct.platform_device* %113, %struct.ftwdt010_wdt* %114)
  %116 = load %struct.device*, %struct.device** %4, align 8
  %117 = call i32 @dev_info(%struct.device* %116, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %112, %110, %98, %29, %16
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local %struct.ftwdt010_wdt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_3__*, i32, %struct.device*) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.ftwdt010_wdt*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.TYPE_3__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ftwdt010_wdt*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
