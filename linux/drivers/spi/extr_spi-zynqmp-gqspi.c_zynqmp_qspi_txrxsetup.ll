; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynqmp-gqspi.c_zynqmp_qspi_txrxsetup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynqmp-gqspi.c_zynqmp_qspi_txrxsetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zynqmp_qspi = type { i64, i64, i64, i32*, i32* }
%struct.spi_transfer = type { i64, i32, i32 }

@GQSPI_GENFIFO_RX = common dso_local global i32 0, align 4
@GQSPI_GENFIFO_DATA_XFER = common dso_local global i32 0, align 4
@GQSPI_GENFIFO_TX = common dso_local global i32 0, align 4
@GQSPI_MODE_DMA = common dso_local global i64 0, align 8
@GQSPI_CONFIG_OFST = common dso_local global i32 0, align 4
@GQSPI_CFG_MODE_EN_MASK = common dso_local global i32 0, align 4
@GQSPI_MODE_IO = common dso_local global i64 0, align 8
@GQSPI_TXD_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zynqmp_qspi*, %struct.spi_transfer*, i32*)* @zynqmp_qspi_txrxsetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zynqmp_qspi_txrxsetup(%struct.zynqmp_qspi* %0, %struct.spi_transfer* %1, i32* %2) #0 {
  %4 = alloca %struct.zynqmp_qspi*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.zynqmp_qspi* %0, %struct.zynqmp_qspi** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %4, align 8
  %9 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %8, i32 0, i32 4
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %70

12:                                               ; preds = %3
  %13 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %4, align 8
  %14 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %70

17:                                               ; preds = %12
  %18 = load i32, i32* @GQSPI_GENFIFO_RX, align 4
  %19 = xor i32 %18, -1
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %19
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @GQSPI_GENFIFO_DATA_XFER, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %23
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @GQSPI_GENFIFO_TX, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %27
  store i32 %30, i32* %28, align 4
  %31 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %4, align 8
  %32 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %33 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @zynqmp_qspi_selectspimode(%struct.zynqmp_qspi* %31, i32 %34)
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  %39 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %40 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %4, align 8
  %43 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %4, align 8
  %45 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @GQSPI_MODE_DMA, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %17
  %50 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %4, align 8
  %51 = load i32, i32* @GQSPI_CONFIG_OFST, align 4
  %52 = call i32 @zynqmp_gqspi_read(%struct.zynqmp_qspi* %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* @GQSPI_CFG_MODE_EN_MASK, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %4, align 8
  %58 = load i32, i32* @GQSPI_CONFIG_OFST, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %57, i32 %58, i32 %59)
  %61 = load i64, i64* @GQSPI_MODE_IO, align 8
  %62 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %4, align 8
  %63 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %49, %17
  %65 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %4, align 8
  %66 = load i32, i32* @GQSPI_TXD_DEPTH, align 4
  %67 = call i32 @zynqmp_qspi_filltxfifo(%struct.zynqmp_qspi* %65, i32 %66)
  %68 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %4, align 8
  %69 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  br label %112

70:                                               ; preds = %12, %3
  %71 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %4, align 8
  %72 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %111

75:                                               ; preds = %70
  %76 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %4, align 8
  %77 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %111

80:                                               ; preds = %75
  %81 = load i32, i32* @GQSPI_GENFIFO_TX, align 4
  %82 = xor i32 %81, -1
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %82
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* @GQSPI_GENFIFO_DATA_XFER, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %86
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* @GQSPI_GENFIFO_RX, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %90
  store i32 %93, i32* %91, align 4
  %94 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %4, align 8
  %95 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %96 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @zynqmp_qspi_selectspimode(%struct.zynqmp_qspi* %94, i32 %97)
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %98
  store i32 %101, i32* %99, align 4
  %102 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %4, align 8
  %103 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %102, i32 0, i32 2
  store i64 0, i64* %103, align 8
  %104 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %105 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %4, align 8
  %108 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %4, align 8
  %110 = call i32 @zynq_qspi_setuprxdma(%struct.zynqmp_qspi* %109)
  br label %111

111:                                              ; preds = %80, %75, %70
  br label %112

112:                                              ; preds = %111, %64
  ret void
}

declare dso_local i32 @zynqmp_qspi_selectspimode(%struct.zynqmp_qspi*, i32) #1

declare dso_local i32 @zynqmp_gqspi_read(%struct.zynqmp_qspi*, i32) #1

declare dso_local i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi*, i32, i32) #1

declare dso_local i32 @zynqmp_qspi_filltxfifo(%struct.zynqmp_qspi*, i32) #1

declare dso_local i32 @zynq_qspi_setuprxdma(%struct.zynqmp_qspi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
