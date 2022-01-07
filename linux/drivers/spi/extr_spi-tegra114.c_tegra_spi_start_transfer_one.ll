; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_tegra_spi_start_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_tegra_spi_start_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.spi_transfer = type { i64, i64, i64, i64 }
%struct.tegra_spi_data = type { i32, i32, i32, i32, i64 }

@SPI_NBITS_DUAL = common dso_local global i64 0, align 8
@SPI_BOTH_EN_BIT = common dso_local global i32 0, align 4
@SPI_PACKED = common dso_local global i32 0, align 4
@SPI_CS_SEL_MASK = common dso_local global i32 0, align 4
@SPI_TX_EN = common dso_local global i32 0, align 4
@SPI_RX_EN = common dso_local global i32 0, align 4
@DATA_DIR_RX = common dso_local global i32 0, align 4
@DATA_DIR_TX = common dso_local global i32 0, align 4
@SPI_COMMAND1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"The def 0x%x and written 0x%x\0A\00", align 1
@SPI_FIFO_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*, i32)* @tegra_spi_start_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_spi_start_transfer_one(%struct.spi_device* %0, %struct.spi_transfer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tegra_spi_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.tegra_spi_data* @spi_master_get_devdata(i32 %13)
  store %struct.tegra_spi_data* %14, %struct.tegra_spi_data** %8, align 8
  %15 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %16 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %8, align 8
  %17 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %18 = call i32 @tegra_spi_calculate_curr_xfer_param(%struct.spi_device* %15, %struct.tegra_spi_data* %16, %struct.spi_transfer* %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SPI_NBITS_DUAL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %3
  %25 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SPI_NBITS_DUAL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24, %3
  %31 = load i32, i32* @SPI_BOTH_EN_BIT, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %39

34:                                               ; preds = %24
  %35 = load i32, i32* @SPI_BOTH_EN_BIT, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %34, %30
  %40 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %8, align 8
  %41 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @SPI_PACKED, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %53

48:                                               ; preds = %39
  %49 = load i32, i32* @SPI_PACKED, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %48, %44
  %54 = load i32, i32* @SPI_CS_SEL_MASK, align 4
  %55 = load i32, i32* @SPI_TX_EN, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @SPI_RX_EN, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %8, align 8
  %63 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %62, i32 0, i32 3
  store i32 0, i32* %63, align 4
  %64 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %65 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %53
  %69 = load i32, i32* @SPI_RX_EN, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* @DATA_DIR_RX, align 4
  %73 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %8, align 8
  %74 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %68, %53
  %78 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %79 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load i32, i32* @SPI_TX_EN, align 4
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* @DATA_DIR_TX, align 4
  %87 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %8, align 8
  %88 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %82, %77
  %92 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %93 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @SPI_CS_SEL(i32 %94)
  %96 = load i32, i32* %7, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %7, align 4
  %98 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %8, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @SPI_COMMAND1, align 4
  %101 = call i32 @tegra_spi_writel(%struct.tegra_spi_data* %98, i32 %99, i32 %100)
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %8, align 8
  %104 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %8, align 8
  %106 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %8, align 8
  %109 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @dev_dbg(i32 %107, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %8, align 8
  %114 = call i32 @tegra_spi_flush_fifos(%struct.tegra_spi_data* %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %91
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %4, align 4
  br label %133

119:                                              ; preds = %91
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @SPI_FIFO_DEPTH, align 4
  %122 = icmp ugt i32 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %8, align 8
  %125 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %126 = call i32 @tegra_spi_start_dma_based_transfer(%struct.tegra_spi_data* %124, %struct.spi_transfer* %125)
  store i32 %126, i32* %10, align 4
  br label %131

127:                                              ; preds = %119
  %128 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %8, align 8
  %129 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %130 = call i32 @tegra_spi_start_cpu_based_transfer(%struct.tegra_spi_data* %128, %struct.spi_transfer* %129)
  store i32 %130, i32* %10, align 4
  br label %131

131:                                              ; preds = %127, %123
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %131, %117
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local %struct.tegra_spi_data* @spi_master_get_devdata(i32) #1

declare dso_local i32 @tegra_spi_calculate_curr_xfer_param(%struct.spi_device*, %struct.tegra_spi_data*, %struct.spi_transfer*) #1

declare dso_local i32 @SPI_CS_SEL(i32) #1

declare dso_local i32 @tegra_spi_writel(%struct.tegra_spi_data*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @tegra_spi_flush_fifos(%struct.tegra_spi_data*) #1

declare dso_local i32 @tegra_spi_start_dma_based_transfer(%struct.tegra_spi_data*, %struct.spi_transfer*) #1

declare dso_local i32 @tegra_spi_start_cpu_based_transfer(%struct.tegra_spi_data*, %struct.spi_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
