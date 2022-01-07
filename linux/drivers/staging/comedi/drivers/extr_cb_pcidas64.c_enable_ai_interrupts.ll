; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_enable_ai_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_enable_ai_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.pcidas64_private*, %struct.pcidas64_board* }
%struct.pcidas64_private = type { i32, i64 }
%struct.pcidas64_board = type { i64 }
%struct.comedi_cmd = type { i32 }

@EN_ADC_OVERRUN_BIT = common dso_local global i32 0, align 4
@EN_ADC_DONE_INTR_BIT = common dso_local global i32 0, align 4
@EN_ADC_ACTIVE_INTR_BIT = common dso_local global i32 0, align 4
@EN_ADC_STOP_INTR_BIT = common dso_local global i32 0, align 4
@CMDF_WAKE_EOS = common dso_local global i32 0, align 4
@LAYOUT_4020 = common dso_local global i64 0, align 8
@ADC_INTR_EOSCAN_BITS = common dso_local global i32 0, align 4
@EN_ADC_INTR_SRC_BIT = common dso_local global i32 0, align 4
@INTR_ENABLE_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_cmd*)* @enable_ai_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_ai_interrupts(%struct.comedi_device* %0, %struct.comedi_cmd* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_cmd*, align 8
  %5 = alloca %struct.pcidas64_board*, align 8
  %6 = alloca %struct.pcidas64_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_cmd* %1, %struct.comedi_cmd** %4, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 2
  %11 = load %struct.pcidas64_board*, %struct.pcidas64_board** %10, align 8
  store %struct.pcidas64_board* %11, %struct.pcidas64_board** %5, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 1
  %14 = load %struct.pcidas64_private*, %struct.pcidas64_private** %13, align 8
  store %struct.pcidas64_private* %14, %struct.pcidas64_private** %6, align 8
  %15 = load i32, i32* @EN_ADC_OVERRUN_BIT, align 4
  %16 = load i32, i32* @EN_ADC_DONE_INTR_BIT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @EN_ADC_ACTIVE_INTR_BIT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @EN_ADC_STOP_INTR_BIT, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %23 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CMDF_WAKE_EOS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %2
  %29 = load %struct.pcidas64_board*, %struct.pcidas64_board** %5, align 8
  %30 = getelementptr inbounds %struct.pcidas64_board, %struct.pcidas64_board* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @LAYOUT_4020, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i32, i32* @ADC_INTR_EOSCAN_BITS, align 4
  %36 = load i32, i32* @EN_ADC_INTR_SRC_BIT, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %34, %28
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %43 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 0
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %48 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %52 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %55 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @INTR_ENABLE_REG, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writew(i32 %53, i64 %58)
  %60 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %61 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %60, i32 0, i32 0
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
