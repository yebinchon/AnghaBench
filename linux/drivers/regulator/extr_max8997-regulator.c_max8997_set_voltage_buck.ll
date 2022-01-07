; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8997-regulator.c_max8997_set_voltage_buck.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8997-regulator.c_max8997_set_voltage_buck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.voltage_map_desc = type { i64, i32, i64 }
%struct.regulator_dev = type { i32 }
%struct.max8997_data = type { i32, i32, i32, i32, i32 }

@MAX8997_BUCK7 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@reg_voltage_map = common dso_local global %struct.voltage_map_desc** null, align 8
@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"MAX8997 GPIO-DVS Side Effect Warning: GPIO SET:  %d -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32, i32*)* @max8997_set_voltage_buck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8997_set_voltage_buck(%struct.regulator_dev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regulator_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.max8997_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.voltage_map_desc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %20 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %21 = call %struct.max8997_data* @rdev_get_drvdata(%struct.regulator_dev* %20)
  store %struct.max8997_data* %21, %struct.max8997_data** %10, align 8
  %22 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %23 = call i32 @rdev_get_id(%struct.regulator_dev* %22)
  store i32 %23, i32* %11, align 4
  store i32 0, i32* %19, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 130
  br i1 %25, label %30, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @MAX8997_BUCK7, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %149

33:                                               ; preds = %26
  %34 = load i32, i32* %11, align 4
  switch i32 %34, label %56 [
    i32 130, label %35
    i32 129, label %42
    i32 128, label %49
  ]

35:                                               ; preds = %33
  %36 = load %struct.max8997_data*, %struct.max8997_data** %10, align 8
  %37 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 1, i32* %19, align 4
  br label %41

41:                                               ; preds = %40, %35
  br label %56

42:                                               ; preds = %33
  %43 = load %struct.max8997_data*, %struct.max8997_data** %10, align 8
  %44 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 1, i32* %19, align 4
  br label %48

48:                                               ; preds = %47, %42
  br label %56

49:                                               ; preds = %33
  %50 = load %struct.max8997_data*, %struct.max8997_data** %10, align 8
  %51 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 1, i32* %19, align 4
  br label %55

55:                                               ; preds = %54, %49
  br label %56

56:                                               ; preds = %33, %55, %48, %41
  %57 = load i32, i32* %19, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @max8997_set_voltage_ldobuck(%struct.regulator_dev* %60, i32 %61, i32 %62, i32* %63)
  store i32 %64, i32* %5, align 4
  br label %149

65:                                               ; preds = %56
  %66 = load %struct.voltage_map_desc**, %struct.voltage_map_desc*** @reg_voltage_map, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.voltage_map_desc*, %struct.voltage_map_desc** %66, i64 %68
  %70 = load %struct.voltage_map_desc*, %struct.voltage_map_desc** %69, align 8
  store %struct.voltage_map_desc* %70, %struct.voltage_map_desc** %12, align 8
  %71 = load %struct.voltage_map_desc*, %struct.voltage_map_desc** %12, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @max8997_get_voltage_proper_val(%struct.voltage_map_desc* %71, i32 %72, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %65
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %5, align 4
  br label %149

79:                                               ; preds = %65
  %80 = load i32, i32* @INT_MAX, align 4
  store i32 %80, i32* %18, align 4
  store i32 -1, i32* %17, align 4
  store i32 -1, i32* %16, align 4
  br label %81

81:                                               ; preds = %99, %79
  %82 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @max8997_assess_side_effect(%struct.regulator_dev* %82, i32 %83, i32* %14)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %132

88:                                               ; preds = %81
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i32, i32* %14, align 4
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %15, align 4
  store i32 %95, i32* %18, align 4
  br label %96

96:                                               ; preds = %92, %88
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %13, align 4
  br label %99

99:                                               ; preds = %96
  %100 = load %struct.voltage_map_desc*, %struct.voltage_map_desc** %12, align 8
  %101 = getelementptr inbounds %struct.voltage_map_desc, %struct.voltage_map_desc* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.voltage_map_desc*, %struct.voltage_map_desc** %12, align 8
  %104 = getelementptr inbounds %struct.voltage_map_desc, %struct.voltage_map_desc* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %13, align 4
  %107 = mul nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %102, %108
  %110 = load %struct.voltage_map_desc*, %struct.voltage_map_desc** %12, align 8
  %111 = getelementptr inbounds %struct.voltage_map_desc, %struct.voltage_map_desc* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp sle i64 %109, %112
  br i1 %113, label %81, label %114

114:                                              ; preds = %99
  %115 = load i32, i32* %17, align 4
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %16, align 4
  store i32 %116, i32* %13, align 4
  %117 = load %struct.max8997_data*, %struct.max8997_data** %10, align 8
  %118 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %114
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %5, align 4
  br label %149

124:                                              ; preds = %114
  %125 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %126 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %125, i32 0, i32 0
  %127 = load %struct.max8997_data*, %struct.max8997_data** %10, align 8
  %128 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %17, align 4
  %131 = call i32 @dev_warn(i32* %126, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %124, %87
  %133 = load i32, i32* %14, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %13, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135, %132
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %5, align 4
  br label %149

141:                                              ; preds = %135
  %142 = load i32, i32* %14, align 4
  %143 = load %struct.max8997_data*, %struct.max8997_data** %10, align 8
  %144 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load %struct.max8997_data*, %struct.max8997_data** %10, align 8
  %146 = call i32 @max8997_set_gpio(%struct.max8997_data* %145)
  %147 = load i32, i32* %13, align 4
  %148 = load i32*, i32** %9, align 8
  store i32 %147, i32* %148, align 4
  store i32 0, i32* %5, align 4
  br label %149

149:                                              ; preds = %141, %138, %121, %77, %59, %30
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local %struct.max8997_data* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @max8997_set_voltage_ldobuck(%struct.regulator_dev*, i32, i32, i32*) #1

declare dso_local i32 @max8997_get_voltage_proper_val(%struct.voltage_map_desc*, i32, i32) #1

declare dso_local i32 @max8997_assess_side_effect(%struct.regulator_dev*, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @max8997_set_gpio(%struct.max8997_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
