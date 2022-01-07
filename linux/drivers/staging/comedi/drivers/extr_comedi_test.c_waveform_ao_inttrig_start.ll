; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_test.c_waveform_ao_inttrig_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_test.c_waveform_ao_inttrig_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.waveform_private* }
%struct.waveform_private = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32*, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @waveform_ao_inttrig_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @waveform_ao_inttrig_start(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.waveform_private*, align 8
  %9 = alloca %struct.comedi_async*, align 8
  %10 = alloca %struct.comedi_cmd*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load %struct.waveform_private*, %struct.waveform_private** %12, align 8
  store %struct.waveform_private* %13, %struct.waveform_private** %8, align 8
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 0
  %16 = load %struct.comedi_async*, %struct.comedi_async** %15, align 8
  store %struct.comedi_async* %16, %struct.comedi_async** %9, align 8
  %17 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  %18 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %17, i32 0, i32 1
  store %struct.comedi_cmd* %18, %struct.comedi_cmd** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.comedi_cmd*, %struct.comedi_cmd** %10, align 8
  %21 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %46

27:                                               ; preds = %3
  %28 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  %29 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = call i32 (...) @ktime_get()
  %31 = call i32 @ktime_to_us(i32 %30)
  %32 = load %struct.waveform_private*, %struct.waveform_private** %8, align 8
  %33 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i64, i64* @jiffies, align 8
  %35 = load %struct.waveform_private*, %struct.waveform_private** %8, align 8
  %36 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @usecs_to_jiffies(i32 %37)
  %39 = add nsw i64 %34, %38
  %40 = load %struct.waveform_private*, %struct.waveform_private** %8, align 8
  %41 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  %43 = load %struct.waveform_private*, %struct.waveform_private** %8, align 8
  %44 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %43, i32 0, i32 0
  %45 = call i32 @add_timer(%struct.TYPE_2__* %44)
  store i32 1, i32* %4, align 4
  br label %46

46:                                               ; preds = %27, %24
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @ktime_to_us(i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
