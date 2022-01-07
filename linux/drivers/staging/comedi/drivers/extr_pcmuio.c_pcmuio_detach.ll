; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmuio.c_pcmuio_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmuio.c_pcmuio_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.pcmuio_private* }
%struct.pcmuio_private = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @pcmuio_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcmuio_detach(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.pcmuio_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 1
  %6 = load %struct.pcmuio_private*, %struct.pcmuio_private** %5, align 8
  store %struct.pcmuio_private* %6, %struct.pcmuio_private** %3, align 8
  %7 = load %struct.pcmuio_private*, %struct.pcmuio_private** %3, align 8
  %8 = icmp ne %struct.pcmuio_private* %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %1
  %10 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %11 = call i32 @pcmuio_reset(%struct.comedi_device* %10)
  %12 = load %struct.pcmuio_private*, %struct.pcmuio_private** %3, align 8
  %13 = getelementptr inbounds %struct.pcmuio_private, %struct.pcmuio_private* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %9
  %17 = load %struct.pcmuio_private*, %struct.pcmuio_private** %3, align 8
  %18 = getelementptr inbounds %struct.pcmuio_private, %struct.pcmuio_private* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = load %struct.pcmuio_private*, %struct.pcmuio_private** %3, align 8
  %26 = getelementptr inbounds %struct.pcmuio_private, %struct.pcmuio_private* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %29 = call i32 @free_irq(i64 %27, %struct.comedi_device* %28)
  br label %30

30:                                               ; preds = %24, %16, %9
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %33 = call i32 @comedi_legacy_detach(%struct.comedi_device* %32)
  ret void
}

declare dso_local i32 @pcmuio_reset(%struct.comedi_device*) #1

declare dso_local i32 @free_irq(i64, %struct.comedi_device*) #1

declare dso_local i32 @comedi_legacy_detach(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
