; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_max63xx_wdt.c_max63xx_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_max63xx_wdt.c_max63xx_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__*, %struct.device }
%struct.TYPE_7__ = type { i64 }
%struct.device = type { i32 }
%struct.max63xx_wdt = type { %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32*, i32*, i32, %struct.device* }
%struct.max63xx_timeout = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@heartbeat = common dso_local global i32 0, align 4
@MAX_HEARTBEAT = common dso_local global i32 0, align 4
@DEFAULT_HEARTBEAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"unable to satisfy %ds heartbeat request\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@max63xx_wdt_info = common dso_local global i32 0, align 4
@max63xx_wdt_ops = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"using %ds heartbeat with %ds initial delay\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max63xx_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max63xx_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.max63xx_wdt*, align 8
  %6 = alloca %struct.max63xx_timeout*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 1
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.max63xx_wdt* @devm_kzalloc(%struct.device* %10, i32 40, i32 %11)
  store %struct.max63xx_wdt* %12, %struct.max63xx_wdt** %5, align 8
  %13 = load %struct.max63xx_wdt*, %struct.max63xx_wdt** %5, align 8
  %14 = icmp ne %struct.max63xx_wdt* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %109

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.max63xx_timeout*
  store %struct.max63xx_timeout* %24, %struct.max63xx_timeout** %6, align 8
  %25 = load i32, i32* @heartbeat, align 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @heartbeat, align 4
  %29 = load i32, i32* @MAX_HEARTBEAT, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %18
  %32 = load i32, i32* @DEFAULT_HEARTBEAT, align 4
  store i32 %32, i32* @heartbeat, align 4
  br label %33

33:                                               ; preds = %31, %27
  %34 = load %struct.max63xx_timeout*, %struct.max63xx_timeout** %6, align 8
  %35 = load i32, i32* @heartbeat, align 4
  %36 = call %struct.TYPE_9__* @max63xx_select_timeout(%struct.max63xx_timeout* %34, i32 %35)
  %37 = load %struct.max63xx_wdt*, %struct.max63xx_wdt** %5, align 8
  %38 = getelementptr inbounds %struct.max63xx_wdt, %struct.max63xx_wdt* %37, i32 0, i32 0
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %38, align 8
  %39 = load %struct.max63xx_wdt*, %struct.max63xx_wdt** %5, align 8
  %40 = getelementptr inbounds %struct.max63xx_wdt, %struct.max63xx_wdt* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = icmp ne %struct.TYPE_9__* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %33
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load i32, i32* @heartbeat, align 4
  %46 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %109

49:                                               ; preds = %33
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = load %struct.max63xx_wdt*, %struct.max63xx_wdt** %5, align 8
  %52 = call i32 @max63xx_mmap_init(%struct.platform_device* %50, %struct.max63xx_wdt* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %2, align 4
  br label %109

57:                                               ; preds = %49
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = load %struct.max63xx_wdt*, %struct.max63xx_wdt** %5, align 8
  %60 = getelementptr inbounds %struct.max63xx_wdt, %struct.max63xx_wdt* %59, i32 0, i32 1
  %61 = call i32 @platform_set_drvdata(%struct.platform_device* %58, %struct.TYPE_8__* %60)
  %62 = load %struct.max63xx_wdt*, %struct.max63xx_wdt** %5, align 8
  %63 = getelementptr inbounds %struct.max63xx_wdt, %struct.max63xx_wdt* %62, i32 0, i32 1
  %64 = load %struct.max63xx_wdt*, %struct.max63xx_wdt** %5, align 8
  %65 = call i32 @watchdog_set_drvdata(%struct.TYPE_8__* %63, %struct.max63xx_wdt* %64)
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = load %struct.max63xx_wdt*, %struct.max63xx_wdt** %5, align 8
  %68 = getelementptr inbounds %struct.max63xx_wdt, %struct.max63xx_wdt* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  store %struct.device* %66, %struct.device** %69, align 8
  %70 = load %struct.max63xx_wdt*, %struct.max63xx_wdt** %5, align 8
  %71 = getelementptr inbounds %struct.max63xx_wdt, %struct.max63xx_wdt* %70, i32 0, i32 0
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.max63xx_wdt*, %struct.max63xx_wdt** %5, align 8
  %76 = getelementptr inbounds %struct.max63xx_wdt, %struct.max63xx_wdt* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  store i32 %74, i32* %77, align 8
  %78 = load %struct.max63xx_wdt*, %struct.max63xx_wdt** %5, align 8
  %79 = getelementptr inbounds %struct.max63xx_wdt, %struct.max63xx_wdt* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  store i32* @max63xx_wdt_info, i32** %80, align 8
  %81 = load %struct.max63xx_wdt*, %struct.max63xx_wdt** %5, align 8
  %82 = getelementptr inbounds %struct.max63xx_wdt, %struct.max63xx_wdt* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32* @max63xx_wdt_ops, i32** %83, align 8
  %84 = load %struct.max63xx_wdt*, %struct.max63xx_wdt** %5, align 8
  %85 = getelementptr inbounds %struct.max63xx_wdt, %struct.max63xx_wdt* %84, i32 0, i32 1
  %86 = load i32, i32* @nowayout, align 4
  %87 = call i32 @watchdog_set_nowayout(%struct.TYPE_8__* %85, i32 %86)
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = load %struct.max63xx_wdt*, %struct.max63xx_wdt** %5, align 8
  %90 = getelementptr inbounds %struct.max63xx_wdt, %struct.max63xx_wdt* %89, i32 0, i32 1
  %91 = call i32 @devm_watchdog_register_device(%struct.device* %88, %struct.TYPE_8__* %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %57
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %2, align 4
  br label %109

96:                                               ; preds = %57
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = load %struct.max63xx_wdt*, %struct.max63xx_wdt** %5, align 8
  %99 = getelementptr inbounds %struct.max63xx_wdt, %struct.max63xx_wdt* %98, i32 0, i32 0
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.max63xx_wdt*, %struct.max63xx_wdt** %5, align 8
  %104 = getelementptr inbounds %struct.max63xx_wdt, %struct.max63xx_wdt* %103, i32 0, i32 0
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @dev_info(%struct.device* %97, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %107)
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %96, %94, %55, %43, %15
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.max63xx_wdt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @max63xx_select_timeout(%struct.max63xx_timeout*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @max63xx_mmap_init(%struct.platform_device*, %struct.max63xx_wdt*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.TYPE_8__*) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_8__*, %struct.max63xx_wdt*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.TYPE_8__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
