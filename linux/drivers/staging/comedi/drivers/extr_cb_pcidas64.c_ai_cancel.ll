; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ai_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ai_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.pcidas64_private* }
%struct.pcidas64_private = type { i64 }
%struct.comedi_subdevice = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @ai_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ai_cancel(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.pcidas64_private*, align 8
  %7 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 1
  %10 = load %struct.pcidas64_private*, %struct.pcidas64_private** %9, align 8
  store %struct.pcidas64_private* %10, %struct.pcidas64_private** %6, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %16 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 0
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  store i32 0, i32* %3, align 4
  br label %35

24:                                               ; preds = %2
  %25 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %26 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 0
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %32 = call i32 @disable_ai_pacing(%struct.comedi_device* %31)
  %33 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %34 = call i32 @abort_dma(%struct.comedi_device* %33, i32 1)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %24, %19
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @disable_ai_pacing(%struct.comedi_device*) #1

declare dso_local i32 @abort_dma(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
