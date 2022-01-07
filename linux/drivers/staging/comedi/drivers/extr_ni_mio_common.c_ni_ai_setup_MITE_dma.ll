; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ai_setup_MITE_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ai_setup_MITE_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice*, %struct.ni_private* }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ni_private = type { i32, i32, i64, i64, i64 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @ni_ai_setup_MITE_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_ai_setup_MITE_dma(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.ni_private*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 1
  %10 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  store %struct.ni_private* %10, %struct.ni_private** %4, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  store %struct.comedi_subdevice* %13, %struct.comedi_subdevice** %5, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %15 = call i32 @ni_request_ai_mite_channel(%struct.comedi_device* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %83

20:                                               ; preds = %1
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %23 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @comedi_buf_write_alloc(%struct.comedi_subdevice* %21, i32 %26)
  %28 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %29 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %28, i32 0, i32 0
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %33 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %20
  %37 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %38 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %37, i32 0, i32 0
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %83

43:                                               ; preds = %20
  %44 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %45 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %50 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48, %43
  %54 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %55 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mite_prep_dma(i32 %56, i32 32, i32 16)
  br label %74

58:                                               ; preds = %48
  %59 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %60 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %65 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @mite_prep_dma(i32 %66, i32 32, i32 32)
  br label %73

68:                                               ; preds = %58
  %69 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %70 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @mite_prep_dma(i32 %71, i32 16, i32 16)
  br label %73

73:                                               ; preds = %68, %63
  br label %74

74:                                               ; preds = %73, %53
  %75 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %76 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @mite_dma_arm(i32 %77)
  %79 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %80 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %79, i32 0, i32 0
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %74, %36, %18
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @ni_request_ai_mite_channel(%struct.comedi_device*) #1

declare dso_local i32 @comedi_buf_write_alloc(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mite_prep_dma(i32, i32, i32) #1

declare dso_local i32 @mite_dma_arm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
