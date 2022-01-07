; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_s2mps11.c_s2mps14_pmic_dt_parse_ext_control_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_s2mps11.c_s2mps14_pmic_dt_parse_ext_control_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.of_regulator_match = type { i32, i32, i32 }
%struct.s2mps11_info = type { %struct.gpio_desc** }
%struct.gpio_desc = type { i32 }

@S2MPS14_LDO10 = common dso_local global i32 0, align 4
@S2MPS14_LDO11 = common dso_local global i32 0, align 4
@S2MPS14_LDO12 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"samsung,ext-control-gpios\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@GPIOD_FLAGS_BIT_NONEXCLUSIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"s2mps11-regulator\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to get control GPIO for %d/%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Using GPIO for ext-control over %d/%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.of_regulator_match*, %struct.s2mps11_info*)* @s2mps14_pmic_dt_parse_ext_control_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s2mps14_pmic_dt_parse_ext_control_gpio(%struct.platform_device* %0, %struct.of_regulator_match* %1, %struct.s2mps11_info* %2) #0 {
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.of_regulator_match*, align 8
  %6 = alloca %struct.s2mps11_info*, align 8
  %7 = alloca %struct.gpio_desc**, align 8
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.of_regulator_match* %1, %struct.of_regulator_match** %5, align 8
  store %struct.s2mps11_info* %2, %struct.s2mps11_info** %6, align 8
  %11 = load %struct.s2mps11_info*, %struct.s2mps11_info** %6, align 8
  %12 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %11, i32 0, i32 0
  %13 = load %struct.gpio_desc**, %struct.gpio_desc*** %12, align 8
  store %struct.gpio_desc** %13, %struct.gpio_desc*** %7, align 8
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %15 = load i32, i32* @S2MPS14_LDO10, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @S2MPS14_LDO11, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = load i32, i32* @S2MPS14_LDO12, align 4
  store i32 %19, i32* %18, align 4
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %120, %3
  %21 = load i32, i32* %8, align 4
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %23 = call i32 @ARRAY_SIZE(i32* %22)
  %24 = icmp ult i32 %21, %23
  br i1 %24, label %25, label %123

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load %struct.of_regulator_match*, %struct.of_regulator_match** %5, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %30, i64 %32
  %34 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %25
  %38 = load %struct.of_regulator_match*, %struct.of_regulator_match** %5, align 8
  %39 = load i32, i32* %10, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %38, i64 %40
  %42 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %37, %25
  br label %120

46:                                               ; preds = %37
  %47 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load %struct.of_regulator_match*, %struct.of_regulator_match** %5, align 8
  %50 = load i32, i32* %10, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %49, i64 %51
  %53 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %56 = load i32, i32* @GPIOD_FLAGS_BIT_NONEXCLUSIVE, align 4
  %57 = or i32 %55, %56
  %58 = call %struct.gpio_desc* @devm_gpiod_get_from_of_node(i32* %48, i32 %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 0, i32 %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.gpio_desc**, %struct.gpio_desc*** %7, align 8
  %60 = load i32, i32* %10, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.gpio_desc*, %struct.gpio_desc** %59, i64 %61
  store %struct.gpio_desc* %58, %struct.gpio_desc** %62, align 8
  %63 = load %struct.gpio_desc**, %struct.gpio_desc*** %7, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.gpio_desc*, %struct.gpio_desc** %63, i64 %65
  %67 = load %struct.gpio_desc*, %struct.gpio_desc** %66, align 8
  %68 = call i32 @PTR_ERR(%struct.gpio_desc* %67)
  %69 = load i32, i32* @ENOENT, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %46
  %73 = load %struct.gpio_desc**, %struct.gpio_desc*** %7, align 8
  %74 = load i32, i32* %10, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.gpio_desc*, %struct.gpio_desc** %73, i64 %75
  store %struct.gpio_desc* null, %struct.gpio_desc** %76, align 8
  br label %101

77:                                               ; preds = %46
  %78 = load %struct.gpio_desc**, %struct.gpio_desc*** %7, align 8
  %79 = load i32, i32* %10, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.gpio_desc*, %struct.gpio_desc** %78, i64 %80
  %82 = load %struct.gpio_desc*, %struct.gpio_desc** %81, align 8
  %83 = call i64 @IS_ERR(%struct.gpio_desc* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %77
  %86 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.of_regulator_match*, %struct.of_regulator_match** %5, align 8
  %90 = load i32, i32* %10, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %89, i64 %91
  %93 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %88, i32 %94)
  %96 = load %struct.gpio_desc**, %struct.gpio_desc*** %7, align 8
  %97 = load i32, i32* %10, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.gpio_desc*, %struct.gpio_desc** %96, i64 %98
  store %struct.gpio_desc* null, %struct.gpio_desc** %99, align 8
  br label %120

100:                                              ; preds = %77
  br label %101

101:                                              ; preds = %100, %72
  %102 = load %struct.gpio_desc**, %struct.gpio_desc*** %7, align 8
  %103 = load i32, i32* %10, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.gpio_desc*, %struct.gpio_desc** %102, i64 %104
  %106 = load %struct.gpio_desc*, %struct.gpio_desc** %105, align 8
  %107 = icmp ne %struct.gpio_desc* %106, null
  br i1 %107, label %108, label %119

108:                                              ; preds = %101
  %109 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.of_regulator_match*, %struct.of_regulator_match** %5, align 8
  %113 = load i32, i32* %10, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %112, i64 %114
  %116 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @dev_dbg(i32* %110, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %111, i32 %117)
  br label %119

119:                                              ; preds = %108, %101
  br label %120

120:                                              ; preds = %119, %85, %45
  %121 = load i32, i32* %8, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %20

123:                                              ; preds = %20
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get_from_of_node(i32*, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
