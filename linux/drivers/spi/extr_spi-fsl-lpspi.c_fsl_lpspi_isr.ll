; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_lpspi_data = type { i32, i64 }

@IMX7ULP_IER = common dso_local global i64 0, align 8
@IMX7ULP_SR = common dso_local global i64 0, align 8
@SR_TDF = common dso_local global i32 0, align 4
@IER_TDIE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@SR_MBF = common dso_local global i32 0, align 4
@IMX7ULP_FSR = common dso_local global i64 0, align 8
@FSR_TXCOUNT = common dso_local global i32 0, align 4
@SR_FCF = common dso_local global i32 0, align 4
@IER_FCIE = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fsl_lpspi_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_lpspi_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fsl_lpspi_data*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.fsl_lpspi_data*
  store %struct.fsl_lpspi_data* %10, %struct.fsl_lpspi_data** %8, align 8
  %11 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %12 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IMX7ULP_IER, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %18 = call i32 @fsl_lpspi_intctrl(%struct.fsl_lpspi_data* %17, i32 0)
  %19 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %20 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IMX7ULP_SR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %26 = call i32 @fsl_lpspi_read_rx_fifo(%struct.fsl_lpspi_data* %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @SR_TDF, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %2
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @IER_TDIE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %38 = call i32 @fsl_lpspi_write_tx_fifo(%struct.fsl_lpspi_data* %37)
  %39 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %39, i32* %3, align 4
  br label %91

40:                                               ; preds = %31, %2
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @SR_MBF, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %40
  %46 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %47 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IMX7ULP_FSR, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @readl(i64 %50)
  %52 = load i32, i32* @FSR_TXCOUNT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %45, %40
  %56 = load i32, i32* @SR_FCF, align 4
  %57 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %58 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @IMX7ULP_SR, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 %56, i64 %61)
  %63 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %64 = load i32, i32* @IER_FCIE, align 4
  %65 = call i32 @fsl_lpspi_intctrl(%struct.fsl_lpspi_data* %63, i32 %64)
  %66 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %66, i32* %3, align 4
  br label %91

67:                                               ; preds = %45
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @SR_FCF, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %67
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @IER_FCIE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %72
  %78 = load i32, i32* @SR_FCF, align 4
  %79 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %80 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IMX7ULP_SR, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel(i32 %78, i64 %83)
  %85 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %86 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %85, i32 0, i32 0
  %87 = call i32 @complete(i32* %86)
  %88 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %88, i32* %3, align 4
  br label %91

89:                                               ; preds = %72, %67
  %90 = load i32, i32* @IRQ_NONE, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %77, %55, %36
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @fsl_lpspi_intctrl(%struct.fsl_lpspi_data*, i32) #1

declare dso_local i32 @fsl_lpspi_read_rx_fifo(%struct.fsl_lpspi_data*) #1

declare dso_local i32 @fsl_lpspi_write_tx_fifo(%struct.fsl_lpspi_data*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
