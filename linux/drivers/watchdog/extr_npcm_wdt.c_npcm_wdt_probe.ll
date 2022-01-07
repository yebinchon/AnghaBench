; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_npcm_wdt.c_npcm_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_npcm_wdt.c_npcm_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.npcm_wdt = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.device*, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@npcm_wdt_info = common dso_local global i32 0, align 4
@npcm_wdt_ops = common dso_local global i32 0, align 4
@WDOG_HW_RUNNING = common dso_local global i32 0, align 4
@npcm_wdt_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"watchdog\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"NPCM watchdog driver enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @npcm_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.npcm_wdt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.npcm_wdt* @devm_kzalloc(%struct.device* %10, i32 48, i32 %11)
  store %struct.npcm_wdt* %12, %struct.npcm_wdt** %5, align 8
  %13 = load %struct.npcm_wdt*, %struct.npcm_wdt** %5, align 8
  %14 = icmp ne %struct.npcm_wdt* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %106

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %19, i32 0)
  %21 = load %struct.npcm_wdt*, %struct.npcm_wdt** %5, align 8
  %22 = getelementptr inbounds %struct.npcm_wdt, %struct.npcm_wdt* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.npcm_wdt*, %struct.npcm_wdt** %5, align 8
  %24 = getelementptr inbounds %struct.npcm_wdt, %struct.npcm_wdt* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load %struct.npcm_wdt*, %struct.npcm_wdt** %5, align 8
  %30 = getelementptr inbounds %struct.npcm_wdt, %struct.npcm_wdt* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @PTR_ERR(i32 %31)
  store i32 %32, i32* %2, align 4
  br label %106

33:                                               ; preds = %18
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = call i32 @platform_get_irq(%struct.platform_device* %34, i32 0)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %106

40:                                               ; preds = %33
  %41 = load %struct.npcm_wdt*, %struct.npcm_wdt** %5, align 8
  %42 = getelementptr inbounds %struct.npcm_wdt, %struct.npcm_wdt* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 6
  store i32* @npcm_wdt_info, i32** %43, align 8
  %44 = load %struct.npcm_wdt*, %struct.npcm_wdt** %5, align 8
  %45 = getelementptr inbounds %struct.npcm_wdt, %struct.npcm_wdt* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 5
  store i32* @npcm_wdt_ops, i32** %46, align 8
  %47 = load %struct.npcm_wdt*, %struct.npcm_wdt** %5, align 8
  %48 = getelementptr inbounds %struct.npcm_wdt, %struct.npcm_wdt* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.npcm_wdt*, %struct.npcm_wdt** %5, align 8
  %51 = getelementptr inbounds %struct.npcm_wdt, %struct.npcm_wdt* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i32 2750, i32* %52, align 4
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = load %struct.npcm_wdt*, %struct.npcm_wdt** %5, align 8
  %55 = getelementptr inbounds %struct.npcm_wdt, %struct.npcm_wdt* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 4
  store %struct.device* %53, %struct.device** %56, align 8
  %57 = load %struct.npcm_wdt*, %struct.npcm_wdt** %5, align 8
  %58 = getelementptr inbounds %struct.npcm_wdt, %struct.npcm_wdt* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  store i32 86, i32* %59, align 8
  %60 = load %struct.npcm_wdt*, %struct.npcm_wdt** %5, align 8
  %61 = getelementptr inbounds %struct.npcm_wdt, %struct.npcm_wdt* %60, i32 0, i32 0
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i32 @watchdog_init_timeout(%struct.TYPE_6__* %61, i32 0, %struct.device* %62)
  %64 = load %struct.npcm_wdt*, %struct.npcm_wdt** %5, align 8
  %65 = getelementptr inbounds %struct.npcm_wdt, %struct.npcm_wdt* %64, i32 0, i32 0
  %66 = load %struct.npcm_wdt*, %struct.npcm_wdt** %5, align 8
  %67 = getelementptr inbounds %struct.npcm_wdt, %struct.npcm_wdt* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @npcm_wdt_set_timeout(%struct.TYPE_6__* %65, i32 %69)
  %71 = load %struct.npcm_wdt*, %struct.npcm_wdt** %5, align 8
  %72 = getelementptr inbounds %struct.npcm_wdt, %struct.npcm_wdt* %71, i32 0, i32 0
  %73 = call i64 @npcm_is_running(%struct.TYPE_6__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %40
  %76 = load %struct.npcm_wdt*, %struct.npcm_wdt** %5, align 8
  %77 = getelementptr inbounds %struct.npcm_wdt, %struct.npcm_wdt* %76, i32 0, i32 0
  %78 = call i32 @npcm_wdt_start(%struct.TYPE_6__* %77)
  %79 = load i32, i32* @WDOG_HW_RUNNING, align 4
  %80 = load %struct.npcm_wdt*, %struct.npcm_wdt** %5, align 8
  %81 = getelementptr inbounds %struct.npcm_wdt, %struct.npcm_wdt* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  %83 = call i32 @set_bit(i32 %79, i32* %82)
  br label %84

84:                                               ; preds = %75, %40
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @npcm_wdt_interrupt, align 4
  %88 = load %struct.npcm_wdt*, %struct.npcm_wdt** %5, align 8
  %89 = call i32 @devm_request_irq(%struct.device* %85, i32 %86, i32 %87, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.npcm_wdt* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %2, align 4
  br label %106

94:                                               ; preds = %84
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = load %struct.npcm_wdt*, %struct.npcm_wdt** %5, align 8
  %97 = getelementptr inbounds %struct.npcm_wdt, %struct.npcm_wdt* %96, i32 0, i32 0
  %98 = call i32 @devm_watchdog_register_device(%struct.device* %95, %struct.TYPE_6__* %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  br label %106

103:                                              ; preds = %94
  %104 = load %struct.device*, %struct.device** %4, align 8
  %105 = call i32 @dev_info(%struct.device* %104, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %103, %101, %92, %38, %28, %15
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.npcm_wdt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_6__*, i32, %struct.device*) #1

declare dso_local i32 @npcm_wdt_set_timeout(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @npcm_is_running(%struct.TYPE_6__*) #1

declare dso_local i32 @npcm_wdt_start(%struct.TYPE_6__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.npcm_wdt*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.TYPE_6__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
