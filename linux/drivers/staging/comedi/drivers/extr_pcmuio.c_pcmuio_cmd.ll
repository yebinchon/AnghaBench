; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmuio.c_pcmuio_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmuio.c_pcmuio_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcmuio_private* }
%struct.pcmuio_private = type { %struct.pcmuio_asic* }
%struct.pcmuio_asic = type { i32, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64 }

@TRIG_INT = common dso_local global i64 0, align 8
@pcmuio_inttrig_start_intr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pcmuio_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmuio_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.pcmuio_private*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcmuio_asic*, align 8
  %9 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load %struct.pcmuio_private*, %struct.pcmuio_private** %11, align 8
  store %struct.pcmuio_private* %12, %struct.pcmuio_private** %5, align 8
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store %struct.comedi_cmd* %16, %struct.comedi_cmd** %6, align 8
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %18 = call i32 @pcmuio_subdevice_to_asic(%struct.comedi_subdevice* %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.pcmuio_private*, %struct.pcmuio_private** %5, align 8
  %20 = getelementptr inbounds %struct.pcmuio_private, %struct.pcmuio_private* %19, i32 0, i32 0
  %21 = load %struct.pcmuio_asic*, %struct.pcmuio_asic** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.pcmuio_asic, %struct.pcmuio_asic* %21, i64 %23
  store %struct.pcmuio_asic* %24, %struct.pcmuio_asic** %8, align 8
  %25 = load %struct.pcmuio_asic*, %struct.pcmuio_asic** %8, align 8
  %26 = getelementptr inbounds %struct.pcmuio_asic, %struct.pcmuio_asic* %25, i32 0, i32 1
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.pcmuio_asic*, %struct.pcmuio_asic** %8, align 8
  %30 = getelementptr inbounds %struct.pcmuio_asic, %struct.pcmuio_asic* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %32 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TRIG_INT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %2
  %37 = load i32, i32* @pcmuio_inttrig_start_intr, align 4
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %39 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 8
  br label %46

42:                                               ; preds = %2
  %43 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %45 = call i32 @pcmuio_start_intr(%struct.comedi_device* %43, %struct.comedi_subdevice* %44)
  br label %46

46:                                               ; preds = %42, %36
  %47 = load %struct.pcmuio_asic*, %struct.pcmuio_asic** %8, align 8
  %48 = getelementptr inbounds %struct.pcmuio_asic, %struct.pcmuio_asic* %47, i32 0, i32 1
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  ret i32 0
}

declare dso_local i32 @pcmuio_subdevice_to_asic(%struct.comedi_subdevice*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pcmuio_start_intr(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
