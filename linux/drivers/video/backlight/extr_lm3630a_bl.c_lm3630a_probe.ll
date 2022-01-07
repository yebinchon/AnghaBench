; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3630a_bl.c_lm3630a_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3630a_bl.c_lm3630a_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i64, i32 }
%struct.i2c_device_id = type { i32 }
%struct.lm3630a_platform_data = type { i64, i8*, i8*, i8*, i8* }
%struct.lm3630a_chip = type { i64, i32, i32*, %struct.lm3630a_platform_data*, i32 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"fail : i2c functionality check\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lm3630a_regmap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"fail : allocate reg. map: %d\0A\00", align 1
@LM3630A_MAX_BRIGHTNESS = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"fail : parse node\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"fail : init chip\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"fail : backlight register.\0A\00", align 1
@LM3630A_PWM_DISABLE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"lm3630a-pwm\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"fail : get pwm device\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"LM3630A backlight register OK.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lm3630a_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3630a_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.lm3630a_platform_data*, align 8
  %7 = alloca %struct.lm3630a_chip*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call %struct.lm3630a_platform_data* @dev_get_platdata(i32* %10)
  store %struct.lm3630a_platform_data* %11, %struct.lm3630a_platform_data** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @I2C_FUNC_I2C, align 4
  %16 = call i32 @i2c_check_functionality(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = call i32 (i32*, i8*, ...) @dev_err(i32* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %177

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @devm_kzalloc(i32* %26, i32 40, i32 %27)
  %29 = bitcast i8* %28 to %struct.lm3630a_chip*
  store %struct.lm3630a_chip* %29, %struct.lm3630a_chip** %7, align 8
  %30 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %7, align 8
  %31 = icmp ne %struct.lm3630a_chip* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %177

35:                                               ; preds = %24
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %7, align 8
  %39 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %40, i32* @lm3630a_regmap)
  %42 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %7, align 8
  %43 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %7, align 8
  %45 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @IS_ERR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %35
  %50 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %7, align 8
  %51 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @PTR_ERR(i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = load i32, i32* %8, align 4
  %57 = call i32 (i32*, i8*, ...) @dev_err(i32* %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %177

59:                                               ; preds = %35
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %7, align 8
  %62 = call i32 @i2c_set_clientdata(%struct.i2c_client* %60, %struct.lm3630a_chip* %61)
  %63 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %6, align 8
  %64 = icmp eq %struct.lm3630a_platform_data* %63, null
  br i1 %64, label %65, label %101

65:                                               ; preds = %59
  %66 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %7, align 8
  %67 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i8* @devm_kzalloc(i32* %68, i32 40, i32 %69)
  %71 = bitcast i8* %70 to %struct.lm3630a_platform_data*
  store %struct.lm3630a_platform_data* %71, %struct.lm3630a_platform_data** %6, align 8
  %72 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %6, align 8
  %73 = icmp eq %struct.lm3630a_platform_data* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %177

77:                                               ; preds = %65
  %78 = load i8*, i8** @LM3630A_MAX_BRIGHTNESS, align 8
  %79 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %6, align 8
  %80 = getelementptr inbounds %struct.lm3630a_platform_data, %struct.lm3630a_platform_data* %79, i32 0, i32 4
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** @LM3630A_MAX_BRIGHTNESS, align 8
  %82 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %6, align 8
  %83 = getelementptr inbounds %struct.lm3630a_platform_data, %struct.lm3630a_platform_data* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** @LM3630A_MAX_BRIGHTNESS, align 8
  %85 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %6, align 8
  %86 = getelementptr inbounds %struct.lm3630a_platform_data, %struct.lm3630a_platform_data* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load i8*, i8** @LM3630A_MAX_BRIGHTNESS, align 8
  %88 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %6, align 8
  %89 = getelementptr inbounds %struct.lm3630a_platform_data, %struct.lm3630a_platform_data* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %7, align 8
  %91 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %6, align 8
  %92 = call i32 @lm3630a_parse_node(%struct.lm3630a_chip* %90, %struct.lm3630a_platform_data* %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %77
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 0
  %98 = call i32 (i32*, i8*, ...) @dev_err(i32* %97, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %3, align 4
  br label %177

100:                                              ; preds = %77
  br label %101

101:                                              ; preds = %100, %59
  %102 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %6, align 8
  %103 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %7, align 8
  %104 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %103, i32 0, i32 3
  store %struct.lm3630a_platform_data* %102, %struct.lm3630a_platform_data** %104, align 8
  %105 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %7, align 8
  %106 = call i32 @lm3630a_chip_init(%struct.lm3630a_chip* %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %101
  %110 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %111 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %110, i32 0, i32 0
  %112 = call i32 (i32*, i8*, ...) @dev_err(i32* %111, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %3, align 4
  br label %177

114:                                              ; preds = %101
  %115 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %7, align 8
  %116 = call i32 @lm3630a_backlight_register(%struct.lm3630a_chip* %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %121 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %120, i32 0, i32 0
  %122 = call i32 (i32*, i8*, ...) @dev_err(i32* %121, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %3, align 4
  br label %177

124:                                              ; preds = %114
  %125 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %6, align 8
  %126 = getelementptr inbounds %struct.lm3630a_platform_data, %struct.lm3630a_platform_data* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @LM3630A_PWM_DISABLE, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %155

130:                                              ; preds = %124
  %131 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %7, align 8
  %132 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @devm_pwm_get(i32* %133, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %135 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %7, align 8
  %136 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 8
  %137 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %7, align 8
  %138 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @IS_ERR(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %130
  %143 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %144 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %143, i32 0, i32 0
  %145 = call i32 (i32*, i8*, ...) @dev_err(i32* %144, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %146 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %7, align 8
  %147 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @PTR_ERR(i32 %148)
  store i32 %149, i32* %3, align 4
  br label %177

150:                                              ; preds = %130
  %151 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %7, align 8
  %152 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @pwm_apply_args(i32 %153)
  br label %155

155:                                              ; preds = %150, %124
  %156 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %157 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %7, align 8
  %160 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  %161 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %7, align 8
  %162 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %155
  %166 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %7, align 8
  %167 = call i32 @lm3630a_intr_config(%struct.lm3630a_chip* %166)
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* %8, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %3, align 4
  br label %177

172:                                              ; preds = %165
  br label %173

173:                                              ; preds = %172, %155
  %174 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %175 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %174, i32 0, i32 0
  %176 = call i32 @dev_info(i32* %175, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %177

177:                                              ; preds = %173, %170, %142, %119, %109, %95, %74, %49, %32, %18
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local %struct.lm3630a_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lm3630a_chip*) #1

declare dso_local i32 @lm3630a_parse_node(%struct.lm3630a_chip*, %struct.lm3630a_platform_data*) #1

declare dso_local i32 @lm3630a_chip_init(%struct.lm3630a_chip*) #1

declare dso_local i32 @lm3630a_backlight_register(%struct.lm3630a_chip*) #1

declare dso_local i32 @devm_pwm_get(i32*, i8*) #1

declare dso_local i32 @pwm_apply_args(i32) #1

declare dso_local i32 @lm3630a_intr_config(%struct.lm3630a_chip*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
