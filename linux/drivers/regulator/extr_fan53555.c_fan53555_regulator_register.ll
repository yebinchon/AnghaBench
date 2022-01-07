; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_fan53555.c_fan53555_regulator_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_fan53555.c_fan53555_regulator_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fan53555_device_info = type { %struct.regulator_desc, i32, i64, i32, i32, i32 }
%struct.regulator_desc = type { i8*, i8*, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32* }
%struct.regulator_config = type { i32 }
%struct.regulator_dev = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"fan53555-reg\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"vin\00", align 1
@fan53555_regulator_ops = common dso_local global i32 0, align 4
@REGULATOR_VOLTAGE = common dso_local global i32 0, align 4
@VSEL_BUCK_EN = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fan53555_device_info*, %struct.regulator_config*)* @fan53555_regulator_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan53555_regulator_register(%struct.fan53555_device_info* %0, %struct.regulator_config* %1) #0 {
  %3 = alloca %struct.fan53555_device_info*, align 8
  %4 = alloca %struct.regulator_config*, align 8
  %5 = alloca %struct.regulator_desc*, align 8
  %6 = alloca %struct.regulator_dev*, align 8
  store %struct.fan53555_device_info* %0, %struct.fan53555_device_info** %3, align 8
  store %struct.regulator_config* %1, %struct.regulator_config** %4, align 8
  %7 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %8 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %7, i32 0, i32 0
  store %struct.regulator_desc* %8, %struct.regulator_desc** %5, align 8
  %9 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %10 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %11 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %12 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %11, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  %13 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %14 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %13, i32 0, i32 11
  store i32* @fan53555_regulator_ops, i32** %14, align 8
  %15 = load i32, i32* @REGULATOR_VOLTAGE, align 4
  %16 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %17 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %16, i32 0, i32 10
  store i32 %15, i32* %17, align 8
  %18 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %19 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %22 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %21, i32 0, i32 9
  store i64 %20, i64* %22, align 8
  %23 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %24 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %27 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @VSEL_BUCK_EN, align 4
  %29 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %30 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 4
  %31 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %32 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %35 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  %36 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %37 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %40 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %42 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %45 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %47 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %48, 1
  %50 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %51 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %50, i32 0, i32 3
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* @THIS_MODULE, align 4
  %53 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %54 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %56 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %59 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %58, i32 0, i32 0
  %60 = load %struct.regulator_config*, %struct.regulator_config** %4, align 8
  %61 = call %struct.regulator_dev* @devm_regulator_register(i32 %57, %struct.regulator_desc* %59, %struct.regulator_config* %60)
  store %struct.regulator_dev* %61, %struct.regulator_dev** %6, align 8
  %62 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %63 = call i32 @PTR_ERR_OR_ZERO(%struct.regulator_dev* %62)
  ret i32 %63
}

declare dso_local %struct.regulator_dev* @devm_regulator_register(i32, %struct.regulator_desc*, %struct.regulator_config*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
