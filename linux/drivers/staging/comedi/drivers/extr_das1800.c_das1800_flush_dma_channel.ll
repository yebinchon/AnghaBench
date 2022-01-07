; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das1800.c_das1800_flush_dma_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das1800.c_das1800_flush_dma_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_isadma_desc = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_isadma_desc*)* @das1800_flush_dma_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @das1800_flush_dma_channel(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_isadma_desc* %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.comedi_isadma_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store %struct.comedi_isadma_desc* %2, %struct.comedi_isadma_desc** %6, align 8
  %10 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %6, align 8
  %11 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @comedi_isadma_disable(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sub i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @comedi_nsamples_left(%struct.comedi_subdevice* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %26 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %6, align 8
  %27 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %25, i32 %28, i32 %29)
  ret void
}

declare dso_local i32 @comedi_isadma_disable(i32) #1

declare dso_local i32 @comedi_bytes_to_samples(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_nsamples_left(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
