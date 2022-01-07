; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_write_tx_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_write_tx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_lpspi_data = type { i32, i64, i32, i32 (%struct.fsl_lpspi_data*)*, i32 }

@IMX7ULP_FSR = common dso_local global i64 0, align 8
@IMX7ULP_TCR = common dso_local global i64 0, align 8
@TCR_CONTC = common dso_local global i32 0, align 4
@IER_FCIE = common dso_local global i32 0, align 4
@IER_TDIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_lpspi_data*)* @fsl_lpspi_write_tx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_lpspi_write_tx_fifo(%struct.fsl_lpspi_data* %0) #0 {
  %2 = alloca %struct.fsl_lpspi_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.fsl_lpspi_data* %0, %struct.fsl_lpspi_data** %2, align 8
  %5 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %6 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @IMX7ULP_FSR, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl(i64 %9)
  %11 = and i32 %10, 255
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %24, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %15 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %12
  %19 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %20 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %32

24:                                               ; preds = %18
  %25 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %26 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %25, i32 0, i32 3
  %27 = load i32 (%struct.fsl_lpspi_data*)*, i32 (%struct.fsl_lpspi_data*)** %26, align 8
  %28 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %29 = call i32 %27(%struct.fsl_lpspi_data* %28)
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %12

32:                                               ; preds = %23, %12
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %35 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %65

38:                                               ; preds = %32
  %39 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %40 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %38
  %44 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %45 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IMX7ULP_TCR, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @readl(i64 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* @TCR_CONTC, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %4, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %56 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IMX7ULP_TCR, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  br label %61

61:                                               ; preds = %43, %38
  %62 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %63 = load i32, i32* @IER_FCIE, align 4
  %64 = call i32 @fsl_lpspi_intctrl(%struct.fsl_lpspi_data* %62, i32 %63)
  br label %69

65:                                               ; preds = %32
  %66 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %67 = load i32, i32* @IER_TDIE, align 4
  %68 = call i32 @fsl_lpspi_intctrl(%struct.fsl_lpspi_data* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %61
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @fsl_lpspi_intctrl(%struct.fsl_lpspi_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
