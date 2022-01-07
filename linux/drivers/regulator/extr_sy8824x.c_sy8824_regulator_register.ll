; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_sy8824x.c_sy8824_regulator_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_sy8824x.c_sy8824_regulator_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sy8824_device_info = type { %struct.regulator_desc, i32, %struct.sy8824_config* }
%struct.regulator_desc = type { i8*, i8*, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32* }
%struct.sy8824_config = type { i64, i32, i32, i32, i32 }
%struct.regulator_config = type { i32 }
%struct.regulator_dev = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"sy8824-reg\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"vin\00", align 1
@sy8824_regulator_ops = common dso_local global i32 0, align 4
@REGULATOR_VOLTAGE = common dso_local global i32 0, align 4
@SY8824C_BUCK_EN = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sy8824_device_info*, %struct.regulator_config*)* @sy8824_regulator_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sy8824_regulator_register(%struct.sy8824_device_info* %0, %struct.regulator_config* %1) #0 {
  %3 = alloca %struct.sy8824_device_info*, align 8
  %4 = alloca %struct.regulator_config*, align 8
  %5 = alloca %struct.regulator_desc*, align 8
  %6 = alloca %struct.sy8824_config*, align 8
  %7 = alloca %struct.regulator_dev*, align 8
  store %struct.sy8824_device_info* %0, %struct.sy8824_device_info** %3, align 8
  store %struct.regulator_config* %1, %struct.regulator_config** %4, align 8
  %8 = load %struct.sy8824_device_info*, %struct.sy8824_device_info** %3, align 8
  %9 = getelementptr inbounds %struct.sy8824_device_info, %struct.sy8824_device_info* %8, i32 0, i32 0
  store %struct.regulator_desc* %9, %struct.regulator_desc** %5, align 8
  %10 = load %struct.sy8824_device_info*, %struct.sy8824_device_info** %3, align 8
  %11 = getelementptr inbounds %struct.sy8824_device_info, %struct.sy8824_device_info* %10, i32 0, i32 2
  %12 = load %struct.sy8824_config*, %struct.sy8824_config** %11, align 8
  store %struct.sy8824_config* %12, %struct.sy8824_config** %6, align 8
  %13 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %14 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %16 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %15, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  %17 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %18 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %17, i32 0, i32 11
  store i32* @sy8824_regulator_ops, i32** %18, align 8
  %19 = load i32, i32* @REGULATOR_VOLTAGE, align 4
  %20 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %21 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %20, i32 0, i32 10
  store i32 %19, i32* %21, align 8
  %22 = load %struct.sy8824_config*, %struct.sy8824_config** %6, align 8
  %23 = getelementptr inbounds %struct.sy8824_config, %struct.sy8824_config* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %26 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %25, i32 0, i32 9
  store i64 %24, i64* %26, align 8
  %27 = load %struct.sy8824_config*, %struct.sy8824_config** %6, align 8
  %28 = getelementptr inbounds %struct.sy8824_config, %struct.sy8824_config* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %31 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @SY8824C_BUCK_EN, align 4
  %33 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %34 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 4
  %35 = load %struct.sy8824_config*, %struct.sy8824_config** %6, align 8
  %36 = getelementptr inbounds %struct.sy8824_config, %struct.sy8824_config* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %39 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 8
  %40 = load %struct.sy8824_config*, %struct.sy8824_config** %6, align 8
  %41 = getelementptr inbounds %struct.sy8824_config, %struct.sy8824_config* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %44 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load %struct.sy8824_config*, %struct.sy8824_config** %6, align 8
  %46 = getelementptr inbounds %struct.sy8824_config, %struct.sy8824_config* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %49 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load %struct.sy8824_config*, %struct.sy8824_config** %6, align 8
  %51 = getelementptr inbounds %struct.sy8824_config, %struct.sy8824_config* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %52, 1
  %54 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %55 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %54, i32 0, i32 3
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* @THIS_MODULE, align 4
  %57 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %58 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.sy8824_device_info*, %struct.sy8824_device_info** %3, align 8
  %60 = getelementptr inbounds %struct.sy8824_device_info, %struct.sy8824_device_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.sy8824_device_info*, %struct.sy8824_device_info** %3, align 8
  %63 = getelementptr inbounds %struct.sy8824_device_info, %struct.sy8824_device_info* %62, i32 0, i32 0
  %64 = load %struct.regulator_config*, %struct.regulator_config** %4, align 8
  %65 = call %struct.regulator_dev* @devm_regulator_register(i32 %61, %struct.regulator_desc* %63, %struct.regulator_config* %64)
  store %struct.regulator_dev* %65, %struct.regulator_dev** %7, align 8
  %66 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %67 = call i32 @PTR_ERR_OR_ZERO(%struct.regulator_dev* %66)
  ret i32 %67
}

declare dso_local %struct.regulator_dev* @devm_regulator_register(i32, %struct.regulator_desc*, %struct.regulator_config*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
