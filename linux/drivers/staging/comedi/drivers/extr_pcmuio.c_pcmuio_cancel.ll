; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmuio.c_pcmuio_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmuio.c_pcmuio_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcmuio_private* }
%struct.pcmuio_private = type { %struct.pcmuio_asic* }
%struct.pcmuio_asic = type { i32, i64 }
%struct.comedi_subdevice = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pcmuio_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmuio_cancel(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.pcmuio_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcmuio_asic*, align 8
  %8 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 0
  %11 = load %struct.pcmuio_private*, %struct.pcmuio_private** %10, align 8
  store %struct.pcmuio_private* %11, %struct.pcmuio_private** %5, align 8
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %13 = call i32 @pcmuio_subdevice_to_asic(%struct.comedi_subdevice* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.pcmuio_private*, %struct.pcmuio_private** %5, align 8
  %15 = getelementptr inbounds %struct.pcmuio_private, %struct.pcmuio_private* %14, i32 0, i32 0
  %16 = load %struct.pcmuio_asic*, %struct.pcmuio_asic** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.pcmuio_asic, %struct.pcmuio_asic* %16, i64 %18
  store %struct.pcmuio_asic* %19, %struct.pcmuio_asic** %7, align 8
  %20 = load %struct.pcmuio_asic*, %struct.pcmuio_asic** %7, align 8
  %21 = getelementptr inbounds %struct.pcmuio_asic, %struct.pcmuio_asic* %20, i32 0, i32 0
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.pcmuio_asic*, %struct.pcmuio_asic** %7, align 8
  %25 = getelementptr inbounds %struct.pcmuio_asic, %struct.pcmuio_asic* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %31 = call i32 @pcmuio_stop_intr(%struct.comedi_device* %29, %struct.comedi_subdevice* %30)
  br label %32

32:                                               ; preds = %28, %2
  %33 = load %struct.pcmuio_asic*, %struct.pcmuio_asic** %7, align 8
  %34 = getelementptr inbounds %struct.pcmuio_asic, %struct.pcmuio_asic* %33, i32 0, i32 0
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  ret i32 0
}

declare dso_local i32 @pcmuio_subdevice_to_asic(%struct.comedi_subdevice*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pcmuio_stop_intr(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
