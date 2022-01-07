; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9063-regulator.c_da9063_parse_regulators_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9063-regulator.c_da9063_parse_regulators_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_regulator_match = type { i64 }
%struct.da9063_regulators_pdata = type { i32, %struct.da9063_regulator_data* }
%struct.da9063_regulator_data = type { i32, i64 }
%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.da9063 = type { i64 }
%struct.device_node = type { i32 }

@da9063_matches = common dso_local global %struct.of_regulator_match* null, align 8
@PMIC_TYPE_DA9063L = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Regulators device node not found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to match regulators\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.da9063_regulators_pdata* (%struct.platform_device*, %struct.of_regulator_match**)* @da9063_parse_regulators_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.da9063_regulators_pdata* @da9063_parse_regulators_dt(%struct.platform_device* %0, %struct.of_regulator_match** %1) #0 {
  %3 = alloca %struct.da9063_regulators_pdata*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.of_regulator_match**, align 8
  %6 = alloca %struct.da9063*, align 8
  %7 = alloca %struct.da9063_regulators_pdata*, align 8
  %8 = alloca %struct.da9063_regulator_data*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.of_regulator_match** %1, %struct.of_regulator_match*** %5, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = call %struct.da9063* @dev_get_drvdata(%struct.TYPE_7__* %17)
  store %struct.da9063* %18, %struct.da9063** %6, align 8
  %19 = load %struct.of_regulator_match*, %struct.of_regulator_match** @da9063_matches, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.of_regulator_match* %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.da9063*, %struct.da9063** %6, align 8
  %22 = getelementptr inbounds %struct.da9063, %struct.da9063* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PMIC_TYPE_DA9063L, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* %10, align 4
  %28 = sub nsw i32 %27, 6
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %26, %2
  %30 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.device_node* @of_get_child_by_name(i32 %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %36, %struct.device_node** %9, align 8
  %37 = load %struct.device_node*, %struct.device_node** %9, align 8
  %38 = icmp ne %struct.device_node* %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %29
  %40 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call i32 @dev_err(%struct.TYPE_6__* %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.da9063_regulators_pdata* @ERR_PTR(i32 %44)
  store %struct.da9063_regulators_pdata* %45, %struct.da9063_regulators_pdata** %3, align 8
  br label %135

46:                                               ; preds = %29
  %47 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load %struct.device_node*, %struct.device_node** %9, align 8
  %50 = load %struct.of_regulator_match*, %struct.of_regulator_match** @da9063_matches, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @of_regulator_match(%struct.TYPE_6__* %48, %struct.device_node* %49, %struct.of_regulator_match* %50, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load %struct.device_node*, %struct.device_node** %9, align 8
  %54 = call i32 @of_node_put(%struct.device_node* %53)
  %55 = load i32, i32* %13, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %46
  %58 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i32 @dev_err(%struct.TYPE_6__* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  %63 = call %struct.da9063_regulators_pdata* @ERR_PTR(i32 %62)
  store %struct.da9063_regulators_pdata* %63, %struct.da9063_regulators_pdata** %3, align 8
  br label %135

64:                                               ; preds = %46
  %65 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call %struct.da9063_regulators_pdata* @devm_kzalloc(%struct.TYPE_6__* %66, i32 16, i32 %67)
  store %struct.da9063_regulators_pdata* %68, %struct.da9063_regulators_pdata** %7, align 8
  %69 = load %struct.da9063_regulators_pdata*, %struct.da9063_regulators_pdata** %7, align 8
  %70 = icmp ne %struct.da9063_regulators_pdata* %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %64
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  %74 = call %struct.da9063_regulators_pdata* @ERR_PTR(i32 %73)
  store %struct.da9063_regulators_pdata* %74, %struct.da9063_regulators_pdata** %3, align 8
  br label %135

75:                                               ; preds = %64
  %76 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call %struct.da9063_regulator_data* @devm_kcalloc(%struct.TYPE_6__* %77, i32 %78, i32 16, i32 %79)
  %81 = load %struct.da9063_regulators_pdata*, %struct.da9063_regulators_pdata** %7, align 8
  %82 = getelementptr inbounds %struct.da9063_regulators_pdata, %struct.da9063_regulators_pdata* %81, i32 0, i32 1
  store %struct.da9063_regulator_data* %80, %struct.da9063_regulator_data** %82, align 8
  %83 = load %struct.da9063_regulators_pdata*, %struct.da9063_regulators_pdata** %7, align 8
  %84 = getelementptr inbounds %struct.da9063_regulators_pdata, %struct.da9063_regulators_pdata* %83, i32 0, i32 1
  %85 = load %struct.da9063_regulator_data*, %struct.da9063_regulator_data** %84, align 8
  %86 = icmp ne %struct.da9063_regulator_data* %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %75
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  %90 = call %struct.da9063_regulators_pdata* @ERR_PTR(i32 %89)
  store %struct.da9063_regulators_pdata* %90, %struct.da9063_regulators_pdata** %3, align 8
  br label %135

91:                                               ; preds = %75
  %92 = load i32, i32* %13, align 4
  %93 = load %struct.da9063_regulators_pdata*, %struct.da9063_regulators_pdata** %7, align 8
  %94 = getelementptr inbounds %struct.da9063_regulators_pdata, %struct.da9063_regulators_pdata* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %128, %91
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %131

99:                                               ; preds = %95
  %100 = load %struct.of_regulator_match*, %struct.of_regulator_match** @da9063_matches, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %100, i64 %102
  %104 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %99
  br label %128

108:                                              ; preds = %99
  %109 = load %struct.da9063_regulators_pdata*, %struct.da9063_regulators_pdata** %7, align 8
  %110 = getelementptr inbounds %struct.da9063_regulators_pdata, %struct.da9063_regulators_pdata* %109, i32 0, i32 1
  %111 = load %struct.da9063_regulator_data*, %struct.da9063_regulator_data** %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.da9063_regulator_data, %struct.da9063_regulator_data* %111, i64 %113
  store %struct.da9063_regulator_data* %114, %struct.da9063_regulator_data** %8, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.da9063_regulator_data*, %struct.da9063_regulator_data** %8, align 8
  %117 = getelementptr inbounds %struct.da9063_regulator_data, %struct.da9063_regulator_data* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.of_regulator_match*, %struct.of_regulator_match** @da9063_matches, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %118, i64 %120
  %122 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.da9063_regulator_data*, %struct.da9063_regulator_data** %8, align 8
  %125 = getelementptr inbounds %struct.da9063_regulator_data, %struct.da9063_regulator_data* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %12, align 4
  br label %128

128:                                              ; preds = %108, %107
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %11, align 4
  br label %95

131:                                              ; preds = %95
  %132 = load %struct.of_regulator_match*, %struct.of_regulator_match** @da9063_matches, align 8
  %133 = load %struct.of_regulator_match**, %struct.of_regulator_match*** %5, align 8
  store %struct.of_regulator_match* %132, %struct.of_regulator_match** %133, align 8
  %134 = load %struct.da9063_regulators_pdata*, %struct.da9063_regulators_pdata** %7, align 8
  store %struct.da9063_regulators_pdata* %134, %struct.da9063_regulators_pdata** %3, align 8
  br label %135

135:                                              ; preds = %131, %87, %71, %57, %39
  %136 = load %struct.da9063_regulators_pdata*, %struct.da9063_regulators_pdata** %3, align 8
  ret %struct.da9063_regulators_pdata* %136
}

declare dso_local %struct.da9063* @dev_get_drvdata(%struct.TYPE_7__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.of_regulator_match*) #1

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local %struct.da9063_regulators_pdata* @ERR_PTR(i32) #1

declare dso_local i32 @of_regulator_match(%struct.TYPE_6__*, %struct.device_node*, %struct.of_regulator_match*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.da9063_regulators_pdata* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local %struct.da9063_regulator_data* @devm_kcalloc(%struct.TYPE_6__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
