; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_rn5t618_wdt.c_rn5t618_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_rn5t618_wdt.c_rn5t618_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.rn5t618 = type { i32 }
%struct.rn5t618_wdt = type { %struct.TYPE_7__, %struct.rn5t618* }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.device*, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rn5t618_wdt_map = common dso_local global %struct.TYPE_8__* null, align 8
@rn5t618_wdt_info = common dso_local global i32 0, align 4
@rn5t618_wdt_ops = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rn5t618_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rn5t618_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rn5t618*, align 8
  %6 = alloca %struct.rn5t618_wdt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.rn5t618* @dev_get_drvdata(i32 %13)
  store %struct.rn5t618* %14, %struct.rn5t618** %5, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.rn5t618_wdt* @devm_kzalloc(%struct.device* %15, i32 48, i32 %16)
  store %struct.rn5t618_wdt* %17, %struct.rn5t618_wdt** %6, align 8
  %18 = load %struct.rn5t618_wdt*, %struct.rn5t618_wdt** %6, align 8
  %19 = icmp ne %struct.rn5t618_wdt* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %80

23:                                               ; preds = %1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rn5t618_wdt_map, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rn5t618_wdt_map, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rn5t618_wdt_map, align 8
  %30 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %29)
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  %36 = load %struct.rn5t618*, %struct.rn5t618** %5, align 8
  %37 = load %struct.rn5t618_wdt*, %struct.rn5t618_wdt** %6, align 8
  %38 = getelementptr inbounds %struct.rn5t618_wdt, %struct.rn5t618_wdt* %37, i32 0, i32 1
  store %struct.rn5t618* %36, %struct.rn5t618** %38, align 8
  %39 = load %struct.rn5t618_wdt*, %struct.rn5t618_wdt** %6, align 8
  %40 = getelementptr inbounds %struct.rn5t618_wdt, %struct.rn5t618_wdt* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 5
  store i32* @rn5t618_wdt_info, i32** %41, align 8
  %42 = load %struct.rn5t618_wdt*, %struct.rn5t618_wdt** %6, align 8
  %43 = getelementptr inbounds %struct.rn5t618_wdt, %struct.rn5t618_wdt* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 4
  store i32* @rn5t618_wdt_ops, i32** %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.rn5t618_wdt*, %struct.rn5t618_wdt** %6, align 8
  %47 = getelementptr inbounds %struct.rn5t618_wdt, %struct.rn5t618_wdt* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.rn5t618_wdt*, %struct.rn5t618_wdt** %6, align 8
  %51 = getelementptr inbounds %struct.rn5t618_wdt, %struct.rn5t618_wdt* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.rn5t618_wdt*, %struct.rn5t618_wdt** %6, align 8
  %55 = getelementptr inbounds %struct.rn5t618_wdt, %struct.rn5t618_wdt* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 8
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load %struct.rn5t618_wdt*, %struct.rn5t618_wdt** %6, align 8
  %59 = getelementptr inbounds %struct.rn5t618_wdt, %struct.rn5t618_wdt* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  store %struct.device* %57, %struct.device** %60, align 8
  %61 = load %struct.rn5t618_wdt*, %struct.rn5t618_wdt** %6, align 8
  %62 = getelementptr inbounds %struct.rn5t618_wdt, %struct.rn5t618_wdt* %61, i32 0, i32 0
  %63 = load %struct.rn5t618_wdt*, %struct.rn5t618_wdt** %6, align 8
  %64 = call i32 @watchdog_set_drvdata(%struct.TYPE_7__* %62, %struct.rn5t618_wdt* %63)
  %65 = load %struct.rn5t618_wdt*, %struct.rn5t618_wdt** %6, align 8
  %66 = getelementptr inbounds %struct.rn5t618_wdt, %struct.rn5t618_wdt* %65, i32 0, i32 0
  %67 = load i32, i32* @timeout, align 4
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = call i32 @watchdog_init_timeout(%struct.TYPE_7__* %66, i32 %67, %struct.device* %68)
  %70 = load %struct.rn5t618_wdt*, %struct.rn5t618_wdt** %6, align 8
  %71 = getelementptr inbounds %struct.rn5t618_wdt, %struct.rn5t618_wdt* %70, i32 0, i32 0
  %72 = load i32, i32* @nowayout, align 4
  %73 = call i32 @watchdog_set_nowayout(%struct.TYPE_7__* %71, i32 %72)
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = load %struct.rn5t618_wdt*, %struct.rn5t618_wdt** %6, align 8
  %76 = call i32 @platform_set_drvdata(%struct.platform_device* %74, %struct.rn5t618_wdt* %75)
  %77 = load %struct.rn5t618_wdt*, %struct.rn5t618_wdt** %6, align 8
  %78 = getelementptr inbounds %struct.rn5t618_wdt, %struct.rn5t618_wdt* %77, i32 0, i32 0
  %79 = call i32 @watchdog_register_device(%struct.TYPE_7__* %78)
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %23, %20
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.rn5t618* @dev_get_drvdata(i32) #1

declare dso_local %struct.rn5t618_wdt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_7__*, %struct.rn5t618_wdt*) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_7__*, i32, %struct.device*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rn5t618_wdt*) #1

declare dso_local i32 @watchdog_register_device(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
