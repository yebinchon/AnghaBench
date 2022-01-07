; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_dspi_tcfq_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_dspi_tcfq_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_dspi = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@SPI_PUSHR_CMD_CTCNT = common dso_local global i32 0, align 4
@SPI_CTAR_LSBFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_dspi*)* @dspi_tcfq_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dspi_tcfq_write(%struct.fsl_dspi* %0) #0 {
  %2 = alloca %struct.fsl_dspi*, align 8
  %3 = alloca i32, align 4
  store %struct.fsl_dspi* %0, %struct.fsl_dspi** %2, align 8
  %4 = load i32, i32* @SPI_PUSHR_CMD_CTCNT, align 4
  %5 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %6 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = or i32 %7, %4
  store i32 %8, i32* %6, align 8
  %9 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %10 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %52

15:                                               ; preds = %1
  %16 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %17 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 16
  br i1 %19, label %20, label %52

20:                                               ; preds = %15
  %21 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %22 = call i32 @dspi_pop_tx(%struct.fsl_dspi* %21)
  store i32 %22, i32* %3, align 4
  %23 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %24 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SPI_CTAR_LSBFE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %20
  %32 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, 65535
  %35 = call i32 @tx_fifo_write(%struct.fsl_dspi* %32, i32 %34)
  %36 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = ashr i32 %37, 16
  %39 = call i32 @tx_fifo_write(%struct.fsl_dspi* %36, i32 %38)
  br label %49

40:                                               ; preds = %20
  %41 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = ashr i32 %42, 16
  %44 = call i32 @tx_fifo_write(%struct.fsl_dspi* %41, i32 %43)
  %45 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = and i32 %46, 65535
  %48 = call i32 @tx_fifo_write(%struct.fsl_dspi* %45, i32 %47)
  br label %49

49:                                               ; preds = %40, %31
  %50 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %51 = call i32 @cmd_fifo_write(%struct.fsl_dspi* %50)
  br label %55

52:                                               ; preds = %15, %1
  %53 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %54 = call i32 @fifo_write(%struct.fsl_dspi* %53)
  br label %55

55:                                               ; preds = %52, %49
  ret void
}

declare dso_local i32 @dspi_pop_tx(%struct.fsl_dspi*) #1

declare dso_local i32 @tx_fifo_write(%struct.fsl_dspi*, i32) #1

declare dso_local i32 @cmd_fifo_write(%struct.fsl_dspi*) #1

declare dso_local i32 @fifo_write(%struct.fsl_dspi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
