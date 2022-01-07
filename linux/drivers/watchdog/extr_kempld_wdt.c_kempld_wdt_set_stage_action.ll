; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_kempld_wdt.c_kempld_wdt_set_stage_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_kempld_wdt.c_kempld_wdt_set_stage_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kempld_wdt_data = type { %struct.kempld_device_data* }
%struct.kempld_device_data = type { i32 }
%struct.kempld_wdt_stage = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@STAGE_CFG_ACTION_MASK = common dso_local global i32 0, align 4
@ACTION_RESET = common dso_local global i32 0, align 4
@STAGE_CFG_ASSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kempld_wdt_data*, %struct.kempld_wdt_stage*, i32)* @kempld_wdt_set_stage_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kempld_wdt_set_stage_action(%struct.kempld_wdt_data* %0, %struct.kempld_wdt_stage* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kempld_wdt_data*, align 8
  %6 = alloca %struct.kempld_wdt_stage*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kempld_device_data*, align 8
  %9 = alloca i32, align 4
  store %struct.kempld_wdt_data* %0, %struct.kempld_wdt_data** %5, align 8
  store %struct.kempld_wdt_stage* %1, %struct.kempld_wdt_stage** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %5, align 8
  %11 = getelementptr inbounds %struct.kempld_wdt_data, %struct.kempld_wdt_data* %10, i32 0, i32 0
  %12 = load %struct.kempld_device_data*, %struct.kempld_device_data** %11, align 8
  store %struct.kempld_device_data* %12, %struct.kempld_device_data** %8, align 8
  %13 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %6, align 8
  %14 = icmp ne %struct.kempld_wdt_stage* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %6, align 8
  %17 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15, %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %63

23:                                               ; preds = %15
  %24 = load %struct.kempld_device_data*, %struct.kempld_device_data** %8, align 8
  %25 = call i32 @kempld_get_mutex(%struct.kempld_device_data* %24)
  %26 = load %struct.kempld_device_data*, %struct.kempld_device_data** %8, align 8
  %27 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %6, align 8
  %28 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @KEMPLD_WDT_STAGE_CFG(i32 %29)
  %31 = call i32 @kempld_read8(%struct.kempld_device_data* %26, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* @STAGE_CFG_ACTION_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @STAGE_CFG_ACTION_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @ACTION_RESET, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %23
  %45 = load i32, i32* @STAGE_CFG_ASSERT, align 4
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  br label %53

48:                                               ; preds = %23
  %49 = load i32, i32* @STAGE_CFG_ASSERT, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %48, %44
  %54 = load %struct.kempld_device_data*, %struct.kempld_device_data** %8, align 8
  %55 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %6, align 8
  %56 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @KEMPLD_WDT_STAGE_CFG(i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @kempld_write8(%struct.kempld_device_data* %54, i32 %58, i32 %59)
  %61 = load %struct.kempld_device_data*, %struct.kempld_device_data** %8, align 8
  %62 = call i32 @kempld_release_mutex(%struct.kempld_device_data* %61)
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %53, %20
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @kempld_get_mutex(%struct.kempld_device_data*) #1

declare dso_local i32 @kempld_read8(%struct.kempld_device_data*, i32) #1

declare dso_local i32 @KEMPLD_WDT_STAGE_CFG(i32) #1

declare dso_local i32 @kempld_write8(%struct.kempld_device_data*, i32, i32) #1

declare dso_local i32 @kempld_release_mutex(%struct.kempld_device_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
