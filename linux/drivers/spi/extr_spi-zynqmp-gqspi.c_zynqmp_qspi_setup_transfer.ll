; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynqmp-gqspi.c_zynqmp_qspi_setup_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynqmp-gqspi.c_zynqmp_qspi_setup_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.spi_transfer = type { i32 }
%struct.zynqmp_qspi = type { i32 }

@GQSPI_BAUD_DIV_MAX = common dso_local global i32 0, align 4
@GQSPI_BAUD_DIV_SHIFT = common dso_local global i32 0, align 4
@GQSPI_CONFIG_OFST = common dso_local global i32 0, align 4
@GQSPI_CFG_CLK_PHA_MASK = common dso_local global i32 0, align 4
@GQSPI_CFG_CLK_POL_MASK = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@GQSPI_CFG_BAUD_RATE_DIV_MASK = common dso_local global i32 0, align 4
@GQSPI_CFG_BAUD_RATE_DIV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @zynqmp_qspi_setup_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynqmp_qspi_setup_transfer(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.zynqmp_qspi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.zynqmp_qspi* @spi_master_get_devdata(i32 %12)
  store %struct.zynqmp_qspi* %13, %struct.zynqmp_qspi** %5, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %15 = icmp ne %struct.spi_transfer* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %5, align 8
  %26 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @clk_get_rate(i32 %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %43, %24
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @GQSPI_BAUD_DIV_MAX, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @GQSPI_BAUD_DIV_SHIFT, align 4
  %36 = load i32, i32* %9, align 4
  %37 = shl i32 %35, %36
  %38 = sdiv i32 %34, %37
  %39 = load i32, i32* %8, align 4
  %40 = icmp sgt i32 %38, %39
  br label %41

41:                                               ; preds = %33, %29
  %42 = phi i1 [ false, %29 ], [ %40, %33 ]
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %29

46:                                               ; preds = %41
  %47 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %5, align 8
  %48 = load i32, i32* @GQSPI_CONFIG_OFST, align 4
  %49 = call i32 @zynqmp_gqspi_read(%struct.zynqmp_qspi* %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* @GQSPI_CFG_CLK_PHA_MASK, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* @GQSPI_CFG_CLK_POL_MASK, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %58 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SPI_CPHA, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %46
  %64 = load i32, i32* @GQSPI_CFG_CLK_PHA_MASK, align 4
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %63, %46
  %68 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %69 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SPI_CPOL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i32, i32* @GQSPI_CFG_CLK_POL_MASK, align 4
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %74, %67
  %79 = load i32, i32* @GQSPI_CFG_BAUD_RATE_DIV_MASK, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %7, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @GQSPI_CFG_BAUD_RATE_DIV_SHIFT, align 4
  %85 = shl i32 %83, %84
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  %88 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %5, align 8
  %89 = load i32, i32* @GQSPI_CONFIG_OFST, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %88, i32 %89, i32 %90)
  ret i32 0
}

declare dso_local %struct.zynqmp_qspi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @zynqmp_gqspi_read(%struct.zynqmp_qspi*, i32) #1

declare dso_local i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
