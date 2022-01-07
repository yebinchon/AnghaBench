; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_dspi_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_dspi_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_dspi = type { i32 }

@SPI_SR = common dso_local global i32 0, align 4
@SPI_SR_EOQF = common dso_local global i32 0, align 4
@SPI_SR_TCFQF = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_dspi*)* @dspi_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dspi_poll(%struct.fsl_dspi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_dspi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fsl_dspi* %0, %struct.fsl_dspi** %3, align 8
  store i32 1000, i32* %4, align 4
  br label %6

6:                                                ; preds = %26, %1
  %7 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %8 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SPI_SR, align 4
  %11 = call i32 @regmap_read(i32 %9, i32 %10, i32* %5)
  %12 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %13 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SPI_SR, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @regmap_write(i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SPI_SR_EOQF, align 4
  %20 = load i32, i32* @SPI_SR_TCFQF, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  br label %30

25:                                               ; preds = %6
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %6, label %30

30:                                               ; preds = %26, %24
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @ETIMEDOUT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %39

36:                                               ; preds = %30
  %37 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %38 = call i32 @dspi_rxtx(%struct.fsl_dspi* %37)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dspi_rxtx(%struct.fsl_dspi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
