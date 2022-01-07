; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_pcidio.c_ni_pcidio_request_di_mite_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_pcidio.c_ni_pcidio_request_di_mite_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, %struct.nidio96_private* }
%struct.nidio96_private = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"failed to reserve mite dma channel\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@COMEDI_INPUT = common dso_local global i32 0, align 4
@DMA_LINE_CONTROL_GROUP1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @ni_pcidio_request_di_mite_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_pcidio_request_di_mite_channel(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.nidio96_private*, align 8
  %5 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 2
  %8 = load %struct.nidio96_private*, %struct.nidio96_private** %7, align 8
  store %struct.nidio96_private* %8, %struct.nidio96_private** %4, align 8
  %9 = load %struct.nidio96_private*, %struct.nidio96_private** %4, align 8
  %10 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %9, i32 0, i32 0
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.nidio96_private*, %struct.nidio96_private** %4, align 8
  %14 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = call i32 @BUG_ON(%struct.TYPE_3__* %15)
  %17 = load %struct.nidio96_private*, %struct.nidio96_private** %4, align 8
  %18 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nidio96_private*, %struct.nidio96_private** %4, align 8
  %21 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.TYPE_3__* @mite_request_channel_in_range(i32 %19, i32 %22, i32 1, i32 2)
  %24 = load %struct.nidio96_private*, %struct.nidio96_private** %4, align 8
  %25 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %24, i32 0, i32 1
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %25, align 8
  %26 = load %struct.nidio96_private*, %struct.nidio96_private** %4, align 8
  %27 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %41, label %30

30:                                               ; preds = %1
  %31 = load %struct.nidio96_private*, %struct.nidio96_private** %4, align 8
  %32 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %31, i32 0, i32 0
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %70

41:                                               ; preds = %1
  %42 = load i32, i32* @COMEDI_INPUT, align 4
  %43 = load %struct.nidio96_private*, %struct.nidio96_private** %4, align 8
  %44 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i32 %42, i32* %46, align 4
  %47 = load %struct.nidio96_private*, %struct.nidio96_private** %4, align 8
  %48 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @primary_DMAChannel_bits(i32 %51)
  %53 = load %struct.nidio96_private*, %struct.nidio96_private** %4, align 8
  %54 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @secondary_DMAChannel_bits(i32 %57)
  %59 = or i32 %52, %58
  %60 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %61 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @DMA_LINE_CONTROL_GROUP1, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writeb(i32 %59, i64 %64)
  %66 = load %struct.nidio96_private*, %struct.nidio96_private** %4, align 8
  %67 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %66, i32 0, i32 0
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %41, %30
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BUG_ON(%struct.TYPE_3__*) #1

declare dso_local %struct.TYPE_3__* @mite_request_channel_in_range(i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @primary_DMAChannel_bits(i32) #1

declare dso_local i32 @secondary_DMAChannel_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
