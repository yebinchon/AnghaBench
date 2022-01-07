; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-qspi.c_fsl_qspi_clk_prep_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-qspi.c_fsl_qspi_clk_prep_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_qspi = type { i32, i32, i32 }

@PM_QOS_CPU_DMA_LATENCY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_qspi*)* @fsl_qspi_clk_prep_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_qspi_clk_prep_enable(%struct.fsl_qspi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_qspi*, align 8
  %4 = alloca i32, align 4
  store %struct.fsl_qspi* %0, %struct.fsl_qspi** %3, align 8
  %5 = load %struct.fsl_qspi*, %struct.fsl_qspi** %3, align 8
  %6 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @clk_prepare_enable(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %36

13:                                               ; preds = %1
  %14 = load %struct.fsl_qspi*, %struct.fsl_qspi** %3, align 8
  %15 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clk_prepare_enable(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load %struct.fsl_qspi*, %struct.fsl_qspi** %3, align 8
  %22 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_disable_unprepare(i32 %23)
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %36

26:                                               ; preds = %13
  %27 = load %struct.fsl_qspi*, %struct.fsl_qspi** %3, align 8
  %28 = call i64 @needs_wakeup_wait_mode(%struct.fsl_qspi* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.fsl_qspi*, %struct.fsl_qspi** %3, align 8
  %32 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %31, i32 0, i32 0
  %33 = load i32, i32* @PM_QOS_CPU_DMA_LATENCY, align 4
  %34 = call i32 @pm_qos_add_request(i32* %32, i32 %33, i32 0)
  br label %35

35:                                               ; preds = %30, %26
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %20, %11
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i64 @needs_wakeup_wait_mode(%struct.fsl_qspi*) #1

declare dso_local i32 @pm_qos_add_request(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
