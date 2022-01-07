; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_of_regulator.c_of_check_coupling_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_of_regulator.c_of_check_coupling_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [26 x i8] c"max_spread value invalid\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"regulator-coupled-with\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"number of coupled reg phandles mismatch\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"missing 2-way linking for coupled regulators\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"regulator-coupled-max-spread\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"coupled regulators max_spread mismatch\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_check_coupling_data(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %14 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %4, align 8
  %17 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %18 = call i32 @of_get_n_coupled(%struct.regulator_dev* %17)
  store i32 %18, i32* %5, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %87, %1
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %90

23:                                               ; preds = %19
  %24 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %25 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %37 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %36, i32 0, i32 0
  %38 = call i32 @dev_err(%struct.TYPE_4__* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %92

39:                                               ; preds = %23
  %40 = load %struct.device_node*, %struct.device_node** %4, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  store %struct.device_node* %42, %struct.device_node** %6, align 8
  %43 = load %struct.device_node*, %struct.device_node** %6, align 8
  %44 = icmp ne %struct.device_node* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %45, %39
  %47 = load %struct.device_node*, %struct.device_node** %6, align 8
  %48 = call i32 @of_count_phandle_with_args(%struct.device_node* %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %54 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %53, i32 0, i32 0
  %55 = call i32 @dev_err(%struct.TYPE_4__* %54, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %80

56:                                               ; preds = %46
  %57 = load %struct.device_node*, %struct.device_node** %6, align 8
  %58 = load %struct.device_node*, %struct.device_node** %4, align 8
  %59 = call i32 @of_coupling_find_node(%struct.device_node* %57, %struct.device_node* %58, i32* %7)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %63 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %62, i32 0, i32 0
  %64 = call i32 @dev_err(%struct.TYPE_4__* %63, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %80

65:                                               ; preds = %56
  %66 = load %struct.device_node*, %struct.device_node** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i64 @of_property_read_u32_index(%struct.device_node* %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %67, i32* %11)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 0, i32* %9, align 4
  br label %80

71:                                               ; preds = %65
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %77 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %76, i32 0, i32 0
  %78 = call i32 @dev_err(%struct.TYPE_4__* %77, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %80

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %75, %70, %61, %52
  %81 = load %struct.device_node*, %struct.device_node** %6, align 8
  %82 = call i32 @of_node_put(%struct.device_node* %81)
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  br label %90

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %19

90:                                               ; preds = %85, %19
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %35
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @of_get_n_coupled(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_count_phandle_with_args(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_coupling_find_node(%struct.device_node*, %struct.device_node*, i32*) #1

declare dso_local i64 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
