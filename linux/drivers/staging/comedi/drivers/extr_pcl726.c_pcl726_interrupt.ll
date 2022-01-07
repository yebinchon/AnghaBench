; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl726.c_pcl726_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl726.c_pcl726_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcl726_private*, %struct.comedi_subdevice* }
%struct.pcl726_private = type { i64 }
%struct.comedi_subdevice = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pcl726_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl726_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.pcl726_private*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.comedi_device*
  store %struct.comedi_device* %9, %struct.comedi_device** %5, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 1
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %11, align 8
  store %struct.comedi_subdevice* %12, %struct.comedi_subdevice** %6, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load %struct.pcl726_private*, %struct.pcl726_private** %14, align 8
  store %struct.pcl726_private* %15, %struct.pcl726_private** %7, align 8
  %16 = load %struct.pcl726_private*, %struct.pcl726_private** %7, align 8
  %17 = getelementptr inbounds %struct.pcl726_private, %struct.pcl726_private* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %23 = call i32 @pcl726_intr_cancel(%struct.comedi_device* %21, %struct.comedi_subdevice* %22)
  %24 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %26 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %25, i32 0, i32 0
  %27 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %24, i32* %26, i32 1)
  %28 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %30 = call i32 @comedi_handle_events(%struct.comedi_device* %28, %struct.comedi_subdevice* %29)
  br label %31

31:                                               ; preds = %20, %2
  %32 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %32
}

declare dso_local i32 @pcl726_intr_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i32*, i32) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
