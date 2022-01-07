; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ao_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ao_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbdux_private* }
%struct.usbdux_private = type { i32, i32, i32, i32, i32, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TRIG_NOW = common dso_local global i64 0, align 8
@usbdux_ao_inttrig = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @usbdux_ao_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdux_ao_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.usbdux_private*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load %struct.usbdux_private*, %struct.usbdux_private** %9, align 8
  store %struct.usbdux_private* %10, %struct.usbdux_private** %5, align 8
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.comedi_cmd* %14, %struct.comedi_cmd** %6, align 8
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %18 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %17, i32 0, i32 3
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %21 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %78

25:                                               ; preds = %2
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %27 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sdiv i32 %28, 1000000
  %30 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %31 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %33 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %78

39:                                               ; preds = %25
  %40 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %41 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %44 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %46 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TRIG_NOW, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %39
  %51 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %52 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  %53 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %54 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %55 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %58 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @usbdux_submit_urbs(%struct.comedi_device* %53, i32 %56, i32 %59, i32 0)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %50
  %64 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %65 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %64, i32 0, i32 0
  store i32 0, i32* %65, align 4
  br label %78

66:                                               ; preds = %50
  %67 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %68 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32* null, i32** %70, align 8
  br label %77

71:                                               ; preds = %39
  %72 = load i32*, i32** @usbdux_ao_inttrig, align 8
  %73 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %74 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32* %72, i32** %76, align 8
  br label %77

77:                                               ; preds = %71, %66
  br label %78

78:                                               ; preds = %77, %63, %36, %24
  %79 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %80 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %79, i32 0, i32 3
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* %7, align 4
  ret i32 %82
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
