; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl812.c_pcl812_ai_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl812.c_pcl812_ai_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i64, %struct.pcl812_private* }
%struct.pcl812_private = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.comedi_subdevice = type { i32 }

@PCL812_CTRL_DISABLE_TRIG = common dso_local global i32 0, align 4
@PCL812_CTRL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pcl812_ai_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl812_ai_cancel(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.pcl812_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 2
  %8 = load %struct.pcl812_private*, %struct.pcl812_private** %7, align 8
  store %struct.pcl812_private* %8, %struct.pcl812_private** %5, align 8
  %9 = load %struct.pcl812_private*, %struct.pcl812_private** %5, align 8
  %10 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.pcl812_private*, %struct.pcl812_private** %5, align 8
  %15 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @comedi_isadma_disable(i32 %18)
  br label %20

20:                                               ; preds = %13, %2
  %21 = load %struct.pcl812_private*, %struct.pcl812_private** %5, align 8
  %22 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PCL812_CTRL_DISABLE_TRIG, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PCL812_CTRL_REG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @outb(i32 %25, i64 %30)
  %32 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @comedi_8254_pacer_enable(i32 %34, i32 1, i32 2, i32 0)
  %36 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %37 = call i32 @pcl812_ai_clear_eoc(%struct.comedi_device* %36)
  ret i32 0
}

declare dso_local i32 @comedi_isadma_disable(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @comedi_8254_pacer_enable(i32, i32, i32, i32) #1

declare dso_local i32 @pcl812_ai_clear_eoc(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
