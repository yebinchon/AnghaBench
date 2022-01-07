; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_uniphier-efuse.c_uniphier_efuse_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_uniphier-efuse.c_uniphier_efuse_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.nvmem_device = type { i32 }
%struct.nvmem_config = type { i32, i32, i32, %struct.device*, %struct.uniphier_efuse_priv*, i32, i32 }
%struct.uniphier_efuse_priv = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@uniphier_reg_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uniphier_efuse_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_efuse_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.nvmem_device*, align 8
  %7 = alloca %struct.nvmem_config, align 8
  %8 = alloca %struct.uniphier_efuse_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = bitcast %struct.nvmem_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 40, i1 false)
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.uniphier_efuse_priv* @devm_kzalloc(%struct.device* %12, i32 4, i32 %13)
  store %struct.uniphier_efuse_priv* %14, %struct.uniphier_efuse_priv** %8, align 8
  %15 = load %struct.uniphier_efuse_priv*, %struct.uniphier_efuse_priv** %8, align 8
  %16 = icmp ne %struct.uniphier_efuse_priv* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %56

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load i32, i32* @IORESOURCE_MEM, align 4
  %23 = call %struct.resource* @platform_get_resource(%struct.platform_device* %21, i32 %22, i32 0)
  store %struct.resource* %23, %struct.resource** %5, align 8
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load %struct.resource*, %struct.resource** %5, align 8
  %26 = call i32 @devm_ioremap_resource(%struct.device* %24, %struct.resource* %25)
  %27 = load %struct.uniphier_efuse_priv*, %struct.uniphier_efuse_priv** %8, align 8
  %28 = getelementptr inbounds %struct.uniphier_efuse_priv, %struct.uniphier_efuse_priv* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.uniphier_efuse_priv*, %struct.uniphier_efuse_priv** %8, align 8
  %30 = getelementptr inbounds %struct.uniphier_efuse_priv, %struct.uniphier_efuse_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @IS_ERR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %20
  %35 = load %struct.uniphier_efuse_priv*, %struct.uniphier_efuse_priv** %8, align 8
  %36 = getelementptr inbounds %struct.uniphier_efuse_priv, %struct.uniphier_efuse_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %56

39:                                               ; preds = %20
  %40 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %7, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %7, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %7, i32 0, i32 2
  store i32 1, i32* %42, align 8
  %43 = load i32, i32* @uniphier_reg_read, align 4
  %44 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %7, i32 0, i32 6
  store i32 %43, i32* %44, align 4
  %45 = load %struct.resource*, %struct.resource** %5, align 8
  %46 = call i32 @resource_size(%struct.resource* %45)
  %47 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %7, i32 0, i32 5
  store i32 %46, i32* %47, align 8
  %48 = load %struct.uniphier_efuse_priv*, %struct.uniphier_efuse_priv** %8, align 8
  %49 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %7, i32 0, i32 4
  store %struct.uniphier_efuse_priv* %48, %struct.uniphier_efuse_priv** %49, align 8
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %7, i32 0, i32 3
  store %struct.device* %50, %struct.device** %51, align 8
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = call %struct.nvmem_device* @devm_nvmem_register(%struct.device* %52, %struct.nvmem_config* %7)
  store %struct.nvmem_device* %53, %struct.nvmem_device** %6, align 8
  %54 = load %struct.nvmem_device*, %struct.nvmem_device** %6, align 8
  %55 = call i32 @PTR_ERR_OR_ZERO(%struct.nvmem_device* %54)
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %39, %34, %17
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.uniphier_efuse_priv* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #2

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @resource_size(%struct.resource*) #2

declare dso_local %struct.nvmem_device* @devm_nvmem_register(%struct.device*, %struct.nvmem_config*) #2

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.nvmem_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
