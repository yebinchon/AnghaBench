; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_dspi_rxtx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_dspi_rxtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_dspi = type { i32, i32, %struct.TYPE_2__*, i32, %struct.spi_message* }
%struct.TYPE_2__ = type { i32 }
%struct.spi_message = type { i32 }

@SPI_TCR = common dso_local global i32 0, align 4
@DSPI_EOQ_MODE = common dso_local global i32 0, align 4
@DSPI_TCFQ_MODE = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_dspi*)* @dspi_rxtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dspi_rxtx(%struct.fsl_dspi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_dspi*, align 8
  %4 = alloca %struct.spi_message*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fsl_dspi* %0, %struct.fsl_dspi** %3, align 8
  %8 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %9 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %8, i32 0, i32 4
  %10 = load %struct.spi_message*, %struct.spi_message** %9, align 8
  store %struct.spi_message* %10, %struct.spi_message** %4, align 8
  %11 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %12 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SPI_TCR, align 4
  %15 = call i32 @regmap_read(i32 %13, i32 %14, i32* %7)
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @SPI_TCR_GET_TCNT(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %20 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %18, %21
  %23 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %24 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %28 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @DSPI_EOQ_MODE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %1
  %36 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %37 = call i32 @dspi_eoq_read(%struct.fsl_dspi* %36)
  br label %46

38:                                               ; preds = %1
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @DSPI_TCFQ_MODE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %44 = call i32 @dspi_tcfq_read(%struct.fsl_dspi* %43)
  br label %45

45:                                               ; preds = %42, %38
  br label %46

46:                                               ; preds = %45, %35
  %47 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %48 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %70

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @DSPI_EOQ_MODE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %58 = call i32 @dspi_eoq_write(%struct.fsl_dspi* %57)
  br label %67

59:                                               ; preds = %52
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @DSPI_TCFQ_MODE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %65 = call i32 @dspi_tcfq_write(%struct.fsl_dspi* %64)
  br label %66

66:                                               ; preds = %63, %59
  br label %67

67:                                               ; preds = %66, %56
  %68 = load i32, i32* @EINPROGRESS, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %67, %51
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @SPI_TCR_GET_TCNT(i32) #1

declare dso_local i32 @dspi_eoq_read(%struct.fsl_dspi*) #1

declare dso_local i32 @dspi_tcfq_read(%struct.fsl_dspi*) #1

declare dso_local i32 @dspi_eoq_write(%struct.fsl_dspi*) #1

declare dso_local i32 @dspi_tcfq_write(%struct.fsl_dspi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
