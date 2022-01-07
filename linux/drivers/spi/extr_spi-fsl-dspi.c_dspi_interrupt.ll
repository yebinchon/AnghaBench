; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_dspi_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_dspi_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_dspi = type { i32, i32, i32 }

@SPI_SR = common dso_local global i32 0, align 4
@SPI_SR_EOQF = common dso_local global i32 0, align 4
@SPI_SR_TCFQF = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dspi_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dspi_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fsl_dspi*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.fsl_dspi*
  store %struct.fsl_dspi* %9, %struct.fsl_dspi** %6, align 8
  %10 = load %struct.fsl_dspi*, %struct.fsl_dspi** %6, align 8
  %11 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SPI_SR, align 4
  %14 = call i32 @regmap_read(i32 %12, i32 %13, i32* %7)
  %15 = load %struct.fsl_dspi*, %struct.fsl_dspi** %6, align 8
  %16 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SPI_SR, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @regmap_write(i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SPI_SR_EOQF, align 4
  %23 = load i32, i32* @SPI_SR_TCFQF, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %41

29:                                               ; preds = %2
  %30 = load %struct.fsl_dspi*, %struct.fsl_dspi** %6, align 8
  %31 = call i64 @dspi_rxtx(%struct.fsl_dspi* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.fsl_dspi*, %struct.fsl_dspi** %6, align 8
  %35 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load %struct.fsl_dspi*, %struct.fsl_dspi** %6, align 8
  %37 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %36, i32 0, i32 1
  %38 = call i32 @wake_up_interruptible(i32* %37)
  br label %39

39:                                               ; preds = %33, %29
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %27
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i64 @dspi_rxtx(%struct.fsl_dspi*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
