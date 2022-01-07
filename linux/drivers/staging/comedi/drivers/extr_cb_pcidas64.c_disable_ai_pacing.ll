; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_disable_ai_pacing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_disable_ai_pacing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.pcidas64_private* }
%struct.pcidas64_private = type { i32, i64 }

@ADC_SW_GATE_BIT = common dso_local global i32 0, align 4
@ADC_CONTROL1_REG = common dso_local global i64 0, align 8
@ADC_DMA_DISABLE_BIT = common dso_local global i32 0, align 4
@ADC_SOFT_GATE_BITS = common dso_local global i32 0, align 4
@ADC_GATE_LEVEL_BIT = common dso_local global i32 0, align 4
@ADC_CONTROL0_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @disable_ai_pacing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_ai_pacing(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.pcidas64_private*, align 8
  %4 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %5 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 1
  %7 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  store %struct.pcidas64_private* %7, %struct.pcidas64_private** %3, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %9 = call i32 @disable_ai_interrupts(%struct.comedi_device* %8)
  %10 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load i32, i32* @ADC_SW_GATE_BIT, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.pcidas64_private*, %struct.pcidas64_private** %3, align 8
  %17 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.pcidas64_private*, %struct.pcidas64_private** %3, align 8
  %21 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.pcidas64_private*, %struct.pcidas64_private** %3, align 8
  %24 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ADC_CONTROL1_REG, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writew(i32 %22, i64 %27)
  %29 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 0
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load i32, i32* @ADC_DMA_DISABLE_BIT, align 4
  %34 = load i32, i32* @ADC_SOFT_GATE_BITS, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @ADC_GATE_LEVEL_BIT, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.pcidas64_private*, %struct.pcidas64_private** %3, align 8
  %39 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ADC_CONTROL0_REG, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writew(i32 %37, i64 %42)
  ret void
}

declare dso_local i32 @disable_ai_interrupts(%struct.comedi_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
