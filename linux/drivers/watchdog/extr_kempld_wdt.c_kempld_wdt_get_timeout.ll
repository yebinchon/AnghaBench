; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_kempld_wdt.c_kempld_wdt_get_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_kempld_wdt.c_kempld_wdt_get_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kempld_wdt_data = type { %struct.kempld_device_data* }
%struct.kempld_device_data = type { i32 }
%struct.kempld_wdt_stage = type { i32, i32 }

@kempld_prescaler = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kempld_wdt_data*, %struct.kempld_wdt_stage*)* @kempld_wdt_get_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kempld_wdt_get_timeout(%struct.kempld_wdt_data* %0, %struct.kempld_wdt_stage* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kempld_wdt_data*, align 8
  %5 = alloca %struct.kempld_wdt_stage*, align 8
  %6 = alloca %struct.kempld_device_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kempld_wdt_data* %0, %struct.kempld_wdt_data** %4, align 8
  store %struct.kempld_wdt_stage* %1, %struct.kempld_wdt_stage** %5, align 8
  %12 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %4, align 8
  %13 = getelementptr inbounds %struct.kempld_wdt_data, %struct.kempld_wdt_data* %12, i32 0, i32 0
  %14 = load %struct.kempld_device_data*, %struct.kempld_device_data** %13, align 8
  store %struct.kempld_device_data* %14, %struct.kempld_device_data** %6, align 8
  %15 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %5, align 8
  %16 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

20:                                               ; preds = %2
  %21 = load %struct.kempld_device_data*, %struct.kempld_device_data** %6, align 8
  %22 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %5, align 8
  %23 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @KEMPLD_WDT_STAGE_CFG(i32 %24)
  %26 = call i32 @kempld_read8(%struct.kempld_device_data* %21, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.kempld_device_data*, %struct.kempld_device_data** %6, align 8
  %28 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %5, align 8
  %29 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @KEMPLD_WDT_STAGE_TIMEOUT(i32 %30)
  %32 = call i32 @kempld_read32(%struct.kempld_device_data* %27, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32*, i32** @kempld_prescaler, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i64 @STAGE_CFG_GET_PRESCALER(i32 %34)
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %5, align 8
  %40 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %38, %41
  %43 = load i32, i32* %9, align 4
  %44 = mul i32 %42, %43
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.kempld_device_data*, %struct.kempld_device_data** %6, align 8
  %47 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @do_div(i32 %45, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %20
  %53 = load i32, i32* %8, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %20
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @WARN_ON_ONCE(i32 %60)
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %55, %19
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @kempld_read8(%struct.kempld_device_data*, i32) #1

declare dso_local i32 @KEMPLD_WDT_STAGE_CFG(i32) #1

declare dso_local i32 @kempld_read32(%struct.kempld_device_data*, i32) #1

declare dso_local i32 @KEMPLD_WDT_STAGE_TIMEOUT(i32) #1

declare dso_local i64 @STAGE_CFG_GET_PRESCALER(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
