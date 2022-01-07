; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ao_inttrig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ao_inttrig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbdux_private* }
%struct.usbdux_private = type { i32, i32, i32, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @usbdux_ao_inttrig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdux_ao_inttrig(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usbdux_private*, align 8
  %9 = alloca %struct.comedi_cmd*, align 8
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load %struct.usbdux_private*, %struct.usbdux_private** %12, align 8
  store %struct.usbdux_private* %13, %struct.usbdux_private** %8, align 8
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store %struct.comedi_cmd* %17, %struct.comedi_cmd** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %20 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %64

26:                                               ; preds = %3
  %27 = load %struct.usbdux_private*, %struct.usbdux_private** %8, align 8
  %28 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.usbdux_private*, %struct.usbdux_private** %8, align 8
  %31 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %55, label %34

34:                                               ; preds = %26
  %35 = load %struct.usbdux_private*, %struct.usbdux_private** %8, align 8
  %36 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %38 = load %struct.usbdux_private*, %struct.usbdux_private** %8, align 8
  %39 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.usbdux_private*, %struct.usbdux_private** %8, align 8
  %42 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @usbdux_submit_urbs(%struct.comedi_device* %37, i32 %40, i32 %43, i32 0)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = load %struct.usbdux_private*, %struct.usbdux_private** %8, align 8
  %49 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %48, i32 0, i32 0
  store i32 0, i32* %49, align 4
  br label %59

50:                                               ; preds = %34
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %52 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  br label %58

55:                                               ; preds = %26
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %55, %50
  br label %59

59:                                               ; preds = %58, %47
  %60 = load %struct.usbdux_private*, %struct.usbdux_private** %8, align 8
  %61 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %59, %23
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usbdux_submit_urbs(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
