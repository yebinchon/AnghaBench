; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_request_gpct_mite_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_request_gpct_mite_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.ni_private* }
%struct.ni_private = type { i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ni_gpct* }
%struct.ni_gpct = type { i32 }
%struct.mite_channel = type { i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"failed to reserve mite dma channel for counter\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@NI_E_DMA_G0_G1_SEL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32, i32)* @ni_request_gpct_mite_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_request_gpct_mite_channel(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ni_private*, align 8
  %9 = alloca %struct.ni_gpct*, align 8
  %10 = alloca %struct.mite_channel*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 1
  %15 = load %struct.ni_private*, %struct.ni_private** %14, align 8
  store %struct.ni_private* %15, %struct.ni_private** %8, align 8
  %16 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %17 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.ni_gpct*, %struct.ni_gpct** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %20, i64 %22
  store %struct.ni_gpct* %23, %struct.ni_gpct** %9, align 8
  %24 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %25 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %24, i32 0, i32 0
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %29 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %32 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.mite_channel* @mite_request_channel(i32 %30, i32 %37)
  store %struct.mite_channel* %38, %struct.mite_channel** %10, align 8
  %39 = load %struct.mite_channel*, %struct.mite_channel** %10, align 8
  %40 = icmp ne %struct.mite_channel* %39, null
  br i1 %40, label %52, label %41

41:                                               ; preds = %3
  %42 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %43 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %42, i32 0, i32 0
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %75

52:                                               ; preds = %3
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.mite_channel*, %struct.mite_channel** %10, align 8
  %55 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ni_gpct*, %struct.ni_gpct** %9, align 8
  %57 = load %struct.mite_channel*, %struct.mite_channel** %10, align 8
  %58 = call i32 @ni_tio_set_mite_channel(%struct.ni_gpct* %56, %struct.mite_channel* %57)
  %59 = load %struct.mite_channel*, %struct.mite_channel** %10, align 8
  %60 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @NI_STC_DMA_CHAN_SEL(i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %64 = load i32, i32* @NI_E_DMA_G0_G1_SEL_REG, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @NI_E_DMA_G0_G1_SEL_MASK(i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @NI_E_DMA_G0_G1_SEL(i32 %67, i32 %68)
  %70 = call i32 @ni_set_bitfield(%struct.comedi_device* %63, i32 %64, i32 %66, i32 %69)
  %71 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %72 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %71, i32 0, i32 0
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %52, %41
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.mite_channel* @mite_request_channel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ni_tio_set_mite_channel(%struct.ni_gpct*, %struct.mite_channel*) #1

declare dso_local i32 @NI_STC_DMA_CHAN_SEL(i32) #1

declare dso_local i32 @ni_set_bitfield(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @NI_E_DMA_G0_G1_SEL_MASK(i32) #1

declare dso_local i32 @NI_E_DMA_G0_G1_SEL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
