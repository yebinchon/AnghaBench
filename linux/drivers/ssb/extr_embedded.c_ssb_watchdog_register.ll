; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_embedded.c_ssb_watchdog_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_embedded.c_ssb_watchdog_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { %struct.platform_device*, i32, %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.platform_device = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bcm47xx_wdt = type { i32, i32, i32, %struct.TYPE_3__* }

@ssb_chipco_watchdog_timer_set_wdt = common dso_local global i32 0, align 4
@ssb_chipco_watchdog_timer_set_ms = common dso_local global i32 0, align 4
@ssb_extif_watchdog_timer_set_wdt = common dso_local global i32 0, align 4
@ssb_extif_watchdog_timer_set_ms = common dso_local global i32 0, align 4
@SSB_EXTIF_WATCHDOG_MAX_TIMER_MS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"bcm47xx-wdt\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"can not register watchdog device, err: %li\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_watchdog_register(%struct.ssb_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssb_bus*, align 8
  %4 = alloca %struct.bcm47xx_wdt, align 8
  %5 = alloca %struct.platform_device*, align 8
  store %struct.ssb_bus* %0, %struct.ssb_bus** %3, align 8
  %6 = bitcast %struct.bcm47xx_wdt* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 24, i1 false)
  %7 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %8 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %7, i32 0, i32 3
  %9 = call i64 @ssb_chipco_available(%struct.TYPE_3__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %13 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %4, i32 0, i32 3
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %14, align 8
  %15 = load i32, i32* @ssb_chipco_watchdog_timer_set_wdt, align 4
  %16 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %4, i32 0, i32 2
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* @ssb_chipco_watchdog_timer_set_ms, align 4
  %18 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %4, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %20 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %4, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  br label %43

24:                                               ; preds = %1
  %25 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %26 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %25, i32 0, i32 2
  %27 = call i64 @ssb_extif_available(%struct.TYPE_3__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %31 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %4, i32 0, i32 3
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %32, align 8
  %33 = load i32, i32* @ssb_extif_watchdog_timer_set_wdt, align 4
  %34 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %4, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* @ssb_extif_watchdog_timer_set_ms, align 4
  %36 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %4, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @SSB_EXTIF_WATCHDOG_MAX_TIMER_MS, align 4
  %38 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %4, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  br label %42

39:                                               ; preds = %24
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %61

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42, %11
  %44 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %45 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.platform_device* @platform_device_register_data(i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %46, %struct.bcm47xx_wdt* %4, i32 24)
  store %struct.platform_device* %47, %struct.platform_device** %5, align 8
  %48 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %49 = call i64 @IS_ERR(%struct.platform_device* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %53 = call i32 @PTR_ERR(%struct.platform_device* %52)
  %54 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %56 = call i32 @PTR_ERR(%struct.platform_device* %55)
  store i32 %56, i32* %2, align 4
  br label %61

57:                                               ; preds = %43
  %58 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %59 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %60 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %59, i32 0, i32 0
  store %struct.platform_device* %58, %struct.platform_device** %60, align 8
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %57, %51, %39
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ssb_chipco_available(%struct.TYPE_3__*) #2

declare dso_local i64 @ssb_extif_available(%struct.TYPE_3__*) #2

declare dso_local %struct.platform_device* @platform_device_register_data(i32*, i8*, i32, %struct.bcm47xx_wdt*, i32) #2

declare dso_local i64 @IS_ERR(%struct.platform_device*) #2

declare dso_local i32 @pr_debug(i8*, i32) #2

declare dso_local i32 @PTR_ERR(%struct.platform_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
