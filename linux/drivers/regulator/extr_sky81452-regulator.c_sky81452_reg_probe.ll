; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_sky81452-regulator.c_sky81452_reg_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_sky81452-regulator.c_sky81452_reg_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32, i32 }
%struct.regulator_init_data = type { i32 }
%struct.regulator_config = type { i32, i32, %struct.regulator_init_data*, i32 }
%struct.regulator_dev = type { i32 }

@sky81452_reg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to register. err=%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sky81452_reg_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky81452_reg_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.regulator_init_data*, align 8
  %6 = alloca %struct.regulator_config, align 8
  %7 = alloca %struct.regulator_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.regulator_init_data* @dev_get_platdata(%struct.device* %10)
  store %struct.regulator_init_data* %11, %struct.regulator_init_data** %5, align 8
  %12 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 3
  store i32 %15, i32* %16, align 8
  %17 = load %struct.regulator_init_data*, %struct.regulator_init_data** %5, align 8
  %18 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store %struct.regulator_init_data* %17, %struct.regulator_init_data** %18, align 8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_get_drvdata(i32 %25)
  %27 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = call %struct.regulator_dev* @devm_regulator_register(%struct.device* %28, i32* @sky81452_reg, %struct.regulator_config* %6)
  store %struct.regulator_dev* %29, %struct.regulator_dev** %7, align 8
  %30 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %31 = call i64 @IS_ERR(%struct.regulator_dev* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %1
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %36 = call i32 @PTR_ERR(%struct.regulator_dev* %35)
  %37 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %39 = call i32 @PTR_ERR(%struct.regulator_dev* %38)
  store i32 %39, i32* %2, align 4
  br label %44

40:                                               ; preds = %1
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %43 = call i32 @platform_set_drvdata(%struct.platform_device* %41, %struct.regulator_dev* %42)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %40, %33
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.regulator_init_data* @dev_get_platdata(%struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dev_get_drvdata(i32) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.device*, i32*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
