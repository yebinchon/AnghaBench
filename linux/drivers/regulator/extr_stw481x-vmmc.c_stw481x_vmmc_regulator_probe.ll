; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_stw481x-vmmc.c_stw481x_vmmc_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_stw481x-vmmc.c_stw481x_vmmc_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.stw481x = type { i32 }
%struct.regulator_config = type { i32, i32, i32, %struct.stw481x*, %struct.TYPE_6__* }
%struct.regulator_dev = type { i32 }

@STW_CONF2 = common dso_local global i32 0, align 4
@STW_CONF2_VMMC_EXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"could not disable external VMMC\0A\00", align 1
@vmmc_regulator = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"error initializing STw481x VMMC regulator\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"initialized STw481x VMMC regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stw481x_vmmc_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stw481x_vmmc_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.stw481x*, align 8
  %5 = alloca %struct.regulator_config, align 8
  %6 = alloca %struct.regulator_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.stw481x* @dev_get_platdata(%struct.TYPE_6__* %9)
  store %struct.stw481x* %10, %struct.stw481x** %4, align 8
  %11 = bitcast %struct.regulator_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 32, i1 false)
  %12 = load %struct.stw481x*, %struct.stw481x** %4, align 8
  %13 = getelementptr inbounds %struct.stw481x, %struct.stw481x* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @STW_CONF2, align 4
  %16 = load i32, i32* @STW_CONF2_VMMC_EXT, align 4
  %17 = call i32 @regmap_update_bits(i32 %14, i32 %15, i32 %16, i32 0)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 @dev_err(%struct.TYPE_6__* %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %64

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 4
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %28, align 8
  %29 = load %struct.stw481x*, %struct.stw481x** %4, align 8
  %30 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 3
  store %struct.stw481x* %29, %struct.stw481x** %30, align 8
  %31 = load %struct.stw481x*, %struct.stw481x** %4, align 8
  %32 = getelementptr inbounds %struct.stw481x, %struct.stw481x* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @of_get_regulator_init_data(%struct.TYPE_6__* %41, i32 %45, i32* @vmmc_regulator)
  %47 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_6__* %49, i32* @vmmc_regulator, %struct.regulator_config* %5)
  store %struct.regulator_dev* %50, %struct.regulator_dev** %6, align 8
  %51 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %52 = call i64 @IS_ERR(%struct.regulator_dev* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %25
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 @dev_err(%struct.TYPE_6__* %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %59 = call i32 @PTR_ERR(%struct.regulator_dev* %58)
  store i32 %59, i32* %2, align 4
  br label %64

60:                                               ; preds = %25
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 @dev_info(%struct.TYPE_6__* %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %54, %20
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.stw481x* @dev_get_platdata(%struct.TYPE_6__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @of_get_regulator_init_data(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_6__*, i32*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_info(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
