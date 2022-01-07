; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_kempld_wdt.c_kempld_wdt_probe_stages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_kempld_wdt.c_kempld_wdt_probe_stages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.kempld_wdt_data = type { %struct.kempld_wdt_stage*, %struct.kempld_device_data* }
%struct.kempld_wdt_stage = type { i32, i32 }
%struct.kempld_device_data = type { i32 }

@STAGE_PRETIMEOUT = common dso_local global i64 0, align 8
@STAGE_TIMEOUT = common dso_local global i64 0, align 8
@KEMPLD_FEATURE_BIT_NMI = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @kempld_wdt_probe_stages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kempld_wdt_probe_stages(%struct.watchdog_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca %struct.kempld_wdt_data*, align 8
  %5 = alloca %struct.kempld_device_data*, align 8
  %6 = alloca %struct.kempld_wdt_stage*, align 8
  %7 = alloca %struct.kempld_wdt_stage*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  %14 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %15 = call %struct.kempld_wdt_data* @watchdog_get_drvdata(%struct.watchdog_device* %14)
  store %struct.kempld_wdt_data* %15, %struct.kempld_wdt_data** %4, align 8
  %16 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %4, align 8
  %17 = getelementptr inbounds %struct.kempld_wdt_data, %struct.kempld_wdt_data* %16, i32 0, i32 1
  %18 = load %struct.kempld_device_data*, %struct.kempld_device_data** %17, align 8
  store %struct.kempld_device_data* %18, %struct.kempld_device_data** %5, align 8
  %19 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %4, align 8
  %20 = getelementptr inbounds %struct.kempld_wdt_data, %struct.kempld_wdt_data* %19, i32 0, i32 0
  %21 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %20, align 8
  %22 = load i64, i64* @STAGE_PRETIMEOUT, align 8
  %23 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %21, i64 %22
  store %struct.kempld_wdt_stage* %23, %struct.kempld_wdt_stage** %6, align 8
  %24 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %4, align 8
  %25 = getelementptr inbounds %struct.kempld_wdt_data, %struct.kempld_wdt_data* %24, i32 0, i32 0
  %26 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %25, align 8
  %27 = load i64, i64* @STAGE_TIMEOUT, align 8
  %28 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %26, i64 %27
  store %struct.kempld_wdt_stage* %28, %struct.kempld_wdt_stage** %7, align 8
  %29 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %6, align 8
  %30 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %7, align 8
  %32 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %118, %1
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %34, 3
  br i1 %35, label %36, label %121

36:                                               ; preds = %33
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @KEMPLD_WDT_STAGE_TIMEOUT(i32 %37)
  store i32 %38, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %39 = load %struct.kempld_device_data*, %struct.kempld_device_data** %5, align 8
  %40 = call i32 @kempld_get_mutex(%struct.kempld_device_data* %39)
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %75, %36
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %42, 4
  br i1 %43, label %44, label %78

44:                                               ; preds = %41
  %45 = load %struct.kempld_device_data*, %struct.kempld_device_data** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %46, %47
  %49 = call i32 @kempld_read8(%struct.kempld_device_data* %45, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load %struct.kempld_device_data*, %struct.kempld_device_data** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %51, %52
  %54 = call i32 @kempld_write8(%struct.kempld_device_data* %50, i32 %53, i32 0)
  %55 = load %struct.kempld_device_data*, %struct.kempld_device_data** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %56, %57
  %59 = call i32 @kempld_read8(%struct.kempld_device_data* %55, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %44
  br label %78

63:                                               ; preds = %44
  %64 = load %struct.kempld_device_data*, %struct.kempld_device_data** %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @kempld_write8(%struct.kempld_device_data* %64, i32 %67, i32 %68)
  %70 = load i32, i32* %13, align 4
  %71 = mul nsw i32 %70, 8
  %72 = shl i32 255, %71
  %73 = load i32, i32* %11, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %63
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %13, align 4
  br label %41

78:                                               ; preds = %62, %41
  %79 = load %struct.kempld_device_data*, %struct.kempld_device_data** %5, align 8
  %80 = call i32 @kempld_release_mutex(%struct.kempld_device_data* %79)
  %81 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %7, align 8
  %82 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %7, align 8
  %88 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %7, align 8
  %91 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  br label %117

92:                                               ; preds = %78
  %93 = load %struct.kempld_device_data*, %struct.kempld_device_data** %5, align 8
  %94 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @KEMPLD_FEATURE_BIT_NMI, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %116

99:                                               ; preds = %92
  %100 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %7, align 8
  %101 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %6, align 8
  %104 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %7, align 8
  %107 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %7, align 8
  %109 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %6, align 8
  %112 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %7, align 8
  %115 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %99, %92
  br label %121

117:                                              ; preds = %85
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %12, align 4
  br label %33

121:                                              ; preds = %116, %33
  %122 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %7, align 8
  %123 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %121
  %127 = load i32, i32* @ENODEV, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %130

129:                                              ; preds = %121
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %129, %126
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.kempld_wdt_data* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @KEMPLD_WDT_STAGE_TIMEOUT(i32) #1

declare dso_local i32 @kempld_get_mutex(%struct.kempld_device_data*) #1

declare dso_local i32 @kempld_read8(%struct.kempld_device_data*, i32) #1

declare dso_local i32 @kempld_write8(%struct.kempld_device_data*, i32, i32) #1

declare dso_local i32 @kempld_release_mutex(%struct.kempld_device_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
