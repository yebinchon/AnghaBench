; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dw-mmio.c_dw_spi_mscc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dw-mmio.c_dw_spi_mscc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dw_spi_mmio = type { %struct.dw_spi_mscc*, %struct.TYPE_2__ }
%struct.dw_spi_mscc = type { i64, i64 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"SPI_MST region map failed\0A\00", align 1
@MSCC_SPI_MST_SW_MODE = common dso_local global i64 0, align 8
@MSCC_CPU_SYSTEM_CTRL_GENERAL_CTRL = common dso_local global i32 0, align 4
@MSCC_IF_SI_OWNER_MASK = common dso_local global i32 0, align 4
@MSCC_IF_SI_OWNER_SIMC = common dso_local global i32 0, align 4
@dw_spi_mscc_set_cs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.dw_spi_mmio*, i8*, i32)* @dw_spi_mscc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_spi_mscc_init(%struct.platform_device* %0, %struct.dw_spi_mmio* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.dw_spi_mmio*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dw_spi_mscc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %6, align 8
  store %struct.dw_spi_mmio* %1, %struct.dw_spi_mmio** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.dw_spi_mscc* @devm_kzalloc(i32* %12, i32 16, i32 %13)
  store %struct.dw_spi_mscc* %14, %struct.dw_spi_mscc** %10, align 8
  %15 = load %struct.dw_spi_mscc*, %struct.dw_spi_mscc** %10, align 8
  %16 = icmp ne %struct.dw_spi_mscc* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %78

20:                                               ; preds = %4
  %21 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %22 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %21, i32 1)
  %23 = load %struct.dw_spi_mscc*, %struct.dw_spi_mscc** %10, align 8
  %24 = getelementptr inbounds %struct.dw_spi_mscc, %struct.dw_spi_mscc* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load %struct.dw_spi_mscc*, %struct.dw_spi_mscc** %10, align 8
  %26 = getelementptr inbounds %struct.dw_spi_mscc, %struct.dw_spi_mscc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @IS_ERR(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %20
  %31 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.dw_spi_mscc*, %struct.dw_spi_mscc** %10, align 8
  %35 = getelementptr inbounds %struct.dw_spi_mscc, %struct.dw_spi_mscc* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @PTR_ERR(i64 %36)
  store i32 %37, i32* %5, align 4
  br label %78

38:                                               ; preds = %20
  %39 = load i8*, i8** %8, align 8
  %40 = call i64 @syscon_regmap_lookup_by_compatible(i8* %39)
  %41 = load %struct.dw_spi_mscc*, %struct.dw_spi_mscc** %10, align 8
  %42 = getelementptr inbounds %struct.dw_spi_mscc, %struct.dw_spi_mscc* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.dw_spi_mscc*, %struct.dw_spi_mscc** %10, align 8
  %44 = getelementptr inbounds %struct.dw_spi_mscc, %struct.dw_spi_mscc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @IS_ERR(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load %struct.dw_spi_mscc*, %struct.dw_spi_mscc** %10, align 8
  %50 = getelementptr inbounds %struct.dw_spi_mscc, %struct.dw_spi_mscc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @PTR_ERR(i64 %51)
  store i32 %52, i32* %5, align 4
  br label %78

53:                                               ; preds = %38
  %54 = load %struct.dw_spi_mscc*, %struct.dw_spi_mscc** %10, align 8
  %55 = getelementptr inbounds %struct.dw_spi_mscc, %struct.dw_spi_mscc* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MSCC_SPI_MST_SW_MODE, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 0, i64 %58)
  %60 = load %struct.dw_spi_mscc*, %struct.dw_spi_mscc** %10, align 8
  %61 = getelementptr inbounds %struct.dw_spi_mscc, %struct.dw_spi_mscc* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @MSCC_CPU_SYSTEM_CTRL_GENERAL_CTRL, align 4
  %64 = load i32, i32* @MSCC_IF_SI_OWNER_MASK, align 4
  %65 = load i32, i32* %9, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* @MSCC_IF_SI_OWNER_SIMC, align 4
  %68 = load i32, i32* %9, align 4
  %69 = shl i32 %67, %68
  %70 = call i32 @regmap_update_bits(i64 %62, i32 %63, i32 %66, i32 %69)
  %71 = load i32, i32* @dw_spi_mscc_set_cs, align 4
  %72 = load %struct.dw_spi_mmio*, %struct.dw_spi_mmio** %7, align 8
  %73 = getelementptr inbounds %struct.dw_spi_mmio, %struct.dw_spi_mmio* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.dw_spi_mscc*, %struct.dw_spi_mscc** %10, align 8
  %76 = load %struct.dw_spi_mmio*, %struct.dw_spi_mmio** %7, align 8
  %77 = getelementptr inbounds %struct.dw_spi_mmio, %struct.dw_spi_mmio* %76, i32 0, i32 0
  store %struct.dw_spi_mscc* %75, %struct.dw_spi_mscc** %77, align 8
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %53, %48, %30, %17
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.dw_spi_mscc* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @syscon_regmap_lookup_by_compatible(i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @regmap_update_bits(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
