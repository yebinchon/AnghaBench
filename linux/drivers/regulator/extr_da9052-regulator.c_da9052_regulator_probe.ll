; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9052-regulator.c_da9052_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9052-regulator.c_da9052_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.mfd_cell = type { i64 }
%struct.regulator_config = type { i32, i32, %struct.da9052_regulator*, i32 }
%struct.da9052_regulator = type { i32, %struct.TYPE_6__*, %struct.da9052* }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.da9052 = type { i32, i32, i32 }
%struct.da9052_pdata = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"invalid regulator ID specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to register regulator %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9052_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mfd_cell*, align 8
  %5 = alloca %struct.regulator_config, align 8
  %6 = alloca %struct.da9052_regulator*, align 8
  %7 = alloca %struct.da9052*, align 8
  %8 = alloca %struct.da9052_pdata*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = call %struct.mfd_cell* @mfd_get_cell(%struct.platform_device* %9)
  store %struct.mfd_cell* %10, %struct.mfd_cell** %4, align 8
  %11 = bitcast %struct.regulator_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.da9052_regulator* @devm_kzalloc(%struct.TYPE_7__* %13, i32 24, i32 %14)
  store %struct.da9052_regulator* %15, %struct.da9052_regulator** %6, align 8
  %16 = load %struct.da9052_regulator*, %struct.da9052_regulator** %6, align 8
  %17 = icmp ne %struct.da9052_regulator* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %111

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.da9052* @dev_get_drvdata(i32 %25)
  store %struct.da9052* %26, %struct.da9052** %7, align 8
  %27 = load %struct.da9052*, %struct.da9052** %7, align 8
  %28 = getelementptr inbounds %struct.da9052, %struct.da9052* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.da9052_pdata* @dev_get_platdata(i32 %29)
  store %struct.da9052_pdata* %30, %struct.da9052_pdata** %8, align 8
  %31 = load %struct.da9052*, %struct.da9052** %7, align 8
  %32 = load %struct.da9052_regulator*, %struct.da9052_regulator** %6, align 8
  %33 = getelementptr inbounds %struct.da9052_regulator, %struct.da9052_regulator* %32, i32 0, i32 2
  store %struct.da9052* %31, %struct.da9052** %33, align 8
  %34 = load %struct.da9052_regulator*, %struct.da9052_regulator** %6, align 8
  %35 = getelementptr inbounds %struct.da9052_regulator, %struct.da9052_regulator* %34, i32 0, i32 2
  %36 = load %struct.da9052*, %struct.da9052** %35, align 8
  %37 = getelementptr inbounds %struct.da9052, %struct.da9052* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mfd_cell*, %struct.mfd_cell** %4, align 8
  %40 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call %struct.TYPE_6__* @find_regulator_info(i32 %38, i64 %41)
  %43 = load %struct.da9052_regulator*, %struct.da9052_regulator** %6, align 8
  %44 = getelementptr inbounds %struct.da9052_regulator, %struct.da9052_regulator* %43, i32 0, i32 1
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %44, align 8
  %45 = load %struct.da9052_regulator*, %struct.da9052_regulator** %6, align 8
  %46 = getelementptr inbounds %struct.da9052_regulator, %struct.da9052_regulator* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = icmp eq %struct.TYPE_6__* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %21
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %111

55:                                               ; preds = %21
  %56 = load %struct.da9052*, %struct.da9052** %7, align 8
  %57 = getelementptr inbounds %struct.da9052, %struct.da9052* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 3
  store i32 %58, i32* %59, align 8
  %60 = load %struct.da9052_regulator*, %struct.da9052_regulator** %6, align 8
  %61 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 2
  store %struct.da9052_regulator* %60, %struct.da9052_regulator** %61, align 8
  %62 = load %struct.da9052*, %struct.da9052** %7, align 8
  %63 = getelementptr inbounds %struct.da9052, %struct.da9052* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = load %struct.da9052_pdata*, %struct.da9052_pdata** %8, align 8
  %67 = icmp ne %struct.da9052_pdata* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %55
  %69 = load %struct.da9052_pdata*, %struct.da9052_pdata** %8, align 8
  %70 = getelementptr inbounds %struct.da9052_pdata, %struct.da9052_pdata* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.mfd_cell*, %struct.mfd_cell** %4, align 8
  %73 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 0
  store i32 %76, i32* %77, align 8
  br label %78

78:                                               ; preds = %68, %55
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = load %struct.da9052_regulator*, %struct.da9052_regulator** %6, align 8
  %82 = getelementptr inbounds %struct.da9052_regulator, %struct.da9052_regulator* %81, i32 0, i32 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = call i32 @devm_regulator_register(%struct.TYPE_7__* %80, %struct.TYPE_8__* %84, %struct.regulator_config* %5)
  %86 = load %struct.da9052_regulator*, %struct.da9052_regulator** %6, align 8
  %87 = getelementptr inbounds %struct.da9052_regulator, %struct.da9052_regulator* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.da9052_regulator*, %struct.da9052_regulator** %6, align 8
  %89 = getelementptr inbounds %struct.da9052_regulator, %struct.da9052_regulator* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @IS_ERR(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %78
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = load %struct.da9052_regulator*, %struct.da9052_regulator** %6, align 8
  %97 = getelementptr inbounds %struct.da9052_regulator, %struct.da9052_regulator* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %95, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load %struct.da9052_regulator*, %struct.da9052_regulator** %6, align 8
  %104 = getelementptr inbounds %struct.da9052_regulator, %struct.da9052_regulator* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @PTR_ERR(i32 %105)
  store i32 %106, i32* %2, align 4
  br label %111

107:                                              ; preds = %78
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = load %struct.da9052_regulator*, %struct.da9052_regulator** %6, align 8
  %110 = call i32 @platform_set_drvdata(%struct.platform_device* %108, %struct.da9052_regulator* %109)
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %107, %93, %49, %18
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.mfd_cell* @mfd_get_cell(%struct.platform_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.da9052_regulator* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local %struct.da9052* @dev_get_drvdata(i32) #1

declare dso_local %struct.da9052_pdata* @dev_get_platdata(i32) #1

declare dso_local %struct.TYPE_6__* @find_regulator_info(i32, i64) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @devm_regulator_register(%struct.TYPE_7__*, %struct.TYPE_8__*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.da9052_regulator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
