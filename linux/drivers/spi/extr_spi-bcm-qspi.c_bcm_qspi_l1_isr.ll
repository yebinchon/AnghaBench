; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_l1_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_l1_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_qspi_dev_id = type { %struct.bcm_qspi* }
%struct.bcm_qspi = type { %struct.bcm_qspi_soc_intc* }
%struct.bcm_qspi_soc_intc = type { i32 (%struct.bcm_qspi_soc_intc*)* }

@IRQ_NONE = common dso_local global i32 0, align 4
@MSPI_DONE = common dso_local global i32 0, align 4
@BSPI_DONE = common dso_local global i32 0, align 4
@BSPI_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bcm_qspi_l1_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_qspi_l1_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bcm_qspi_dev_id*, align 8
  %6 = alloca %struct.bcm_qspi*, align 8
  %7 = alloca %struct.bcm_qspi_soc_intc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.bcm_qspi_dev_id*
  store %struct.bcm_qspi_dev_id* %11, %struct.bcm_qspi_dev_id** %5, align 8
  %12 = load %struct.bcm_qspi_dev_id*, %struct.bcm_qspi_dev_id** %5, align 8
  %13 = getelementptr inbounds %struct.bcm_qspi_dev_id, %struct.bcm_qspi_dev_id* %12, i32 0, i32 0
  %14 = load %struct.bcm_qspi*, %struct.bcm_qspi** %13, align 8
  store %struct.bcm_qspi* %14, %struct.bcm_qspi** %6, align 8
  %15 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %16 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %15, i32 0, i32 0
  %17 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %16, align 8
  store %struct.bcm_qspi_soc_intc* %17, %struct.bcm_qspi_soc_intc** %7, align 8
  %18 = load i32, i32* @IRQ_NONE, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %7, align 8
  %20 = icmp ne %struct.bcm_qspi_soc_intc* %19, null
  br i1 %20, label %21, label %56

21:                                               ; preds = %2
  %22 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %7, align 8
  %23 = getelementptr inbounds %struct.bcm_qspi_soc_intc, %struct.bcm_qspi_soc_intc* %22, i32 0, i32 0
  %24 = load i32 (%struct.bcm_qspi_soc_intc*)*, i32 (%struct.bcm_qspi_soc_intc*)** %23, align 8
  %25 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %7, align 8
  %26 = call i32 %24(%struct.bcm_qspi_soc_intc* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @MSPI_DONE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load i32, i32* %3, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @bcm_qspi_mspi_l2_isr(i32 %32, i8* %33)
  store i32 %34, i32* %8, align 4
  br label %55

35:                                               ; preds = %21
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @BSPI_DONE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* %3, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @bcm_qspi_bspi_lr_l2_isr(i32 %41, i8* %42)
  store i32 %43, i32* %8, align 4
  br label %54

44:                                               ; preds = %35
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @BSPI_ERR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* %3, align 4
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @bcm_qspi_bspi_lr_err_l2_isr(i32 %50, i8* %51)
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %49, %44
  br label %54

54:                                               ; preds = %53, %40
  br label %55

55:                                               ; preds = %54, %31
  br label %56

56:                                               ; preds = %55, %2
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local i32 @bcm_qspi_mspi_l2_isr(i32, i8*) #1

declare dso_local i32 @bcm_qspi_bspi_lr_l2_isr(i32, i8*) #1

declare dso_local i32 @bcm_qspi_bspi_lr_err_l2_isr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
