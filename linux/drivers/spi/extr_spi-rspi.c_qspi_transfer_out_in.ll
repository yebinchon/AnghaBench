; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_qspi_transfer_out_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_qspi_transfer_out_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rspi_data = type { i32 }
%struct.spi_transfer = type { i32, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rspi_data*, %struct.spi_transfer*)* @qspi_transfer_out_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qspi_transfer_out_in(%struct.rspi_data* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rspi_data*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca i32, align 4
  store %struct.rspi_data* %0, %struct.rspi_data** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %7 = load %struct.rspi_data*, %struct.rspi_data** %4, align 8
  %8 = call i32 @qspi_receive_init(%struct.rspi_data* %7)
  %9 = load %struct.rspi_data*, %struct.rspi_data** %4, align 8
  %10 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %11 = call i32 @rspi_dma_check_then_transfer(%struct.rspi_data* %9, %struct.spi_transfer* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @EAGAIN, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp ne i32 %12, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %30

18:                                               ; preds = %2
  %19 = load %struct.rspi_data*, %struct.rspi_data** %4, align 8
  %20 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %27 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @qspi_trigger_transfer_out_in(%struct.rspi_data* %19, i32 %22, i32 %25, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %18, %16
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @qspi_receive_init(%struct.rspi_data*) #1

declare dso_local i32 @rspi_dma_check_then_transfer(%struct.rspi_data*, %struct.spi_transfer*) #1

declare dso_local i32 @qspi_trigger_transfer_out_in(%struct.rspi_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
