; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_kempld_wdt.c_kempld_wdt_set_stage_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_kempld_wdt.c_kempld_wdt_set_stage_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kempld_wdt_data = type { %struct.kempld_device_data* }
%struct.kempld_device_data = type { i32 }
%struct.kempld_wdt_stage = type { i32, i32 }

@kempld_prescaler = common dso_local global i32* null, align 8
@PRESCALER_21 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@STAGE_CFG_PRESCALER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kempld_wdt_data*, %struct.kempld_wdt_stage*, i32)* @kempld_wdt_set_stage_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kempld_wdt_set_stage_timeout(%struct.kempld_wdt_data* %0, %struct.kempld_wdt_stage* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kempld_wdt_data*, align 8
  %6 = alloca %struct.kempld_wdt_stage*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kempld_device_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.kempld_wdt_data* %0, %struct.kempld_wdt_data** %5, align 8
  store %struct.kempld_wdt_stage* %1, %struct.kempld_wdt_stage** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %5, align 8
  %15 = getelementptr inbounds %struct.kempld_wdt_data, %struct.kempld_wdt_data* %14, i32 0, i32 0
  %16 = load %struct.kempld_device_data*, %struct.kempld_device_data** %15, align 8
  store %struct.kempld_device_data* %16, %struct.kempld_device_data** %8, align 8
  %17 = load i32*, i32** @kempld_prescaler, align 8
  %18 = load i64, i64* @PRESCALER_21, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %6, align 8
  %22 = icmp ne %struct.kempld_wdt_stage* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %87

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.kempld_device_data*, %struct.kempld_device_data** %8, align 8
  %29 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %27, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @do_div(i32 %32, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %37, %26
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %6, align 8
  %43 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %87

49:                                               ; preds = %40
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %6, align 8
  %52 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %50, %53
  store i32 %54, i32* %11, align 4
  %55 = load %struct.kempld_device_data*, %struct.kempld_device_data** %8, align 8
  %56 = call i32 @kempld_get_mutex(%struct.kempld_device_data* %55)
  %57 = load %struct.kempld_device_data*, %struct.kempld_device_data** %8, align 8
  %58 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %6, align 8
  %59 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @KEMPLD_WDT_STAGE_CFG(i32 %60)
  %62 = call i32 @kempld_read8(%struct.kempld_device_data* %57, i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* @STAGE_CFG_PRESCALER_MASK, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %13, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %13, align 4
  %67 = load i64, i64* @PRESCALER_21, align 8
  %68 = call i32 @STAGE_CFG_SET_PRESCALER(i64 %67)
  %69 = load i32, i32* %13, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %13, align 4
  %71 = load %struct.kempld_device_data*, %struct.kempld_device_data** %8, align 8
  %72 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %6, align 8
  %73 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @KEMPLD_WDT_STAGE_CFG(i32 %74)
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @kempld_write8(%struct.kempld_device_data* %71, i32 %75, i32 %76)
  %78 = load %struct.kempld_device_data*, %struct.kempld_device_data** %8, align 8
  %79 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %6, align 8
  %80 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @KEMPLD_WDT_STAGE_TIMEOUT(i32 %81)
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @kempld_write32(%struct.kempld_device_data* %78, i32 %82, i32 %83)
  %85 = load %struct.kempld_device_data*, %struct.kempld_device_data** %8, align 8
  %86 = call i32 @kempld_release_mutex(%struct.kempld_device_data* %85)
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %49, %46, %23
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @kempld_get_mutex(%struct.kempld_device_data*) #1

declare dso_local i32 @kempld_read8(%struct.kempld_device_data*, i32) #1

declare dso_local i32 @KEMPLD_WDT_STAGE_CFG(i32) #1

declare dso_local i32 @STAGE_CFG_SET_PRESCALER(i64) #1

declare dso_local i32 @kempld_write8(%struct.kempld_device_data*, i32, i32) #1

declare dso_local i32 @kempld_write32(%struct.kempld_device_data*, i32, i32) #1

declare dso_local i32 @KEMPLD_WDT_STAGE_TIMEOUT(i32) #1

declare dso_local i32 @kempld_release_mutex(%struct.kempld_device_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
