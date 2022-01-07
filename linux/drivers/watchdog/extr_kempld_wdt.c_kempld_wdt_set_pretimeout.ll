; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_kempld_wdt.c_kempld_wdt_set_pretimeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_kempld_wdt.c_kempld_wdt_set_pretimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.kempld_wdt_data = type { i32, %struct.kempld_wdt_stage* }
%struct.kempld_wdt_stage = type { i32 }

@ACTION_NONE = common dso_local global i32 0, align 4
@STAGE_PRETIMEOUT = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ACTION_NMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @kempld_wdt_set_pretimeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kempld_wdt_set_pretimeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.watchdog_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kempld_wdt_data*, align 8
  %7 = alloca %struct.kempld_wdt_stage*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %11 = call %struct.kempld_wdt_data* @watchdog_get_drvdata(%struct.watchdog_device* %10)
  store %struct.kempld_wdt_data* %11, %struct.kempld_wdt_data** %6, align 8
  %12 = load i32, i32* @ACTION_NONE, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %6, align 8
  %14 = getelementptr inbounds %struct.kempld_wdt_data, %struct.kempld_wdt_data* %13, i32 0, i32 1
  %15 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %14, align 8
  %16 = load i64, i64* @STAGE_PRETIMEOUT, align 8
  %17 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %15, i64 %16
  store %struct.kempld_wdt_stage* %17, %struct.kempld_wdt_stage** %7, align 8
  %18 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %7, align 8
  %19 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENXIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %65

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %28 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ugt i32 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %65

34:                                               ; preds = %25
  %35 = load i32, i32* %5, align 4
  %36 = icmp ugt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @ACTION_NMI, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %37, %34
  %40 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %6, align 8
  %41 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @kempld_wdt_set_stage_action(%struct.kempld_wdt_data* %40, %struct.kempld_wdt_stage* %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %3, align 4
  br label %65

48:                                               ; preds = %39
  %49 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %6, align 8
  %50 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %7, align 8
  %51 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %52 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = sub i32 %53, %54
  %56 = call i32 @kempld_wdt_set_stage_timeout(%struct.kempld_wdt_data* %49, %struct.kempld_wdt_stage* %50, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %3, align 4
  br label %65

61:                                               ; preds = %48
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %6, align 8
  %64 = getelementptr inbounds %struct.kempld_wdt_data, %struct.kempld_wdt_data* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %59, %46, %31, %22
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.kempld_wdt_data* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @kempld_wdt_set_stage_action(%struct.kempld_wdt_data*, %struct.kempld_wdt_stage*, i32) #1

declare dso_local i32 @kempld_wdt_set_stage_timeout(%struct.kempld_wdt_data*, %struct.kempld_wdt_stage*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
