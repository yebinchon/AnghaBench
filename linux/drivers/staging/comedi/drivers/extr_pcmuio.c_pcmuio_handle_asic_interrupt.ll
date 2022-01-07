; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmuio.c_pcmuio_handle_asic_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmuio.c_pcmuio_handle_asic_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i32 }

@PCMUIO_INT_PENDING_REG = common dso_local global i64 0, align 8
@PCMUIO_PAGE_INT_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32)* @pcmuio_handle_asic_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmuio_handle_asic_interrupt(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 0
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = mul nsw i32 %12, 2
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i64 %14
  store %struct.comedi_subdevice* %15, %struct.comedi_subdevice** %6, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @pcmuio_asic_iobase(%struct.comedi_device* %16, i32 %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @PCMUIO_INT_PENDING_REG, align 8
  %21 = add i64 %19, %20
  %22 = call i32 @inb(i64 %21)
  %23 = and i32 %22, 7
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

27:                                               ; preds = %2
  %28 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @PCMUIO_PAGE_INT_ID, align 4
  %31 = call i32 @pcmuio_read(%struct.comedi_device* %28, i32 %29, i32 %30, i32 0)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @PCMUIO_PAGE_INT_ID, align 4
  %35 = call i32 @pcmuio_write(%struct.comedi_device* %32, i32 0, i32 %33, i32 %34, i32 0)
  %36 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %37 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @pcmuio_handle_intr_subdev(%struct.comedi_device* %36, %struct.comedi_subdevice* %37, i32 %38)
  store i32 1, i32* %3, align 4
  br label %40

40:                                               ; preds = %27, %26
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @pcmuio_asic_iobase(%struct.comedi_device*, i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @pcmuio_read(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @pcmuio_write(%struct.comedi_device*, i32, i32, i32, i32) #1

declare dso_local i32 @pcmuio_handle_intr_subdev(%struct.comedi_device*, %struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
