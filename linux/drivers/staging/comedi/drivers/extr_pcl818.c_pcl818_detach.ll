; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl818.c_pcl818_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl818.c_pcl818_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.pcl818_private* }
%struct.pcl818_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @pcl818_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcl818_detach(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.pcl818_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 1
  %6 = load %struct.pcl818_private*, %struct.pcl818_private** %5, align 8
  store %struct.pcl818_private* %6, %struct.pcl818_private** %3, align 8
  %7 = load %struct.pcl818_private*, %struct.pcl818_private** %3, align 8
  %8 = icmp ne %struct.pcl818_private* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @pcl818_ai_cancel(%struct.comedi_device* %10, i32 %13)
  %15 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %16 = call i32 @pcl818_reset(%struct.comedi_device* %15)
  br label %17

17:                                               ; preds = %9, %1
  %18 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %19 = call i32 @pcl818_free_dma(%struct.comedi_device* %18)
  %20 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %21 = call i32 @comedi_legacy_detach(%struct.comedi_device* %20)
  ret void
}

declare dso_local i32 @pcl818_ai_cancel(%struct.comedi_device*, i32) #1

declare dso_local i32 @pcl818_reset(%struct.comedi_device*) #1

declare dso_local i32 @pcl818_free_dma(%struct.comedi_device*) #1

declare dso_local i32 @comedi_legacy_detach(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
