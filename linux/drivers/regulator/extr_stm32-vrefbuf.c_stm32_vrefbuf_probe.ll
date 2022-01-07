; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_stm32-vrefbuf.c_stm32_vrefbuf_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_stm32-vrefbuf.c_stm32_vrefbuf_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.resource = type { i32 }
%struct.stm32_vrefbuf = type { %struct.regulator_dev*, %struct.regulator_dev*, %struct.TYPE_16__* }
%struct.regulator_dev = type { i32 }
%struct.regulator_config = type { i32, i32, %struct.stm32_vrefbuf*, %struct.TYPE_16__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@STM32_VREFBUF_AUTO_SUSPEND_DELAY_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"clk prepare failed with error %d\0A\00", align 1
@stm32_vrefbuf_regu = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"register failed with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_vrefbuf_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_vrefbuf_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.stm32_vrefbuf*, align 8
  %6 = alloca %struct.regulator_config, align 8
  %7 = alloca %struct.regulator_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.stm32_vrefbuf* @devm_kzalloc(%struct.TYPE_16__* %11, i32 24, i32 %12)
  store %struct.stm32_vrefbuf* %13, %struct.stm32_vrefbuf** %5, align 8
  %14 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %5, align 8
  %15 = icmp ne %struct.stm32_vrefbuf* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %143

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %5, align 8
  %23 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %22, i32 0, i32 2
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = call %struct.resource* @platform_get_resource(%struct.platform_device* %24, i32 %25, i32 0)
  store %struct.resource* %26, %struct.resource** %4, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.resource*, %struct.resource** %4, align 8
  %30 = call %struct.regulator_dev* @devm_ioremap_resource(%struct.TYPE_16__* %28, %struct.resource* %29)
  %31 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %5, align 8
  %32 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %31, i32 0, i32 1
  store %struct.regulator_dev* %30, %struct.regulator_dev** %32, align 8
  %33 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %5, align 8
  %34 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %33, i32 0, i32 1
  %35 = load %struct.regulator_dev*, %struct.regulator_dev** %34, align 8
  %36 = call i64 @IS_ERR(%struct.regulator_dev* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %19
  %39 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %5, align 8
  %40 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %39, i32 0, i32 1
  %41 = load %struct.regulator_dev*, %struct.regulator_dev** %40, align 8
  %42 = call i32 @PTR_ERR(%struct.regulator_dev* %41)
  store i32 %42, i32* %2, align 4
  br label %143

43:                                               ; preds = %19
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call %struct.regulator_dev* @devm_clk_get(%struct.TYPE_16__* %45, i32* null)
  %47 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %5, align 8
  %48 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %47, i32 0, i32 0
  store %struct.regulator_dev* %46, %struct.regulator_dev** %48, align 8
  %49 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %5, align 8
  %50 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %49, i32 0, i32 0
  %51 = load %struct.regulator_dev*, %struct.regulator_dev** %50, align 8
  %52 = call i64 @IS_ERR(%struct.regulator_dev* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %43
  %55 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %5, align 8
  %56 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %55, i32 0, i32 0
  %57 = load %struct.regulator_dev*, %struct.regulator_dev** %56, align 8
  %58 = call i32 @PTR_ERR(%struct.regulator_dev* %57)
  store i32 %58, i32* %2, align 4
  br label %143

59:                                               ; preds = %43
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i32 @pm_runtime_get_noresume(%struct.TYPE_16__* %61)
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call i32 @pm_runtime_set_active(%struct.TYPE_16__* %64)
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load i32, i32* @STM32_VREFBUF_AUTO_SUSPEND_DELAY_MS, align 4
  %69 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_16__* %67, i32 %68)
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_16__* %71)
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32 @pm_runtime_enable(%struct.TYPE_16__* %74)
  %76 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %5, align 8
  %77 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %76, i32 0, i32 0
  %78 = load %struct.regulator_dev*, %struct.regulator_dev** %77, align 8
  %79 = call i32 @clk_prepare_enable(%struct.regulator_dev* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %59
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @dev_err(%struct.TYPE_16__* %84, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %85)
  br label %132

87:                                               ; preds = %59
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 3
  store %struct.TYPE_16__* %89, %struct.TYPE_16__** %90, align 8
  %91 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %5, align 8
  %92 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store %struct.stm32_vrefbuf* %91, %struct.stm32_vrefbuf** %92, align 8
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store i32 %96, i32* %97, align 4
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @of_get_regulator_init_data(%struct.TYPE_16__* %99, i32 %103, i32* @stm32_vrefbuf_regu)
  %105 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store i32 %104, i32* %105, align 8
  %106 = call %struct.regulator_dev* @regulator_register(i32* @stm32_vrefbuf_regu, %struct.regulator_config* %6)
  store %struct.regulator_dev* %106, %struct.regulator_dev** %7, align 8
  %107 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %108 = call i64 @IS_ERR(%struct.regulator_dev* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %87
  %111 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %112 = call i32 @PTR_ERR(%struct.regulator_dev* %111)
  store i32 %112, i32* %8, align 4
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @dev_err(%struct.TYPE_16__* %114, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  br label %127

117:                                              ; preds = %87
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %120 = call i32 @platform_set_drvdata(%struct.platform_device* %118, %struct.regulator_dev* %119)
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = call i32 @pm_runtime_mark_last_busy(%struct.TYPE_16__* %122)
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = call i32 @pm_runtime_put_autosuspend(%struct.TYPE_16__* %125)
  store i32 0, i32* %2, align 4
  br label %143

127:                                              ; preds = %110
  %128 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %5, align 8
  %129 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %128, i32 0, i32 0
  %130 = load %struct.regulator_dev*, %struct.regulator_dev** %129, align 8
  %131 = call i32 @clk_disable_unprepare(%struct.regulator_dev* %130)
  br label %132

132:                                              ; preds = %127, %82
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = call i32 @pm_runtime_disable(%struct.TYPE_16__* %134)
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = call i32 @pm_runtime_set_suspended(%struct.TYPE_16__* %137)
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = call i32 @pm_runtime_put_noidle(%struct.TYPE_16__* %140)
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %132, %117, %54, %38, %16
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.stm32_vrefbuf* @devm_kzalloc(%struct.TYPE_16__*, i32, i32) #2

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #2

declare dso_local %struct.regulator_dev* @devm_ioremap_resource(%struct.TYPE_16__*, %struct.resource*) #2

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #2

declare dso_local %struct.regulator_dev* @devm_clk_get(%struct.TYPE_16__*, i32*) #2

declare dso_local i32 @pm_runtime_get_noresume(%struct.TYPE_16__*) #2

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_16__*) #2

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_16__*, i32) #2

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_16__*) #2

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_16__*) #2

declare dso_local i32 @clk_prepare_enable(%struct.regulator_dev*) #2

declare dso_local i32 @dev_err(%struct.TYPE_16__*, i8*, i32) #2

declare dso_local i32 @of_get_regulator_init_data(%struct.TYPE_16__*, i32, i32*) #2

declare dso_local %struct.regulator_dev* @regulator_register(i32*, %struct.regulator_config*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.regulator_dev*) #2

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.TYPE_16__*) #2

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.TYPE_16__*) #2

declare dso_local i32 @clk_disable_unprepare(%struct.regulator_dev*) #2

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_16__*) #2

declare dso_local i32 @pm_runtime_set_suspended(%struct.TYPE_16__*) #2

declare dso_local i32 @pm_runtime_put_noidle(%struct.TYPE_16__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
