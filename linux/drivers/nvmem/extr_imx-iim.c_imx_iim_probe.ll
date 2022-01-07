; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_imx-iim.c_imx_iim_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_imx-iim.c_imx_iim_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.of_device_id = type { %struct.imx_iim_drvdata* }
%struct.imx_iim_drvdata = type { i32 }
%struct.iim_priv = type { i32, i32 }
%struct.nvmem_device = type { i32 }
%struct.nvmem_config = type { i8*, i32, i32, i32, %struct.iim_priv*, i32, %struct.device*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@imx_iim_dt_ids = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"imx-iim\00", align 1
@imx_iim_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_iim_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_iim_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.iim_priv*, align 8
  %7 = alloca %struct.nvmem_device*, align 8
  %8 = alloca %struct.nvmem_config, align 8
  %9 = alloca %struct.imx_iim_drvdata*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = bitcast %struct.nvmem_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 56, i1 false)
  store %struct.imx_iim_drvdata* null, %struct.imx_iim_drvdata** %9, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.iim_priv* @devm_kzalloc(%struct.device* %13, i32 8, i32 %14)
  store %struct.iim_priv* %15, %struct.iim_priv** %6, align 8
  %16 = load %struct.iim_priv*, %struct.iim_priv** %6, align 8
  %17 = icmp ne %struct.iim_priv* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %82

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %22, i32 0)
  %24 = load %struct.iim_priv*, %struct.iim_priv** %6, align 8
  %25 = getelementptr inbounds %struct.iim_priv, %struct.iim_priv* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.iim_priv*, %struct.iim_priv** %6, align 8
  %27 = getelementptr inbounds %struct.iim_priv, %struct.iim_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.iim_priv*, %struct.iim_priv** %6, align 8
  %33 = getelementptr inbounds %struct.iim_priv, %struct.iim_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %82

36:                                               ; preds = %21
  %37 = load i32, i32* @imx_iim_dt_ids, align 4
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = call %struct.of_device_id* @of_match_device(i32 %37, %struct.device* %38)
  store %struct.of_device_id* %39, %struct.of_device_id** %4, align 8
  %40 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %41 = icmp ne %struct.of_device_id* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %82

45:                                               ; preds = %36
  %46 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %47 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %46, i32 0, i32 0
  %48 = load %struct.imx_iim_drvdata*, %struct.imx_iim_drvdata** %47, align 8
  store %struct.imx_iim_drvdata* %48, %struct.imx_iim_drvdata** %9, align 8
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = call i32 @devm_clk_get(%struct.device* %49, i32* null)
  %51 = load %struct.iim_priv*, %struct.iim_priv** %6, align 8
  %52 = getelementptr inbounds %struct.iim_priv, %struct.iim_priv* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.iim_priv*, %struct.iim_priv** %6, align 8
  %54 = getelementptr inbounds %struct.iim_priv, %struct.iim_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @IS_ERR(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %45
  %59 = load %struct.iim_priv*, %struct.iim_priv** %6, align 8
  %60 = getelementptr inbounds %struct.iim_priv, %struct.iim_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @PTR_ERR(i32 %61)
  store i32 %62, i32* %2, align 4
  br label %82

63:                                               ; preds = %45
  %64 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %64, align 8
  %65 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 1
  store i32 1, i32* %65, align 8
  %66 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 2
  store i32 1, i32* %66, align 4
  %67 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 3
  store i32 1, i32* %67, align 8
  %68 = load i32, i32* @imx_iim_read, align 4
  %69 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 7
  store i32 %68, i32* %69, align 8
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 6
  store %struct.device* %70, %struct.device** %71, align 8
  %72 = load %struct.imx_iim_drvdata*, %struct.imx_iim_drvdata** %9, align 8
  %73 = getelementptr inbounds %struct.imx_iim_drvdata, %struct.imx_iim_drvdata* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 5
  store i32 %74, i32* %75, align 8
  %76 = load %struct.iim_priv*, %struct.iim_priv** %6, align 8
  %77 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 4
  store %struct.iim_priv* %76, %struct.iim_priv** %77, align 8
  %78 = load %struct.device*, %struct.device** %5, align 8
  %79 = call %struct.nvmem_device* @devm_nvmem_register(%struct.device* %78, %struct.nvmem_config* %8)
  store %struct.nvmem_device* %79, %struct.nvmem_device** %7, align 8
  %80 = load %struct.nvmem_device*, %struct.nvmem_device** %7, align 8
  %81 = call i32 @PTR_ERR_OR_ZERO(%struct.nvmem_device* %80)
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %63, %58, %42, %31, %18
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.iim_priv* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #2

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #2

declare dso_local %struct.nvmem_device* @devm_nvmem_register(%struct.device*, %struct.nvmem_config*) #2

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.nvmem_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
