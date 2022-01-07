; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/st/extr_st_thermal_memmap.c_st_mmap_alloc_regfields.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/st/extr_st_thermal_memmap.c_st_mmap_alloc_regfields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_thermal_sensor = type { i8*, i8*, %struct.TYPE_2__*, %struct.regmap*, %struct.device* }
%struct.TYPE_2__ = type { %struct.reg_field* }
%struct.reg_field = type { i32 }
%struct.regmap = type { i32 }
%struct.device = type { i32 }

@INT_THRESH_HI = common dso_local global i64 0, align 8
@INT_ENABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"failed to alloc mmap regfields\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_thermal_sensor*)* @st_mmap_alloc_regfields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_mmap_alloc_regfields(%struct.st_thermal_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st_thermal_sensor*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.reg_field*, align 8
  store %struct.st_thermal_sensor* %0, %struct.st_thermal_sensor** %3, align 8
  %7 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %8 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %7, i32 0, i32 4
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %11 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %10, i32 0, i32 3
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %5, align 8
  %13 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %14 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.reg_field*, %struct.reg_field** %16, align 8
  store %struct.reg_field* %17, %struct.reg_field** %6, align 8
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.regmap*, %struct.regmap** %5, align 8
  %20 = load %struct.reg_field*, %struct.reg_field** %6, align 8
  %21 = load i64, i64* @INT_THRESH_HI, align 8
  %22 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %20, i64 %21
  %23 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @devm_regmap_field_alloc(%struct.device* %18, %struct.regmap* %19, i32 %24)
  %26 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %27 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.regmap*, %struct.regmap** %5, align 8
  %30 = load %struct.reg_field*, %struct.reg_field** %6, align 8
  %31 = load i64, i64* @INT_ENABLE, align 8
  %32 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %30, i64 %31
  %33 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @devm_regmap_field_alloc(%struct.device* %28, %struct.regmap* %29, i32 %34)
  %36 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %37 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %39 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @IS_ERR(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %1
  %44 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %45 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @IS_ERR(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43, %1
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %55

54:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %49
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i8* @devm_regmap_field_alloc(%struct.device*, %struct.regmap*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
