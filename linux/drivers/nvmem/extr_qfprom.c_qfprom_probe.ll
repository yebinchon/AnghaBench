; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_qfprom.c_qfprom_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_qfprom.c_qfprom_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.qfprom_priv*, %struct.device*, i32 }
%struct.qfprom_priv = type { i32 }
%struct.device = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.resource = type { i32 }
%struct.nvmem_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@econfig = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qfprom_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qfprom_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.nvmem_device*, align 8
  %7 = alloca %struct.qfprom_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.qfprom_priv* @devm_kzalloc(%struct.device* %10, i32 4, i32 %11)
  store %struct.qfprom_priv* %12, %struct.qfprom_priv** %7, align 8
  %13 = load %struct.qfprom_priv*, %struct.qfprom_priv** %7, align 8
  %14 = icmp ne %struct.qfprom_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %46

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load i32, i32* @IORESOURCE_MEM, align 4
  %21 = call %struct.resource* @platform_get_resource(%struct.platform_device* %19, i32 %20, i32 0)
  store %struct.resource* %21, %struct.resource** %5, align 8
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.resource*, %struct.resource** %5, align 8
  %24 = call i32 @devm_ioremap_resource(%struct.device* %22, %struct.resource* %23)
  %25 = load %struct.qfprom_priv*, %struct.qfprom_priv** %7, align 8
  %26 = getelementptr inbounds %struct.qfprom_priv, %struct.qfprom_priv* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.qfprom_priv*, %struct.qfprom_priv** %7, align 8
  %28 = getelementptr inbounds %struct.qfprom_priv, %struct.qfprom_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %18
  %33 = load %struct.qfprom_priv*, %struct.qfprom_priv** %7, align 8
  %34 = getelementptr inbounds %struct.qfprom_priv, %struct.qfprom_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %46

37:                                               ; preds = %18
  %38 = load %struct.resource*, %struct.resource** %5, align 8
  %39 = call i32 @resource_size(%struct.resource* %38)
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @econfig, i32 0, i32 2), align 8
  %40 = load %struct.device*, %struct.device** %4, align 8
  store %struct.device* %40, %struct.device** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @econfig, i32 0, i32 1), align 8
  %41 = load %struct.qfprom_priv*, %struct.qfprom_priv** %7, align 8
  store %struct.qfprom_priv* %41, %struct.qfprom_priv** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @econfig, i32 0, i32 0), align 8
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call %struct.nvmem_device* @devm_nvmem_register(%struct.device* %42, %struct.TYPE_3__* @econfig)
  store %struct.nvmem_device* %43, %struct.nvmem_device** %6, align 8
  %44 = load %struct.nvmem_device*, %struct.nvmem_device** %6, align 8
  %45 = call i32 @PTR_ERR_OR_ZERO(%struct.nvmem_device* %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %37, %32, %15
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.qfprom_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.nvmem_device* @devm_nvmem_register(%struct.device*, %struct.TYPE_3__*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.nvmem_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
