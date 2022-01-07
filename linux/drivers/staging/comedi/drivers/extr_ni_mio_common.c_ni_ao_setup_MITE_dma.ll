; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_setup_MITE_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_setup_MITE_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice*, %struct.ni_private* }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ni_private = type { i32, i64, i64, i64 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @ni_ao_setup_MITE_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_ao_setup_MITE_dma(%struct.comedi_device* %0) #0 {
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
  %15 = call i32 @ni_request_ao_mite_channel(%struct.comedi_device* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %70

20:                                               ; preds = %1
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %23 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @comedi_buf_read_alloc(%struct.comedi_subdevice* %21, i32 %26)
  %28 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %29 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %28, i32 0, i32 0
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %33 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %20
  %37 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %38 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %43 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41, %36
  %47 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %48 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @mite_prep_dma(i64 %49, i32 32, i32 32)
  br label %56

51:                                               ; preds = %41
  %52 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %53 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @mite_prep_dma(i64 %54, i32 16, i32 32)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %58 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @mite_dma_arm(i64 %59)
  br label %64

61:                                               ; preds = %20
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %61, %56
  %65 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %66 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %65, i32 0, i32 0
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %64, %18
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @ni_request_ao_mite_channel(%struct.comedi_device*) #1

declare dso_local i32 @comedi_buf_read_alloc(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mite_prep_dma(i64, i32, i32) #1

declare dso_local i32 @mite_dma_arm(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
