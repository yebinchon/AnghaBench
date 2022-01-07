; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max17042_battery.c_max17042_get_default_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max17042_battery.c_max17042_get_default_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max17042_platform_data = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.max17042_chip = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MAXIM_DEVICE_TYPE_MAX17042 = common dso_local global i64 0, align 8
@max17047_default_pdata_init_regs = common dso_local global i32 0, align 4
@MAX17042_MiscCFG = common dso_local global i32 0, align 4
@MAX17042_DEFAULT_VMIN = common dso_local global i32 0, align 4
@MAX17042_DEFAULT_VMAX = common dso_local global i32 0, align 4
@MAX17042_DEFAULT_TEMP_MIN = common dso_local global i32 0, align 4
@MAX17042_DEFAULT_TEMP_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.max17042_platform_data* (%struct.max17042_chip*)* @max17042_get_default_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.max17042_platform_data* @max17042_get_default_pdata(%struct.max17042_chip* %0) #0 {
  %2 = alloca %struct.max17042_platform_data*, align 8
  %3 = alloca %struct.max17042_chip*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.max17042_platform_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.max17042_chip* %0, %struct.max17042_chip** %3, align 8
  %8 = load %struct.max17042_chip*, %struct.max17042_chip** %3, align 8
  %9 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.max17042_platform_data* @devm_kzalloc(%struct.device* %12, i32 28, i32 %13)
  store %struct.max17042_platform_data* %14, %struct.max17042_platform_data** %5, align 8
  %15 = load %struct.max17042_platform_data*, %struct.max17042_platform_data** %5, align 8
  %16 = icmp ne %struct.max17042_platform_data* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = load %struct.max17042_platform_data*, %struct.max17042_platform_data** %5, align 8
  store %struct.max17042_platform_data* %18, %struct.max17042_platform_data** %2, align 8
  br label %66

19:                                               ; preds = %1
  %20 = load %struct.max17042_chip*, %struct.max17042_chip** %3, align 8
  %21 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MAXIM_DEVICE_TYPE_MAX17042, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load i32, i32* @max17047_default_pdata_init_regs, align 4
  %27 = load %struct.max17042_platform_data*, %struct.max17042_platform_data** %5, align 8
  %28 = getelementptr inbounds %struct.max17042_platform_data, %struct.max17042_platform_data* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @max17047_default_pdata_init_regs, align 4
  %30 = call i32 @ARRAY_SIZE(i32 %29)
  %31 = load %struct.max17042_platform_data*, %struct.max17042_platform_data** %5, align 8
  %32 = getelementptr inbounds %struct.max17042_platform_data, %struct.max17042_platform_data* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %25, %19
  %34 = load %struct.max17042_chip*, %struct.max17042_chip** %3, align 8
  %35 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MAX17042_MiscCFG, align 4
  %38 = call i32 @regmap_read(i32 %36, i32 %37, i32* %7)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store %struct.max17042_platform_data* null, %struct.max17042_platform_data** %2, align 8
  br label %66

42:                                               ; preds = %33
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 3
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.max17042_platform_data*, %struct.max17042_platform_data** %5, align 8
  %48 = getelementptr inbounds %struct.max17042_platform_data, %struct.max17042_platform_data* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  br label %52

49:                                               ; preds = %42
  %50 = load %struct.max17042_platform_data*, %struct.max17042_platform_data** %5, align 8
  %51 = getelementptr inbounds %struct.max17042_platform_data, %struct.max17042_platform_data* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* @MAX17042_DEFAULT_VMIN, align 4
  %54 = load %struct.max17042_platform_data*, %struct.max17042_platform_data** %5, align 8
  %55 = getelementptr inbounds %struct.max17042_platform_data, %struct.max17042_platform_data* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @MAX17042_DEFAULT_VMAX, align 4
  %57 = load %struct.max17042_platform_data*, %struct.max17042_platform_data** %5, align 8
  %58 = getelementptr inbounds %struct.max17042_platform_data, %struct.max17042_platform_data* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @MAX17042_DEFAULT_TEMP_MIN, align 4
  %60 = load %struct.max17042_platform_data*, %struct.max17042_platform_data** %5, align 8
  %61 = getelementptr inbounds %struct.max17042_platform_data, %struct.max17042_platform_data* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @MAX17042_DEFAULT_TEMP_MAX, align 4
  %63 = load %struct.max17042_platform_data*, %struct.max17042_platform_data** %5, align 8
  %64 = getelementptr inbounds %struct.max17042_platform_data, %struct.max17042_platform_data* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.max17042_platform_data*, %struct.max17042_platform_data** %5, align 8
  store %struct.max17042_platform_data* %65, %struct.max17042_platform_data** %2, align 8
  br label %66

66:                                               ; preds = %52, %41, %17
  %67 = load %struct.max17042_platform_data*, %struct.max17042_platform_data** %2, align 8
  ret %struct.max17042_platform_data* %67
}

declare dso_local %struct.max17042_platform_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
