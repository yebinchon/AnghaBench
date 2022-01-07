; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_read_rx_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_read_rx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_lpspi_data = type { i32 (%struct.fsl_lpspi_data*)*, i64 }

@IMX7ULP_RSR = common dso_local global i64 0, align 8
@RSR_RXEMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_lpspi_data*)* @fsl_lpspi_read_rx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_lpspi_read_rx_fifo(%struct.fsl_lpspi_data* %0) #0 {
  %2 = alloca %struct.fsl_lpspi_data*, align 8
  store %struct.fsl_lpspi_data* %0, %struct.fsl_lpspi_data** %2, align 8
  br label %3

3:                                                ; preds = %14, %1
  %4 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %5 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @IMX7ULP_RSR, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  %10 = load i32, i32* @RSR_RXEMPTY, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %16 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %15, i32 0, i32 0
  %17 = load i32 (%struct.fsl_lpspi_data*)*, i32 (%struct.fsl_lpspi_data*)** %16, align 8
  %18 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %19 = call i32 %17(%struct.fsl_lpspi_data* %18)
  br label %3

20:                                               ; preds = %3
  ret void
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
