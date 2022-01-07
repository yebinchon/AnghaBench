; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65086-regulator.c_tps65086_of_parse_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65086-regulator.c_tps65086_of_parse_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.device_node = type { i32 }
%struct.regulator_desc = type { i32 }
%struct.regulator_config = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"ti,regulator-step-size-25mv\00", align 1
@tps65086_buck126_25mv_ranges = common dso_local global i8* null, align 8
@regulators = common dso_local global %struct.TYPE_4__* null, align 8
@tps65086_buck345_25mv_ranges = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"25mV step mode only valid for BUCK regulators\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"ti,regulator-decay\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Error setting decay\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.regulator_desc*, %struct.regulator_config*)* @tps65086_of_parse_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65086_of_parse_cb(%struct.device_node* %0, %struct.regulator_desc* %1, %struct.regulator_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.regulator_desc*, align 8
  %7 = alloca %struct.regulator_config*, align 8
  %8 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store %struct.regulator_desc* %1, %struct.regulator_desc** %6, align 8
  store %struct.regulator_config* %2, %struct.regulator_config** %7, align 8
  %9 = load %struct.device_node*, %struct.device_node** %5, align 8
  %10 = call i64 @of_property_read_bool(%struct.device_node* %9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %62

12:                                               ; preds = %3
  %13 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %14 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %56 [
    i32 133, label %16
    i32 132, label %16
    i32 128, label %16
    i32 131, label %36
    i32 130, label %36
    i32 129, label %36
  ]

16:                                               ; preds = %12, %12, %12
  %17 = load i8*, i8** @tps65086_buck126_25mv_ranges, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @regulators, align 8
  %19 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %20 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i8* %17, i8** %25, align 8
  %26 = load i8*, i8** @tps65086_buck126_25mv_ranges, align 8
  %27 = call i8* @ARRAY_SIZE(i8* %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @regulators, align 8
  %29 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %30 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i8* %27, i8** %35, align 8
  br label %61

36:                                               ; preds = %12, %12, %12
  %37 = load i8*, i8** @tps65086_buck345_25mv_ranges, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @regulators, align 8
  %39 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %40 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i8* %37, i8** %45, align 8
  %46 = load i8*, i8** @tps65086_buck345_25mv_ranges, align 8
  %47 = call i8* @ARRAY_SIZE(i8* %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @regulators, align 8
  %49 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %50 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i8* %47, i8** %55, align 8
  br label %61

56:                                               ; preds = %12
  %57 = load %struct.regulator_config*, %struct.regulator_config** %7, align 8
  %58 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_warn(i32 %59, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %56, %36, %16
  br label %62

62:                                               ; preds = %61, %3
  %63 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %64 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp sle i32 %65, 128
  br i1 %66, label %67, label %109

67:                                               ; preds = %62
  %68 = load %struct.device_node*, %struct.device_node** %5, align 8
  %69 = call i64 @of_property_read_bool(%struct.device_node* %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %109

71:                                               ; preds = %67
  %72 = load %struct.regulator_config*, %struct.regulator_config** %7, align 8
  %73 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @regulators, align 8
  %76 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %77 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @regulators, align 8
  %84 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %85 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @regulators, align 8
  %92 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %93 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @regmap_write_bits(i32 %74, i32 %82, i32 %90, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %71
  %103 = load %struct.regulator_config*, %struct.regulator_config** %7, align 8
  %104 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @dev_err(i32 %105, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %4, align 4
  br label %110

108:                                              ; preds = %71
  br label %109

109:                                              ; preds = %108, %67, %62
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %109, %102
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
