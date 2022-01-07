; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_handle_cpu_based_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_handle_cpu_based_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_spi_data = type { i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.spi_transfer* }
%struct.spi_transfer = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"CpuXfer ERROR bit set 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"CpuXfer 0x%08x:0x%08x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@DATA_DIR_RX = common dso_local global i32 0, align 4
@DATA_DIR_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_spi_data*)* @handle_cpu_based_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_cpu_based_xfer(%struct.tegra_spi_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_spi_data*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca i64, align 8
  store %struct.tegra_spi_data* %0, %struct.tegra_spi_data** %3, align 8
  %6 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %7 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %6, i32 0, i32 14
  %8 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  store %struct.spi_transfer* %8, %struct.spi_transfer** %4, align 8
  %9 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %10 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %9, i32 0, i32 4
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %14 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %13, i32 0, i32 13
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %19 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %18, i32 0, i32 12
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %17, %1
  %23 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %24 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %27 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %26, i32 0, i32 11
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %31 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %34 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %33, i32 0, i32 9
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %37 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %41 = call i32 @tegra_spi_dump_regs(%struct.tegra_spi_data* %40)
  %42 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %43 = call i32 @tegra_spi_flush_fifos(%struct.tegra_spi_data* %42)
  %44 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %45 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %44, i32 0, i32 6
  %46 = call i32 @complete(i32* %45)
  %47 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %48 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %47, i32 0, i32 4
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %52 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @reset_control_assert(i32 %53)
  %55 = call i32 @udelay(i32 2)
  %56 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %57 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @reset_control_deassert(i32 %58)
  %60 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %60, i32* %2, align 4
  br label %119

61:                                               ; preds = %17
  %62 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %63 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @DATA_DIR_RX, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %70 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %71 = call i32 @tegra_spi_read_rx_fifo_to_client_rxbuf(%struct.tegra_spi_data* %69, %struct.spi_transfer* %70)
  br label %72

72:                                               ; preds = %68, %61
  %73 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %74 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @DATA_DIR_TX, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %81 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %84 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  br label %91

85:                                               ; preds = %72
  %86 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %87 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %90 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %85, %79
  %92 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %93 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %96 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %94, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %91
  %100 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %101 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %100, i32 0, i32 6
  %102 = call i32 @complete(i32* %101)
  br label %113

103:                                              ; preds = %91
  %104 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %105 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %108 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %109 = call i32 @tegra_spi_calculate_curr_xfer_param(i32 %106, %struct.tegra_spi_data* %107, %struct.spi_transfer* %108)
  %110 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %111 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %112 = call i32 @tegra_spi_start_cpu_based_transfer(%struct.tegra_spi_data* %110, %struct.spi_transfer* %111)
  br label %113

113:                                              ; preds = %103, %99
  %114 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %115 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %114, i32 0, i32 4
  %116 = load i64, i64* %5, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* %115, i64 %116)
  %118 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %113, %22
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @tegra_spi_dump_regs(%struct.tegra_spi_data*) #1

declare dso_local i32 @tegra_spi_flush_fifos(%struct.tegra_spi_data*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @tegra_spi_read_rx_fifo_to_client_rxbuf(%struct.tegra_spi_data*, %struct.spi_transfer*) #1

declare dso_local i32 @tegra_spi_calculate_curr_xfer_param(i32, %struct.tegra_spi_data*, %struct.spi_transfer*) #1

declare dso_local i32 @tegra_spi_start_cpu_based_transfer(%struct.tegra_spi_data*, %struct.spi_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
