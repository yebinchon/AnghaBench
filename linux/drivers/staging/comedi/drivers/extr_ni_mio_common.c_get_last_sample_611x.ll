; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_get_last_sample_611x.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_get_last_sample_611x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice*, %struct.ni_private* }
%struct.comedi_subdevice = type { i32 }
%struct.ni_private = type { i32 }

@NI_E_STATUS_REG = common dso_local global i32 0, align 4
@NI611X_AI_FIFO_DATA_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @get_last_sample_611x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_last_sample_611x(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.ni_private*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 1
  %9 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  store %struct.ni_private* %9, %struct.ni_private** %3, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %11, align 8
  store %struct.comedi_subdevice* %12, %struct.comedi_subdevice** %4, align 8
  %13 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %14 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %33

18:                                               ; preds = %1
  %19 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %20 = load i32, i32* @NI_E_STATUS_REG, align 4
  %21 = call i32 @ni_readb(%struct.comedi_device* %19, i32 %20)
  %22 = and i32 %21, 128
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %26 = load i32, i32* @NI611X_AI_FIFO_DATA_REG, align 4
  %27 = call i32 @ni_readl(%struct.comedi_device* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 65535
  %30 = trunc i32 %29 to i16
  store i16 %30, i16* %5, align 2
  %31 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %32 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %31, i16* %5, i32 1)
  br label %33

33:                                               ; preds = %17, %24, %18
  ret void
}

declare dso_local i32 @ni_readb(%struct.comedi_device*, i32) #1

declare dso_local i32 @ni_readl(%struct.comedi_device*, i32) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i16*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
