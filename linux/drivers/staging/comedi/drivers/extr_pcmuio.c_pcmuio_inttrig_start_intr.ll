; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmuio.c_pcmuio_inttrig_start_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmuio.c_pcmuio_inttrig_start_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcmuio_private* }
%struct.pcmuio_private = type { %struct.pcmuio_asic* }
%struct.pcmuio_asic = type { i32, i64 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @pcmuio_inttrig_start_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmuio_inttrig_start_intr(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcmuio_private*, align 8
  %9 = alloca %struct.comedi_cmd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pcmuio_asic*, align 8
  %12 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load %struct.pcmuio_private*, %struct.pcmuio_private** %14, align 8
  store %struct.pcmuio_private* %15, %struct.pcmuio_private** %8, align 8
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %17 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store %struct.comedi_cmd* %19, %struct.comedi_cmd** %9, align 8
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %21 = call i32 @pcmuio_subdevice_to_asic(%struct.comedi_subdevice* %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.pcmuio_private*, %struct.pcmuio_private** %8, align 8
  %23 = getelementptr inbounds %struct.pcmuio_private, %struct.pcmuio_private* %22, i32 0, i32 0
  %24 = load %struct.pcmuio_asic*, %struct.pcmuio_asic** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.pcmuio_asic, %struct.pcmuio_asic* %24, i64 %26
  store %struct.pcmuio_asic* %27, %struct.pcmuio_asic** %11, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %30 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %58

36:                                               ; preds = %3
  %37 = load %struct.pcmuio_asic*, %struct.pcmuio_asic** %11, align 8
  %38 = getelementptr inbounds %struct.pcmuio_asic, %struct.pcmuio_asic* %37, i32 0, i32 0
  %39 = load i64, i64* %12, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %42 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  %45 = load %struct.pcmuio_asic*, %struct.pcmuio_asic** %11, align 8
  %46 = getelementptr inbounds %struct.pcmuio_asic, %struct.pcmuio_asic* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %36
  %50 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %52 = call i32 @pcmuio_start_intr(%struct.comedi_device* %50, %struct.comedi_subdevice* %51)
  br label %53

53:                                               ; preds = %49, %36
  %54 = load %struct.pcmuio_asic*, %struct.pcmuio_asic** %11, align 8
  %55 = getelementptr inbounds %struct.pcmuio_asic, %struct.pcmuio_asic* %54, i32 0, i32 0
  %56 = load i64, i64* %12, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  store i32 1, i32* %4, align 4
  br label %58

58:                                               ; preds = %53, %33
  %59 = load i32, i32* %4, align 4
  ret i32 %59
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
