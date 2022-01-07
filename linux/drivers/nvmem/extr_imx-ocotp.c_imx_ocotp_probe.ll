; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_imx-ocotp.c_imx_ocotp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_imx-ocotp.c_imx_ocotp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.ocotp_priv*, %struct.device* }
%struct.ocotp_priv = type { %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32, %struct.device* }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.nvmem_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@imx_ocotp_nvmem_config = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_ocotp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_ocotp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ocotp_priv*, align 8
  %6 = alloca %struct.nvmem_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ocotp_priv* @devm_kzalloc(%struct.device* %9, i32 32, i32 %10)
  store %struct.ocotp_priv* %11, %struct.ocotp_priv** %5, align 8
  %12 = load %struct.ocotp_priv*, %struct.ocotp_priv** %5, align 8
  %13 = icmp ne %struct.ocotp_priv* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %70

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.ocotp_priv*, %struct.ocotp_priv** %5, align 8
  %20 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %19, i32 0, i32 4
  store %struct.device* %18, %struct.device** %20, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %21, i32 0)
  %23 = load %struct.ocotp_priv*, %struct.ocotp_priv** %5, align 8
  %24 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ocotp_priv*, %struct.ocotp_priv** %5, align 8
  %26 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %17
  %31 = load %struct.ocotp_priv*, %struct.ocotp_priv** %5, align 8
  %32 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @PTR_ERR(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %70

35:                                               ; preds = %17
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32 @devm_clk_get(%struct.device* %36, i32* null)
  %38 = load %struct.ocotp_priv*, %struct.ocotp_priv** %5, align 8
  %39 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ocotp_priv*, %struct.ocotp_priv** %5, align 8
  %41 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @IS_ERR(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load %struct.ocotp_priv*, %struct.ocotp_priv** %5, align 8
  %47 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @PTR_ERR(i32 %48)
  store i32 %49, i32* %2, align 4
  br label %70

50:                                               ; preds = %35
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call %struct.TYPE_4__* @of_device_get_match_data(%struct.device* %52)
  %54 = load %struct.ocotp_priv*, %struct.ocotp_priv** %5, align 8
  %55 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %54, i32 0, i32 1
  store %struct.TYPE_4__* %53, %struct.TYPE_4__** %55, align 8
  %56 = load %struct.ocotp_priv*, %struct.ocotp_priv** %5, align 8
  %57 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 4, %60
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @imx_ocotp_nvmem_config, i32 0, i32 0), align 8
  %62 = load %struct.device*, %struct.device** %4, align 8
  store %struct.device* %62, %struct.device** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @imx_ocotp_nvmem_config, i32 0, i32 2), align 8
  %63 = load %struct.ocotp_priv*, %struct.ocotp_priv** %5, align 8
  store %struct.ocotp_priv* %63, %struct.ocotp_priv** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @imx_ocotp_nvmem_config, i32 0, i32 1), align 8
  %64 = load %struct.ocotp_priv*, %struct.ocotp_priv** %5, align 8
  %65 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %64, i32 0, i32 0
  store %struct.TYPE_5__* @imx_ocotp_nvmem_config, %struct.TYPE_5__** %65, align 8
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = call %struct.nvmem_device* @devm_nvmem_register(%struct.device* %66, %struct.TYPE_5__* @imx_ocotp_nvmem_config)
  store %struct.nvmem_device* %67, %struct.nvmem_device** %6, align 8
  %68 = load %struct.nvmem_device*, %struct.nvmem_device** %6, align 8
  %69 = call i32 @PTR_ERR_OR_ZERO(%struct.nvmem_device* %68)
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %50, %45, %30, %14
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.ocotp_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local %struct.TYPE_4__* @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.nvmem_device* @devm_nvmem_register(%struct.device*, %struct.TYPE_5__*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.nvmem_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
