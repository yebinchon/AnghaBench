; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xilinx.c_xilinx_spi_chipselect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xilinx.c_xilinx_spi_chipselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.xilinx_spi = type { i32, i32 (i64)*, i64, i32 (i32, i64)* }

@BITBANG_CS_INACTIVE = common dso_local global i32 0, align 4
@XSPI_SSR_OFFSET = common dso_local global i64 0, align 8
@XSPI_CR_OFFSET = common dso_local global i64 0, align 8
@XSPI_CR_MODE_MASK = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@XSPI_CR_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@XSPI_CR_CPOL = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@XSPI_CR_LSB_FIRST = common dso_local global i32 0, align 4
@SPI_LOOP = common dso_local global i32 0, align 4
@XSPI_CR_LOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @xilinx_spi_chipselect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xilinx_spi_chipselect(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xilinx_spi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.xilinx_spi* @spi_master_get_devdata(i32 %10)
  store %struct.xilinx_spi* %11, %struct.xilinx_spi** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @BITBANG_CS_INACTIVE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load %struct.xilinx_spi*, %struct.xilinx_spi** %5, align 8
  %17 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %16, i32 0, i32 3
  %18 = load i32 (i32, i64)*, i32 (i32, i64)** %17, align 8
  %19 = load %struct.xilinx_spi*, %struct.xilinx_spi** %5, align 8
  %20 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.xilinx_spi*, %struct.xilinx_spi** %5, align 8
  %23 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @XSPI_SSR_OFFSET, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 %18(i32 %21, i64 %26)
  br label %114

28:                                               ; preds = %2
  %29 = load %struct.xilinx_spi*, %struct.xilinx_spi** %5, align 8
  %30 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %29, i32 0, i32 1
  %31 = load i32 (i64)*, i32 (i64)** %30, align 8
  %32 = load %struct.xilinx_spi*, %struct.xilinx_spi** %5, align 8
  %33 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @XSPI_CR_OFFSET, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 %31(i64 %36)
  %38 = load i32, i32* @XSPI_CR_MODE_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  store i32 %40, i32* %6, align 4
  %41 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %42 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SPI_CPHA, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %28
  %48 = load i32, i32* @XSPI_CR_CPHA, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %47, %28
  %52 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %53 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SPI_CPOL, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* @XSPI_CR_CPOL, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %58, %51
  %63 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %64 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SPI_LSB_FIRST, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i32, i32* @XSPI_CR_LSB_FIRST, align 4
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %69, %62
  %74 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %75 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SPI_LOOP, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load i32, i32* @XSPI_CR_LOOP, align 4
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %80, %73
  %85 = load %struct.xilinx_spi*, %struct.xilinx_spi** %5, align 8
  %86 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %85, i32 0, i32 3
  %87 = load i32 (i32, i64)*, i32 (i32, i64)** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.xilinx_spi*, %struct.xilinx_spi** %5, align 8
  %90 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @XSPI_CR_OFFSET, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 %87(i32 %88, i64 %93)
  %95 = load %struct.xilinx_spi*, %struct.xilinx_spi** %5, align 8
  %96 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %7, align 4
  %98 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %99 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @BIT(i32 %100)
  %102 = load i32, i32* %7, align 4
  %103 = xor i32 %102, %101
  store i32 %103, i32* %7, align 4
  %104 = load %struct.xilinx_spi*, %struct.xilinx_spi** %5, align 8
  %105 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %104, i32 0, i32 3
  %106 = load i32 (i32, i64)*, i32 (i32, i64)** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.xilinx_spi*, %struct.xilinx_spi** %5, align 8
  %109 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @XSPI_SSR_OFFSET, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 %106(i32 %107, i64 %112)
  br label %114

114:                                              ; preds = %84, %15
  ret void
}

declare dso_local %struct.xilinx_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
