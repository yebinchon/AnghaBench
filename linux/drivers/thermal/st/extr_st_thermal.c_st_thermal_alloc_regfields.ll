; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/st/extr_st_thermal.c_st_thermal_alloc_regfields.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/st/extr_st_thermal.c_st_thermal_alloc_regfields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_thermal_sensor = type { %struct.TYPE_4__*, i8*, i8*, i8*, %struct.TYPE_3__*, %struct.regmap*, %struct.device* }
%struct.TYPE_4__ = type { {}* }
%struct.TYPE_3__ = type { %struct.reg_field* }
%struct.reg_field = type { i32 }
%struct.regmap = type { i32 }
%struct.device = type { i32 }

@DCORRECT = common dso_local global i64 0, align 8
@OVERFLOW = common dso_local global i64 0, align 8
@DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"failed to allocate common regfields\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_thermal_sensor*)* @st_thermal_alloc_regfields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_thermal_alloc_regfields(%struct.st_thermal_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st_thermal_sensor*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.reg_field*, align 8
  store %struct.st_thermal_sensor* %0, %struct.st_thermal_sensor** %3, align 8
  %7 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %8 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %7, i32 0, i32 6
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %11 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %10, i32 0, i32 5
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %5, align 8
  %13 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %14 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %13, i32 0, i32 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.reg_field*, %struct.reg_field** %16, align 8
  store %struct.reg_field* %17, %struct.reg_field** %6, align 8
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.regmap*, %struct.regmap** %5, align 8
  %20 = load %struct.reg_field*, %struct.reg_field** %6, align 8
  %21 = load i64, i64* @DCORRECT, align 8
  %22 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %20, i64 %21
  %23 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @devm_regmap_field_alloc(%struct.device* %18, %struct.regmap* %19, i32 %24)
  %26 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %27 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.regmap*, %struct.regmap** %5, align 8
  %30 = load %struct.reg_field*, %struct.reg_field** %6, align 8
  %31 = load i64, i64* @OVERFLOW, align 8
  %32 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %30, i64 %31
  %33 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @devm_regmap_field_alloc(%struct.device* %28, %struct.regmap* %29, i32 %34)
  %36 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %37 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load %struct.regmap*, %struct.regmap** %5, align 8
  %40 = load %struct.reg_field*, %struct.reg_field** %6, align 8
  %41 = load i64, i64* @DATA, align 8
  %42 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %40, i64 %41
  %43 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @devm_regmap_field_alloc(%struct.device* %38, %struct.regmap* %39, i32 %44)
  %46 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %47 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %49 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @IS_ERR(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %1
  %54 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %55 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @IS_ERR(i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %61 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @IS_ERR(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59, %53, %1
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %79

70:                                               ; preds = %59
  %71 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %72 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = bitcast {}** %74 to i32 (%struct.st_thermal_sensor*)**
  %76 = load i32 (%struct.st_thermal_sensor*)*, i32 (%struct.st_thermal_sensor*)** %75, align 8
  %77 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %78 = call i32 %76(%struct.st_thermal_sensor* %77)
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %70, %65
  %80 = load i32, i32* %2, align 4
  ret i32 %80
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
