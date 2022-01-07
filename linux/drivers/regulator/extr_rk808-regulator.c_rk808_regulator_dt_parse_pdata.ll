; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_rk808-regulator.c_rk808_regulator_dt_parse_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_rk808-regulator.c_rk808_regulator_dt_parse_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.rk808_regulator_data = type { i32* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"dvs\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to get dvs%d gpio (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"there is no dvs%d gpio\0A\00", align 1
@RK808_DVS2_POL = common dso_local global i32 0, align 4
@RK808_DVS1_POL = common dso_local global i32 0, align 4
@RK808_IO_POL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, %struct.regmap*, %struct.rk808_regulator_data*)* @rk808_regulator_dt_parse_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk808_regulator_dt_parse_pdata(%struct.device* %0, %struct.device* %1, %struct.regmap* %2, %struct.rk808_regulator_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca %struct.rk808_regulator_data*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store %struct.regmap* %2, %struct.regmap** %8, align 8
  store %struct.rk808_regulator_data* %3, %struct.rk808_regulator_data** %9, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.device_node* @of_get_child_by_name(i32 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %17, %struct.device_node** %10, align 8
  %18 = load %struct.device_node*, %struct.device_node** %10, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %112

23:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %104, %23
  %25 = load i32, i32* %13, align 4
  %26 = load %struct.rk808_regulator_data*, %struct.rk808_regulator_data** %9, align 8
  %27 = getelementptr inbounds %struct.rk808_regulator_data, %struct.rk808_regulator_data* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @ARRAY_SIZE(i32* %28)
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %107

31:                                               ; preds = %24
  %32 = load %struct.device*, %struct.device** %7, align 8
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %35 = call i32 @devm_gpiod_get_index_optional(%struct.device* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load %struct.rk808_regulator_data*, %struct.rk808_regulator_data** %9, align 8
  %37 = getelementptr inbounds %struct.rk808_regulator_data, %struct.rk808_regulator_data* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %35, i32* %41, align 4
  %42 = load %struct.rk808_regulator_data*, %struct.rk808_regulator_data** %9, align 8
  %43 = getelementptr inbounds %struct.rk808_regulator_data, %struct.rk808_regulator_data* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @IS_ERR(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %31
  %52 = load %struct.rk808_regulator_data*, %struct.rk808_regulator_data** %9, align 8
  %53 = getelementptr inbounds %struct.rk808_regulator_data, %struct.rk808_regulator_data* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @PTR_ERR(i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %62)
  br label %108

64:                                               ; preds = %31
  %65 = load %struct.rk808_regulator_data*, %struct.rk808_regulator_data** %9, align 8
  %66 = getelementptr inbounds %struct.rk808_regulator_data, %struct.rk808_regulator_data* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %64
  %74 = load %struct.device*, %struct.device** %6, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @dev_warn(%struct.device* %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  br label %104

77:                                               ; preds = %64
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* @RK808_DVS2_POL, align 4
  br label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @RK808_DVS1_POL, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  store i32 %85, i32* %11, align 4
  %86 = load %struct.regmap*, %struct.regmap** %8, align 8
  %87 = load i32, i32* @RK808_IO_POL_REG, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.rk808_regulator_data*, %struct.rk808_regulator_data** %9, align 8
  %90 = getelementptr inbounds %struct.rk808_regulator_data, %struct.rk808_regulator_data* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @gpiod_is_active_low(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %84
  br label %101

99:                                               ; preds = %84
  %100 = load i32, i32* %11, align 4
  br label %101

101:                                              ; preds = %99, %98
  %102 = phi i32 [ 0, %98 ], [ %100, %99 ]
  %103 = call i32 @regmap_update_bits(%struct.regmap* %86, i32 %87, i32 %88, i32 %102)
  store i32 %103, i32* %12, align 4
  br label %104

104:                                              ; preds = %101, %73
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %24

107:                                              ; preds = %24
  br label %108

108:                                              ; preds = %107, %51
  %109 = load %struct.device_node*, %struct.device_node** %10, align 8
  %110 = call i32 @of_node_put(%struct.device_node* %109)
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %108, %20
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @devm_gpiod_get_index_optional(%struct.device*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i64 @gpiod_is_active_low(i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
