; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_dspi_eoq_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_dspi_eoq_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_dspi = type { i64, i64, i32 }

@DSPI_FIFO_SIZE = common dso_local global i32 0, align 4
@SPI_PUSHR_CMD_EOQ = common dso_local global i32 0, align 4
@SPI_PUSHR_CMD_CTCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_dspi*)* @dspi_eoq_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dspi_eoq_write(%struct.fsl_dspi* %0) #0 {
  %2 = alloca %struct.fsl_dspi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.fsl_dspi* %0, %struct.fsl_dspi** %2, align 8
  %5 = load i32, i32* @DSPI_FIFO_SIZE, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %7 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  br label %9

9:                                                ; preds = %51, %1
  %10 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %11 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %3, align 4
  %17 = icmp ne i32 %15, 0
  br label %18

18:                                               ; preds = %14, %9
  %19 = phi i1 [ false, %9 ], [ %17, %14 ]
  br i1 %19, label %20, label %54

20:                                               ; preds = %18
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %23 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %25 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %28 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* %3, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31, %20
  %35 = load i32, i32* @SPI_PUSHR_CMD_EOQ, align 4
  %36 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %37 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %34, %31
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @DSPI_FIFO_SIZE, align 4
  %43 = sub nsw i32 %42, 1
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i32, i32* @SPI_PUSHR_CMD_CTCNT, align 4
  %47 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %48 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %40
  %52 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %53 = call i32 @fifo_write(%struct.fsl_dspi* %52)
  br label %9

54:                                               ; preds = %18
  ret void
}

declare dso_local i32 @fifo_write(%struct.fsl_dspi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
