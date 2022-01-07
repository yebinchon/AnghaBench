; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_dspi_eoq_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_dspi_eoq_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_dspi = type { i64, i64 }

@DSPI_FIFO_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_dspi*)* @dspi_eoq_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dspi_eoq_read(%struct.fsl_dspi* %0) #0 {
  %2 = alloca %struct.fsl_dspi*, align 8
  %3 = alloca i32, align 4
  store %struct.fsl_dspi* %0, %struct.fsl_dspi** %2, align 8
  %4 = load i32, i32* @DSPI_FIFO_SIZE, align 4
  store i32 %4, i32* %3, align 4
  br label %5

5:                                                ; preds = %19, %1
  %6 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %7 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %10 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %8, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %5
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %3, align 4
  %16 = icmp ne i32 %14, 0
  br label %17

17:                                               ; preds = %13, %5
  %18 = phi i1 [ false, %5 ], [ %16, %13 ]
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  %20 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %21 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %22 = call i32 @fifo_read(%struct.fsl_dspi* %21)
  %23 = call i32 @dspi_push_rx(%struct.fsl_dspi* %20, i32 %22)
  br label %5

24:                                               ; preds = %17
  ret void
}

declare dso_local i32 @dspi_push_rx(%struct.fsl_dspi*, i32) #1

declare dso_local i32 @fifo_read(%struct.fsl_dspi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
