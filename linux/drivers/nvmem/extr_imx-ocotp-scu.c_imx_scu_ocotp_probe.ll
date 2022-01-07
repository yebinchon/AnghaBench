; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_imx-ocotp-scu.c_imx_scu_ocotp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_imx-ocotp-scu.c_imx_scu_ocotp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.ocotp_priv*, %struct.device* }
%struct.ocotp_priv = type { %struct.TYPE_4__*, %struct.device*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.nvmem_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@imx_scu_ocotp_nvmem_config = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_scu_ocotp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_scu_ocotp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ocotp_priv*, align 8
  %6 = alloca %struct.nvmem_device*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ocotp_priv* @devm_kzalloc(%struct.device* %10, i32 24, i32 %11)
  store %struct.ocotp_priv* %12, %struct.ocotp_priv** %5, align 8
  %13 = load %struct.ocotp_priv*, %struct.ocotp_priv** %5, align 8
  %14 = icmp ne %struct.ocotp_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %46

18:                                               ; preds = %1
  %19 = load %struct.ocotp_priv*, %struct.ocotp_priv** %5, align 8
  %20 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %19, i32 0, i32 2
  %21 = call i32 @imx_scu_get_handle(i32* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %46

26:                                               ; preds = %18
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call %struct.TYPE_4__* @of_device_get_match_data(%struct.device* %27)
  %29 = load %struct.ocotp_priv*, %struct.ocotp_priv** %5, align 8
  %30 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %29, i32 0, i32 0
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %30, align 8
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load %struct.ocotp_priv*, %struct.ocotp_priv** %5, align 8
  %33 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %32, i32 0, i32 1
  store %struct.device* %31, %struct.device** %33, align 8
  %34 = load %struct.ocotp_priv*, %struct.ocotp_priv** %5, align 8
  %35 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 4, %38
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @imx_scu_ocotp_nvmem_config, i32 0, i32 0), align 8
  %40 = load %struct.device*, %struct.device** %4, align 8
  store %struct.device* %40, %struct.device** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @imx_scu_ocotp_nvmem_config, i32 0, i32 2), align 8
  %41 = load %struct.ocotp_priv*, %struct.ocotp_priv** %5, align 8
  store %struct.ocotp_priv* %41, %struct.ocotp_priv** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @imx_scu_ocotp_nvmem_config, i32 0, i32 1), align 8
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call %struct.nvmem_device* @devm_nvmem_register(%struct.device* %42, %struct.TYPE_5__* @imx_scu_ocotp_nvmem_config)
  store %struct.nvmem_device* %43, %struct.nvmem_device** %6, align 8
  %44 = load %struct.nvmem_device*, %struct.nvmem_device** %6, align 8
  %45 = call i32 @PTR_ERR_OR_ZERO(%struct.nvmem_device* %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %26, %24, %15
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.ocotp_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @imx_scu_get_handle(i32*) #1

declare dso_local %struct.TYPE_4__* @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.nvmem_device* @devm_nvmem_register(%struct.device*, %struct.TYPE_5__*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.nvmem_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
