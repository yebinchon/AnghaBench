; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-sflash.c_handle_cpu_based_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-sflash.c_handle_cpu_based_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_sflash_data = type { i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.spi_transfer* }
%struct.spi_transfer = type { i64 }

@SPI_BSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"CpuXfer ERROR bit set 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"CpuXfer 0x%08x:0x%08x\0A\00", align 1
@DATA_DIR_RX = common dso_local global i32 0, align 4
@DATA_DIR_TX = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_sflash_data*)* @handle_cpu_based_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_cpu_based_xfer(%struct.tegra_sflash_data* %0) #0 {
  %2 = alloca %struct.tegra_sflash_data*, align 8
  %3 = alloca %struct.spi_transfer*, align 8
  %4 = alloca i64, align 8
  store %struct.tegra_sflash_data* %0, %struct.tegra_sflash_data** %2, align 8
  %5 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %2, align 8
  %6 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %5, i32 0, i32 14
  %7 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  store %struct.spi_transfer* %7, %struct.spi_transfer** %3, align 8
  %8 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %2, align 8
  %9 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %8, i32 0, i32 5
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %2, align 8
  %13 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %12, i32 0, i32 13
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %1
  %17 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %2, align 8
  %18 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %17, i32 0, i32 12
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %2, align 8
  %23 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SPI_BSY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %21, %16, %1
  %29 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %2, align 8
  %30 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %29, i32 0, i32 11
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %2, align 8
  %33 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %2, align 8
  %37 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %36, i32 0, i32 11
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %2, align 8
  %40 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %2, align 8
  %43 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %42, i32 0, i32 9
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44)
  %46 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %2, align 8
  %47 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @reset_control_assert(i32 %48)
  %50 = call i32 @udelay(i32 2)
  %51 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %2, align 8
  %52 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @reset_control_deassert(i32 %53)
  %55 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %2, align 8
  %56 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %55, i32 0, i32 7
  %57 = call i32 @complete(i32* %56)
  br label %110

58:                                               ; preds = %21
  %59 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %2, align 8
  %60 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @DATA_DIR_RX, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %2, align 8
  %67 = load %struct.spi_transfer*, %struct.spi_transfer** %3, align 8
  %68 = call i32 @tegra_sflash_read_rx_fifo_to_client_rxbuf(%struct.tegra_sflash_data* %66, %struct.spi_transfer* %67)
  br label %69

69:                                               ; preds = %65, %58
  %70 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %2, align 8
  %71 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @DATA_DIR_TX, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %2, align 8
  %78 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %2, align 8
  %81 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  br label %88

82:                                               ; preds = %69
  %83 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %2, align 8
  %84 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %2, align 8
  %87 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %82, %76
  %89 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %2, align 8
  %90 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.spi_transfer*, %struct.spi_transfer** %3, align 8
  %93 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %91, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %88
  %97 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %2, align 8
  %98 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %97, i32 0, i32 7
  %99 = call i32 @complete(i32* %98)
  br label %110

100:                                              ; preds = %88
  %101 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %2, align 8
  %102 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %2, align 8
  %105 = load %struct.spi_transfer*, %struct.spi_transfer** %3, align 8
  %106 = call i32 @tegra_sflash_calculate_curr_xfer_param(i32 %103, %struct.tegra_sflash_data* %104, %struct.spi_transfer* %105)
  %107 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %2, align 8
  %108 = load %struct.spi_transfer*, %struct.spi_transfer** %3, align 8
  %109 = call i32 @tegra_sflash_start_cpu_based_transfer(%struct.tegra_sflash_data* %107, %struct.spi_transfer* %108)
  br label %110

110:                                              ; preds = %100, %96, %28
  %111 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %2, align 8
  %112 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %111, i32 0, i32 5
  %113 = load i64, i64* %4, align 8
  %114 = call i32 @spin_unlock_irqrestore(i32* %112, i64 %113)
  %115 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %115
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @tegra_sflash_read_rx_fifo_to_client_rxbuf(%struct.tegra_sflash_data*, %struct.spi_transfer*) #1

declare dso_local i32 @tegra_sflash_calculate_curr_xfer_param(i32, %struct.tegra_sflash_data*, %struct.spi_transfer*) #1

declare dso_local i32 @tegra_sflash_start_cpu_based_transfer(%struct.tegra_sflash_data*, %struct.spi_transfer*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
