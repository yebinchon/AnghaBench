; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_init_stc_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_init_stc_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.pcidas64_private*, %struct.pcidas64_board* }
%struct.pcidas64_private = type { i32, i32, i32, i64, i32, i32 }
%struct.pcidas64_board = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ADC_QUEUE_CONFIG_BIT = common dso_local global i32 0, align 4
@ADC_CONTROL1_REG = common dso_local global i64 0, align 8
@ADC_SAMPLE_INTERVAL_UPPER_REG = common dso_local global i64 0, align 8
@SLOW_DAC_BIT = common dso_local global i32 0, align 4
@DMA_CH_SELECT_BIT = common dso_local global i32 0, align 4
@LAYOUT_4020 = common dso_local global i64 0, align 8
@INTERNAL_CLOCK_4020_BITS = common dso_local global i32 0, align 4
@HW_CONFIG_REG = common dso_local global i64 0, align 8
@DAQ_SYNC_REG = common dso_local global i64 0, align 8
@CALIBRATION_REG = common dso_local global i64 0, align 8
@DAC_FIFO_BITS = common dso_local global i32 0, align 4
@DAC_OUTPUT_ENABLE_BIT = common dso_local global i32 0, align 4
@EN_DAC_DONE_INTR_BIT = common dso_local global i32 0, align 4
@EN_DAC_UNDERRUN_BIT = common dso_local global i32 0, align 4
@INTR_ENABLE_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @init_stc_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_stc_registers(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.pcidas64_board*, align 8
  %4 = alloca %struct.pcidas64_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 2
  %9 = load %struct.pcidas64_board*, %struct.pcidas64_board** %8, align 8
  store %struct.pcidas64_board* %9, %struct.pcidas64_board** %3, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 1
  %12 = load %struct.pcidas64_private*, %struct.pcidas64_private** %11, align 8
  store %struct.pcidas64_private* %12, %struct.pcidas64_private** %4, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i32, i32* @ADC_QUEUE_CONFIG_BIT, align 4
  %18 = load %struct.pcidas64_private*, %struct.pcidas64_private** %4, align 8
  %19 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.pcidas64_private*, %struct.pcidas64_private** %4, align 8
  %23 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.pcidas64_private*, %struct.pcidas64_private** %4, align 8
  %26 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ADC_CONTROL1_REG, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writew(i32 %24, i64 %29)
  %31 = load %struct.pcidas64_private*, %struct.pcidas64_private** %4, align 8
  %32 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ADC_SAMPLE_INTERVAL_UPPER_REG, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writew(i32 255, i64 %35)
  %37 = load i32, i32* @SLOW_DAC_BIT, align 4
  %38 = load i32, i32* @DMA_CH_SELECT_BIT, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %5, align 4
  %40 = load %struct.pcidas64_board*, %struct.pcidas64_board** %3, align 8
  %41 = getelementptr inbounds %struct.pcidas64_board, %struct.pcidas64_board* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @LAYOUT_4020, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %1
  %46 = load i32, i32* @INTERNAL_CLOCK_4020_BITS, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %45, %1
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.pcidas64_private*, %struct.pcidas64_private** %4, align 8
  %52 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.pcidas64_private*, %struct.pcidas64_private** %4, align 8
  %56 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pcidas64_private*, %struct.pcidas64_private** %4, align 8
  %59 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @HW_CONFIG_REG, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writew(i32 %57, i64 %62)
  %64 = load %struct.pcidas64_private*, %struct.pcidas64_private** %4, align 8
  %65 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DAQ_SYNC_REG, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writew(i32 0, i64 %68)
  %70 = load %struct.pcidas64_private*, %struct.pcidas64_private** %4, align 8
  %71 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @CALIBRATION_REG, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writew(i32 0, i64 %74)
  %76 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %77 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %76, i32 0, i32 0
  %78 = load i64, i64* %6, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  %80 = load i32, i32* @DAC_FIFO_BITS, align 4
  %81 = load %struct.pcidas64_private*, %struct.pcidas64_private** %4, align 8
  %82 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %86 = load %struct.pcidas64_board*, %struct.pcidas64_board** %3, align 8
  %87 = getelementptr inbounds %struct.pcidas64_board, %struct.pcidas64_board* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @set_ai_fifo_segment_length(%struct.comedi_device* %85, i32 %90)
  %92 = load i32, i32* @DAC_OUTPUT_ENABLE_BIT, align 4
  %93 = load %struct.pcidas64_private*, %struct.pcidas64_private** %4, align 8
  %94 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* @EN_DAC_DONE_INTR_BIT, align 4
  %96 = load i32, i32* @EN_DAC_UNDERRUN_BIT, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.pcidas64_private*, %struct.pcidas64_private** %4, align 8
  %99 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.pcidas64_private*, %struct.pcidas64_private** %4, align 8
  %101 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.pcidas64_private*, %struct.pcidas64_private** %4, align 8
  %104 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @INTR_ENABLE_REG, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @writew(i32 %102, i64 %107)
  %109 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %110 = call i32 @disable_ai_pacing(%struct.comedi_device* %109)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @set_ai_fifo_segment_length(%struct.comedi_device*, i32) #1

declare dso_local i32 @disable_ai_pacing(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
