; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_mspi_l2_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_mspi_l2_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_qspi_dev_id = type { %struct.bcm_qspi* }
%struct.bcm_qspi = type { i32, %struct.bcm_qspi_soc_intc* }
%struct.bcm_qspi_soc_intc = type { i32 (%struct.bcm_qspi_soc_intc*, i32)* }

@MSPI = common dso_local global i32 0, align 4
@MSPI_MSPI_STATUS = common dso_local global i32 0, align 4
@MSPI_MSPI_STATUS_SPIF = common dso_local global i32 0, align 4
@MSPI_DONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bcm_qspi_mspi_l2_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_qspi_mspi_l2_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bcm_qspi_dev_id*, align 8
  %7 = alloca %struct.bcm_qspi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bcm_qspi_soc_intc*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.bcm_qspi_dev_id*
  store %struct.bcm_qspi_dev_id* %11, %struct.bcm_qspi_dev_id** %6, align 8
  %12 = load %struct.bcm_qspi_dev_id*, %struct.bcm_qspi_dev_id** %6, align 8
  %13 = getelementptr inbounds %struct.bcm_qspi_dev_id, %struct.bcm_qspi_dev_id* %12, i32 0, i32 0
  %14 = load %struct.bcm_qspi*, %struct.bcm_qspi** %13, align 8
  store %struct.bcm_qspi* %14, %struct.bcm_qspi** %7, align 8
  %15 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %16 = load i32, i32* @MSPI, align 4
  %17 = load i32, i32* @MSPI_MSPI_STATUS, align 4
  %18 = call i32 @bcm_qspi_read(%struct.bcm_qspi* %15, i32 %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @MSPI_MSPI_STATUS_SPIF, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %2
  %24 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %25 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %24, i32 0, i32 1
  %26 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %25, align 8
  store %struct.bcm_qspi_soc_intc* %26, %struct.bcm_qspi_soc_intc** %9, align 8
  %27 = load i32, i32* @MSPI_MSPI_STATUS_SPIF, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %32 = load i32, i32* @MSPI, align 4
  %33 = load i32, i32* @MSPI_MSPI_STATUS, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @bcm_qspi_write(%struct.bcm_qspi* %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %37 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %36, i32 0, i32 1
  %38 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %37, align 8
  %39 = icmp ne %struct.bcm_qspi_soc_intc* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %23
  %41 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %9, align 8
  %42 = getelementptr inbounds %struct.bcm_qspi_soc_intc, %struct.bcm_qspi_soc_intc* %41, i32 0, i32 0
  %43 = load i32 (%struct.bcm_qspi_soc_intc*, i32)*, i32 (%struct.bcm_qspi_soc_intc*, i32)** %42, align 8
  %44 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %9, align 8
  %45 = load i32, i32* @MSPI_DONE, align 4
  %46 = call i32 %43(%struct.bcm_qspi_soc_intc* %44, i32 %45)
  br label %47

47:                                               ; preds = %40, %23
  %48 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %49 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %48, i32 0, i32 0
  %50 = call i32 @complete(i32* %49)
  %51 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %51, i32* %3, align 4
  br label %54

52:                                               ; preds = %2
  %53 = load i32, i32* @IRQ_NONE, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %47
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @bcm_qspi_read(%struct.bcm_qspi*, i32, i32) #1

declare dso_local i32 @bcm_qspi_write(%struct.bcm_qspi*, i32, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
