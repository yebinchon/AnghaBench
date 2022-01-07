; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_dspi_pop_tx_pushr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_dspi_pop_tx_pushr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_dspi = type { i32, i64, i32 }

@SPI_PUSHR_CMD_CONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_dspi*)* @dspi_pop_tx_pushr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dspi_pop_tx_pushr(%struct.fsl_dspi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_dspi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fsl_dspi* %0, %struct.fsl_dspi** %3, align 8
  %6 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %7 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %10 = call i32 @dspi_pop_tx(%struct.fsl_dspi* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %12 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @spi_controller_is_slave(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %32

18:                                               ; preds = %1
  %19 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %20 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @SPI_PUSHR_CMD_CONT, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32, i32* %4, align 4
  %29 = shl i32 %28, 16
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %27, %16
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @dspi_pop_tx(%struct.fsl_dspi*) #1

declare dso_local i64 @spi_controller_is_slave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
