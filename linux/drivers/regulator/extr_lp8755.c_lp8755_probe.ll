; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp8755.c_lp8755_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp8755.c_lp8755_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.lp8755_chip = type { i32, %struct.lp8755_platform_data*, i32*, i32, i32 }
%struct.lp8755_platform_data = type { i32 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"i2c functionality check fail.\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lp8755_regmap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"fail to allocate regmap %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"fail to initialize chip\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"fail to initialize regulators\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"fail to irq config\0A\00", align 1
@LP8755_BUCK_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lp8755_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8755_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lp8755_chip*, align 8
  %9 = alloca %struct.lp8755_platform_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = call %struct.lp8755_platform_data* @dev_get_platdata(i32* %11)
  store %struct.lp8755_platform_data* %12, %struct.lp8755_platform_data** %9, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @I2C_FUNC_I2C, align 4
  %17 = call i32 @i2c_check_functionality(i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = call i32 (i32*, i8*, ...) @dev_err(i32* %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %141

25:                                               ; preds = %2
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @devm_kzalloc(i32* %27, i32 32, i32 %28)
  %30 = bitcast i8* %29 to %struct.lp8755_chip*
  store %struct.lp8755_chip* %30, %struct.lp8755_chip** %8, align 8
  %31 = load %struct.lp8755_chip*, %struct.lp8755_chip** %8, align 8
  %32 = icmp ne %struct.lp8755_chip* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %141

36:                                               ; preds = %25
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = load %struct.lp8755_chip*, %struct.lp8755_chip** %8, align 8
  %40 = getelementptr inbounds %struct.lp8755_chip, %struct.lp8755_chip* %39, i32 0, i32 2
  store i32* %38, i32** %40, align 8
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %41, i32* @lp8755_regmap)
  %43 = load %struct.lp8755_chip*, %struct.lp8755_chip** %8, align 8
  %44 = getelementptr inbounds %struct.lp8755_chip, %struct.lp8755_chip* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.lp8755_chip*, %struct.lp8755_chip** %8, align 8
  %46 = getelementptr inbounds %struct.lp8755_chip, %struct.lp8755_chip* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %36
  %51 = load %struct.lp8755_chip*, %struct.lp8755_chip** %8, align 8
  %52 = getelementptr inbounds %struct.lp8755_chip, %struct.lp8755_chip* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @PTR_ERR(i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (i32*, i8*, ...) @dev_err(i32* %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %141

60:                                               ; preds = %36
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = load %struct.lp8755_chip*, %struct.lp8755_chip** %8, align 8
  %63 = call i32 @i2c_set_clientdata(%struct.i2c_client* %61, %struct.lp8755_chip* %62)
  %64 = load %struct.lp8755_platform_data*, %struct.lp8755_platform_data** %9, align 8
  %65 = icmp ne %struct.lp8755_platform_data* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load %struct.lp8755_platform_data*, %struct.lp8755_platform_data** %9, align 8
  %68 = load %struct.lp8755_chip*, %struct.lp8755_chip** %8, align 8
  %69 = getelementptr inbounds %struct.lp8755_chip, %struct.lp8755_chip* %68, i32 0, i32 1
  store %struct.lp8755_platform_data* %67, %struct.lp8755_platform_data** %69, align 8
  %70 = load %struct.lp8755_platform_data*, %struct.lp8755_platform_data** %9, align 8
  %71 = getelementptr inbounds %struct.lp8755_platform_data, %struct.lp8755_platform_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.lp8755_chip*, %struct.lp8755_chip** %8, align 8
  %74 = getelementptr inbounds %struct.lp8755_chip, %struct.lp8755_chip* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  br label %102

75:                                               ; preds = %60
  %76 = load %struct.lp8755_chip*, %struct.lp8755_chip** %8, align 8
  %77 = getelementptr inbounds %struct.lp8755_chip, %struct.lp8755_chip* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call i8* @devm_kzalloc(i32* %78, i32 4, i32 %79)
  %81 = bitcast i8* %80 to %struct.lp8755_platform_data*
  %82 = load %struct.lp8755_chip*, %struct.lp8755_chip** %8, align 8
  %83 = getelementptr inbounds %struct.lp8755_chip, %struct.lp8755_chip* %82, i32 0, i32 1
  store %struct.lp8755_platform_data* %81, %struct.lp8755_platform_data** %83, align 8
  %84 = load %struct.lp8755_chip*, %struct.lp8755_chip** %8, align 8
  %85 = getelementptr inbounds %struct.lp8755_chip, %struct.lp8755_chip* %84, i32 0, i32 1
  %86 = load %struct.lp8755_platform_data*, %struct.lp8755_platform_data** %85, align 8
  %87 = icmp ne %struct.lp8755_platform_data* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %75
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %141

91:                                               ; preds = %75
  %92 = load %struct.lp8755_chip*, %struct.lp8755_chip** %8, align 8
  %93 = call i32 @lp8755_init_data(%struct.lp8755_chip* %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 0
  %99 = call i32 (i32*, i8*, ...) @dev_err(i32* %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %3, align 4
  br label %141

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101, %66
  %103 = load %struct.lp8755_chip*, %struct.lp8755_chip** %8, align 8
  %104 = call i32 @lp8755_regulator_init(%struct.lp8755_chip* %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %109 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %108, i32 0, i32 0
  %110 = call i32 (i32*, i8*, ...) @dev_err(i32* %109, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %127

111:                                              ; preds = %102
  %112 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %113 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.lp8755_chip*, %struct.lp8755_chip** %8, align 8
  %116 = getelementptr inbounds %struct.lp8755_chip, %struct.lp8755_chip* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.lp8755_chip*, %struct.lp8755_chip** %8, align 8
  %118 = call i32 @lp8755_int_config(%struct.lp8755_chip* %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %111
  %122 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %123 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %122, i32 0, i32 0
  %124 = call i32 (i32*, i8*, ...) @dev_err(i32* %123, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %127

125:                                              ; preds = %111
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %3, align 4
  br label %141

127:                                              ; preds = %121, %107
  store i32 0, i32* %7, align 4
  br label %128

128:                                              ; preds = %136, %127
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @LP8755_BUCK_MAX, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %128
  %133 = load %struct.lp8755_chip*, %struct.lp8755_chip** %8, align 8
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @lp8755_write(%struct.lp8755_chip* %133, i32 %134, i32 0)
  br label %136

136:                                              ; preds = %132
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %128

139:                                              ; preds = %128
  %140 = load i32, i32* %6, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %139, %125, %96, %88, %50, %33, %19
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local %struct.lp8755_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lp8755_chip*) #1

declare dso_local i32 @lp8755_init_data(%struct.lp8755_chip*) #1

declare dso_local i32 @lp8755_regulator_init(%struct.lp8755_chip*) #1

declare dso_local i32 @lp8755_int_config(%struct.lp8755_chip*) #1

declare dso_local i32 @lp8755_write(%struct.lp8755_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
