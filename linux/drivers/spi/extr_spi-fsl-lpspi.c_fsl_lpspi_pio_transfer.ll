; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_pio_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_pio_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32 }
%struct.spi_transfer = type { i32, i32, i32 }
%struct.fsl_lpspi_data = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*, %struct.spi_transfer*)* @fsl_lpspi_pio_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_lpspi_pio_transfer(%struct.spi_controller* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_controller*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.fsl_lpspi_data*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_controller* %0, %struct.spi_controller** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %8 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %9 = call %struct.fsl_lpspi_data* @spi_controller_get_devdata(%struct.spi_controller* %8)
  store %struct.fsl_lpspi_data* %9, %struct.fsl_lpspi_data** %6, align 8
  %10 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %11 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %14 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %19 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %24 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %26 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %25, i32 0, i32 1
  %27 = call i32 @reinit_completion(i32* %26)
  %28 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %29 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %31 = call i32 @fsl_lpspi_write_tx_fifo(%struct.fsl_lpspi_data* %30)
  %32 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %33 = call i32 @fsl_lpspi_wait_for_completion(%struct.spi_controller* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %41

38:                                               ; preds = %2
  %39 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %40 = call i32 @fsl_lpspi_reset(%struct.fsl_lpspi_data* %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %36
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.fsl_lpspi_data* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @fsl_lpspi_write_tx_fifo(%struct.fsl_lpspi_data*) #1

declare dso_local i32 @fsl_lpspi_wait_for_completion(%struct.spi_controller*) #1

declare dso_local i32 @fsl_lpspi_reset(%struct.fsl_lpspi_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
