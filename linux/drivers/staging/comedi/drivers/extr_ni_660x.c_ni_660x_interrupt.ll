; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_660x.c_ni_660x_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_660x.c_ni_660x_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.comedi_subdevice*, i32, %struct.ni_660x_private* }
%struct.comedi_subdevice = type { i64 }
%struct.ni_660x_private = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@COMEDI_SUBD_COUNTER = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ni_660x_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_660x_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.ni_660x_private*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.comedi_device*
  store %struct.comedi_device* %12, %struct.comedi_device** %6, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 3
  %15 = load %struct.ni_660x_private*, %struct.ni_660x_private** %14, align 8
  store %struct.ni_660x_private* %15, %struct.ni_660x_private** %7, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %3, align 4
  br label %60

22:                                               ; preds = %2
  %23 = call i32 (...) @smp_mb()
  %24 = load %struct.ni_660x_private*, %struct.ni_660x_private** %7, align 8
  %25 = getelementptr inbounds %struct.ni_660x_private, %struct.ni_660x_private* %24, i32 0, i32 0
  %26 = load i64, i64* %10, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %51, %22
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %28
  %35 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 1
  %37 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %37, i64 %39
  store %struct.comedi_subdevice* %40, %struct.comedi_subdevice** %8, align 8
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %42 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @COMEDI_SUBD_COUNTER, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %34
  %47 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %49 = call i32 @ni_660x_handle_gpct_interrupt(%struct.comedi_device* %47, %struct.comedi_subdevice* %48)
  br label %50

50:                                               ; preds = %46, %34
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %9, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %28

54:                                               ; preds = %28
  %55 = load %struct.ni_660x_private*, %struct.ni_660x_private** %7, align 8
  %56 = getelementptr inbounds %struct.ni_660x_private, %struct.ni_660x_private* %55, i32 0, i32 0
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %54, %20
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ni_660x_handle_gpct_interrupt(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
