; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_cb_pcidas64_ao_fill_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_cb_pcidas64_ao_fill_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i16*, i32)* @cb_pcidas64_ao_fill_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcidas64_ao_fill_buffer(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i16* %2, i32 %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i16* %2, i16** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %11, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @comedi_nsamples_left(%struct.comedi_subdevice* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %18 = load i16*, i16** %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @comedi_buf_read_samples(%struct.comedi_subdevice* %17, i16* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %21, i32 %22)
  ret i32 %23
}

declare dso_local i32 @comedi_bytes_to_samples(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_nsamples_left(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_buf_read_samples(%struct.comedi_subdevice*, i16*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
