; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_set_watermark.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_set_watermark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_lpspi_data = type { i32, i32, i64, i32 }

@IMX7ULP_FCR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"FCR=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_lpspi_data*)* @fsl_lpspi_set_watermark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_lpspi_set_watermark(%struct.fsl_lpspi_data* %0) #0 {
  %2 = alloca %struct.fsl_lpspi_data*, align 8
  %3 = alloca i32, align 4
  store %struct.fsl_lpspi_data* %0, %struct.fsl_lpspi_data** %2, align 8
  %4 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %5 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %10 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = ashr i32 %11, 1
  %13 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %14 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = ashr i32 %15, 1
  %17 = shl i32 %16, 16
  %18 = or i32 %12, %17
  store i32 %18, i32* %3, align 4
  br label %24

19:                                               ; preds = %1
  %20 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %21 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = ashr i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %19, %8
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %27 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IMX7ULP_FCR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %25, i64 %30)
  %32 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %33 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %35)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
