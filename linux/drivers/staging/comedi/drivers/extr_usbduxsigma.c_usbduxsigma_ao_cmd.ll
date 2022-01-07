; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxsigma.c_usbduxsigma_ao_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxsigma.c_usbduxsigma_ao_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbduxsigma_private* }
%struct.usbduxsigma_private = type { i32, i32, i32, i32, i32, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i64 }

@TRIG_NOW = common dso_local global i64 0, align 8
@usbduxsigma_ao_inttrig = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @usbduxsigma_ao_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbduxsigma_ao_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.usbduxsigma_private*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 0
  %11 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %10, align 8
  store %struct.usbduxsigma_private* %11, %struct.usbduxsigma_private** %6, align 8
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %13 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store %struct.comedi_cmd* %15, %struct.comedi_cmd** %7, align 8
  %16 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %17 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %16, i32 0, i32 3
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %20 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sdiv i32 %21, 1000000
  %23 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %24 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %26 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %29 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %31 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TRIG_NOW, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %2
  %36 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %37 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %36, i32 0, i32 2
  store i32 1, i32* %37, align 4
  %38 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %39 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %40 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %43 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @usbduxsigma_submit_urbs(%struct.comedi_device* %38, i32 %41, i32 %44, i32 0)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %35
  %49 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %50 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %49, i32 0, i32 2
  store i32 0, i32* %50, align 4
  %51 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %52 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %51, i32 0, i32 3
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %70

55:                                               ; preds = %35
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %57 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  br label %66

60:                                               ; preds = %2
  %61 = load i32*, i32** @usbduxsigma_ao_inttrig, align 8
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %63 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32* %61, i32** %65, align 8
  br label %66

66:                                               ; preds = %60, %55
  %67 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %68 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %67, i32 0, i32 3
  %69 = call i32 @mutex_unlock(i32* %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %48
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usbduxsigma_submit_urbs(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
