; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_bspi_lr_l2_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_bspi_lr_l2_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_qspi_dev_id = type { %struct.TYPE_2__*, %struct.bcm_qspi* }
%struct.TYPE_2__ = type { i32 }
%struct.bcm_qspi = type { i64, i32, i64, %struct.bcm_qspi_soc_intc*, i64, i32* }
%struct.bcm_qspi_soc_intc = type { i32 (%struct.bcm_qspi_soc_intc*, i32)*, i32 (%struct.bcm_qspi_soc_intc*, i32, i32)* }

@BSPI_DONE = common dso_local global i32 0, align 4
@INTR_BSPI_LR_SESSION_DONE_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bcm_qspi_bspi_lr_l2_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_qspi_bspi_lr_l2_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bcm_qspi_dev_id*, align 8
  %6 = alloca %struct.bcm_qspi*, align 8
  %7 = alloca %struct.bcm_qspi_soc_intc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.bcm_qspi_dev_id*
  store %struct.bcm_qspi_dev_id* %10, %struct.bcm_qspi_dev_id** %5, align 8
  %11 = load %struct.bcm_qspi_dev_id*, %struct.bcm_qspi_dev_id** %5, align 8
  %12 = getelementptr inbounds %struct.bcm_qspi_dev_id, %struct.bcm_qspi_dev_id* %11, i32 0, i32 1
  %13 = load %struct.bcm_qspi*, %struct.bcm_qspi** %12, align 8
  store %struct.bcm_qspi* %13, %struct.bcm_qspi** %6, align 8
  %14 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %15 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %14, i32 0, i32 3
  %16 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %15, align 8
  store %struct.bcm_qspi_soc_intc* %16, %struct.bcm_qspi_soc_intc** %7, align 8
  %17 = load %struct.bcm_qspi_dev_id*, %struct.bcm_qspi_dev_id** %5, align 8
  %18 = getelementptr inbounds %struct.bcm_qspi_dev_id, %struct.bcm_qspi_dev_id* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %23 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %78

26:                                               ; preds = %2
  %27 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %28 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %27, i32 0, i32 5
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %78

31:                                               ; preds = %26
  %32 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %33 = call i32 @bcm_qspi_bspi_lr_data_read(%struct.bcm_qspi* %32)
  %34 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %35 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %65

38:                                               ; preds = %31
  %39 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %40 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %39, i32 0, i32 5
  store i32* null, i32** %40, align 8
  %41 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %42 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %41, i32 0, i32 3
  %43 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %42, align 8
  %44 = icmp ne %struct.bcm_qspi_soc_intc* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %7, align 8
  %47 = getelementptr inbounds %struct.bcm_qspi_soc_intc, %struct.bcm_qspi_soc_intc* %46, i32 0, i32 1
  %48 = load i32 (%struct.bcm_qspi_soc_intc*, i32, i32)*, i32 (%struct.bcm_qspi_soc_intc*, i32, i32)** %47, align 8
  %49 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %7, align 8
  %50 = load i32, i32* @BSPI_DONE, align 4
  %51 = call i32 %48(%struct.bcm_qspi_soc_intc* %49, i32 %50, i32 0)
  %52 = load i32, i32* @INTR_BSPI_LR_SESSION_DONE_MASK, align 4
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %45, %38
  %54 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %55 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %60 = call i32 @bcm_qspi_bspi_lr_clear(%struct.bcm_qspi* %59)
  br label %64

61:                                               ; preds = %53
  %62 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %63 = call i32 @bcm_qspi_bspi_flush_prefetch_buffers(%struct.bcm_qspi* %62)
  br label %64

64:                                               ; preds = %61, %58
  br label %65

65:                                               ; preds = %64, %31
  %66 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %67 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %66, i32 0, i32 3
  %68 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %67, align 8
  %69 = icmp ne %struct.bcm_qspi_soc_intc* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %7, align 8
  %72 = getelementptr inbounds %struct.bcm_qspi_soc_intc, %struct.bcm_qspi_soc_intc* %71, i32 0, i32 0
  %73 = load i32 (%struct.bcm_qspi_soc_intc*, i32)*, i32 (%struct.bcm_qspi_soc_intc*, i32)** %72, align 8
  %74 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %7, align 8
  %75 = load i32, i32* @BSPI_DONE, align 4
  %76 = call i32 %73(%struct.bcm_qspi_soc_intc* %74, i32 %75)
  br label %77

77:                                               ; preds = %70, %65
  br label %78

78:                                               ; preds = %77, %26, %2
  %79 = load i32, i32* @INTR_BSPI_LR_SESSION_DONE_MASK, align 4
  %80 = load i32, i32* %8, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %83 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %78
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %91 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %96 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %95, i32 0, i32 1
  %97 = call i32 @complete(i32* %96)
  br label %98

98:                                               ; preds = %94, %89, %86, %78
  %99 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %99
}

declare dso_local i32 @bcm_qspi_bspi_lr_data_read(%struct.bcm_qspi*) #1

declare dso_local i32 @bcm_qspi_bspi_lr_clear(%struct.bcm_qspi*) #1

declare dso_local i32 @bcm_qspi_bspi_flush_prefetch_buffers(%struct.bcm_qspi*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
