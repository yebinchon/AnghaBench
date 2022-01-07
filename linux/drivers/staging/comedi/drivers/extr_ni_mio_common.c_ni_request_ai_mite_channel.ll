; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_request_ai_mite_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_request_ai_mite_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.ni_private* }
%struct.ni_private = type { i32, %struct.mite_channel*, i32, i32 }
%struct.mite_channel = type { i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"failed to reserve mite dma channel for analog input\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@COMEDI_INPUT = common dso_local global i32 0, align 4
@NI_E_DMA_AI_AO_SEL_REG = common dso_local global i32 0, align 4
@NI_E_DMA_AI_SEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @ni_request_ai_mite_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_request_ai_mite_channel(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.ni_private*, align 8
  %5 = alloca %struct.mite_channel*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 1
  %10 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  store %struct.ni_private* %10, %struct.ni_private** %4, align 8
  %11 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %12 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %11, i32 0, i32 0
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %16 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %19 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.mite_channel* @mite_request_channel(i32 %17, i32 %20)
  store %struct.mite_channel* %21, %struct.mite_channel** %5, align 8
  %22 = load %struct.mite_channel*, %struct.mite_channel** %5, align 8
  %23 = icmp ne %struct.mite_channel* %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %1
  %25 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %26 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %25, i32 0, i32 0
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %56

35:                                               ; preds = %1
  %36 = load i32, i32* @COMEDI_INPUT, align 4
  %37 = load %struct.mite_channel*, %struct.mite_channel** %5, align 8
  %38 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.mite_channel*, %struct.mite_channel** %5, align 8
  %40 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %41 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %40, i32 0, i32 1
  store %struct.mite_channel* %39, %struct.mite_channel** %41, align 8
  %42 = load %struct.mite_channel*, %struct.mite_channel** %5, align 8
  %43 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @NI_STC_DMA_CHAN_SEL(i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %47 = load i32, i32* @NI_E_DMA_AI_AO_SEL_REG, align 4
  %48 = load i32, i32* @NI_E_DMA_AI_SEL_MASK, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @NI_E_DMA_AI_SEL(i32 %49)
  %51 = call i32 @ni_set_bitfield(%struct.comedi_device* %46, i32 %47, i32 %48, i32 %50)
  %52 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %53 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %52, i32 0, i32 0
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %35, %24
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.mite_channel* @mite_request_channel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @NI_STC_DMA_CHAN_SEL(i32) #1

declare dso_local i32 @ni_set_bitfield(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @NI_E_DMA_AI_SEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
