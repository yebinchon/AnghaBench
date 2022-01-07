; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_lpspi_data = type { i64, i32 }

@IMX7ULP_SR = common dso_local global i64 0, align 8
@CR_RRF = common dso_local global i32 0, align 4
@CR_RTF = common dso_local global i32 0, align 4
@IMX7ULP_CR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_lpspi_data*)* @fsl_lpspi_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_lpspi_reset(%struct.fsl_lpspi_data* %0) #0 {
  %2 = alloca %struct.fsl_lpspi_data*, align 8
  %3 = alloca i32, align 4
  store %struct.fsl_lpspi_data* %0, %struct.fsl_lpspi_data** %2, align 8
  %4 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %5 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %10 = call i32 @fsl_lpspi_intctrl(%struct.fsl_lpspi_data* %9, i32 0)
  br label %11

11:                                               ; preds = %8, %1
  store i32 16128, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %14 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IMX7ULP_SR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 %12, i64 %17)
  %19 = load i32, i32* @CR_RRF, align 4
  %20 = load i32, i32* @CR_RTF, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %24 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IMX7ULP_CR, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %22, i64 %27)
  ret i32 0
}

declare dso_local i32 @fsl_lpspi_intctrl(%struct.fsl_lpspi_data*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
