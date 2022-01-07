; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-slave-mt27xx.c_mtk_spi_slave_prepare_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-slave-mt27xx.c_mtk_spi_slave_prepare_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32 }
%struct.spi_message = type { %struct.spi_device* }
%struct.spi_device = type { i32 }
%struct.mtk_spi_slave = type { i64 }

@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPIS_CFG_REG = common dso_local global i64 0, align 8
@SPIS_CPHA = common dso_local global i32 0, align 4
@SPIS_CPOL = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SPIS_TXMSBF = common dso_local global i32 0, align 4
@SPIS_RXMSBF = common dso_local global i32 0, align 4
@SPIS_TX_ENDIAN = common dso_local global i32 0, align 4
@SPIS_RX_ENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*, %struct.spi_message*)* @mtk_spi_slave_prepare_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_spi_slave_prepare_message(%struct.spi_controller* %0, %struct.spi_message* %1) #0 {
  %3 = alloca %struct.spi_controller*, align 8
  %4 = alloca %struct.spi_message*, align 8
  %5 = alloca %struct.mtk_spi_slave*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spi_controller* %0, %struct.spi_controller** %3, align 8
  store %struct.spi_message* %1, %struct.spi_message** %4, align 8
  %10 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %11 = call %struct.mtk_spi_slave* @spi_controller_get_devdata(%struct.spi_controller* %10)
  store %struct.mtk_spi_slave* %11, %struct.mtk_spi_slave** %5, align 8
  %12 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %13 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %12, i32 0, i32 0
  %14 = load %struct.spi_device*, %struct.spi_device** %13, align 8
  store %struct.spi_device* %14, %struct.spi_device** %6, align 8
  %15 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SPI_CPHA, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  store i32 %22, i32* %7, align 4
  %23 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SPI_CPOL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 0
  store i32 %30, i32* %8, align 4
  %31 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %5, align 8
  %32 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SPIS_CFG_REG, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl(i64 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %2
  %40 = load i32, i32* @SPIS_CPHA, align 4
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %48

43:                                               ; preds = %2
  %44 = load i32, i32* @SPIS_CPHA, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %43, %39
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* @SPIS_CPOL, align 4
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  br label %60

55:                                               ; preds = %48
  %56 = load i32, i32* @SPIS_CPOL, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %55, %51
  %61 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %62 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SPI_LSB_FIRST, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load i32, i32* @SPIS_TXMSBF, align 4
  %69 = load i32, i32* @SPIS_RXMSBF, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %9, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %9, align 4
  br label %80

74:                                               ; preds = %60
  %75 = load i32, i32* @SPIS_TXMSBF, align 4
  %76 = load i32, i32* @SPIS_RXMSBF, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* %9, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %74, %67
  %81 = load i32, i32* @SPIS_TX_ENDIAN, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %9, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* @SPIS_RX_ENDIAN, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %9, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %5, align 8
  %91 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SPIS_CFG_REG, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @writel(i32 %89, i64 %94)
  ret i32 0
}

declare dso_local %struct.mtk_spi_slave* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
