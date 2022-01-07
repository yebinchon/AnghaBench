; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynq-qspi.c_zynq_qspi_config_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynq-qspi.c_zynq_qspi_config_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zynq_qspi = type { i32 }
%struct.spi_device = type { i32, i32 }

@ZYNQ_QSPI_BAUD_DIV_MAX = common dso_local global i32 0, align 4
@ZYNQ_QSPI_CONFIG_OFFSET = common dso_local global i32 0, align 4
@ZYNQ_QSPI_CONFIG_CPHA_MASK = common dso_local global i32 0, align 4
@ZYNQ_QSPI_CONFIG_CPOL_MASK = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@ZYNQ_QSPI_CONFIG_BDRATE_MASK = common dso_local global i32 0, align 4
@ZYNQ_QSPI_BAUD_DIV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zynq_qspi*, %struct.spi_device*)* @zynq_qspi_config_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynq_qspi_config_op(%struct.zynq_qspi* %0, %struct.spi_device* %1) #0 {
  %3 = alloca %struct.zynq_qspi*, align 8
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.zynq_qspi* %0, %struct.zynq_qspi** %3, align 8
  store %struct.spi_device* %1, %struct.spi_device** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %25, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @ZYNQ_QSPI_BAUD_DIV_MAX, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = load %struct.zynq_qspi*, %struct.zynq_qspi** %3, align 8
  %13 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @clk_get_rate(i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = shl i32 2, %16
  %18 = sdiv i32 %15, %17
  %19 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %18, %21
  br label %23

23:                                               ; preds = %11, %7
  %24 = phi i1 [ false, %7 ], [ %22, %11 ]
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %7

28:                                               ; preds = %23
  %29 = load %struct.zynq_qspi*, %struct.zynq_qspi** %3, align 8
  %30 = load i32, i32* @ZYNQ_QSPI_CONFIG_OFFSET, align 4
  %31 = call i32 @zynq_qspi_read(%struct.zynq_qspi* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @ZYNQ_QSPI_CONFIG_CPHA_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* @ZYNQ_QSPI_CONFIG_CPOL_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %40 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SPI_CPHA, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %28
  %46 = load i32, i32* @ZYNQ_QSPI_CONFIG_CPHA_MASK, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %45, %28
  %50 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %51 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SPI_CPOL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* @ZYNQ_QSPI_CONFIG_CPOL_MASK, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %49
  %61 = load i32, i32* @ZYNQ_QSPI_CONFIG_BDRATE_MASK, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @ZYNQ_QSPI_BAUD_DIV_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load %struct.zynq_qspi*, %struct.zynq_qspi** %3, align 8
  %71 = load i32, i32* @ZYNQ_QSPI_CONFIG_OFFSET, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @zynq_qspi_write(%struct.zynq_qspi* %70, i32 %71, i32 %72)
  ret i32 0
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @zynq_qspi_read(%struct.zynq_qspi*, i32) #1

declare dso_local i32 @zynq_qspi_write(%struct.zynq_qspi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
