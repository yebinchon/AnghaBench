; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl816.c_pcl816_ai_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl816.c_pcl816_ai_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i64, %struct.pcl816_private* }
%struct.pcl816_private = type { i32, i64 }
%struct.comedi_subdevice = type { i32 }

@PCL816_CTRL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pcl816_ai_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl816_ai_cancel(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.pcl816_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 2
  %9 = load %struct.pcl816_private*, %struct.pcl816_private** %8, align 8
  store %struct.pcl816_private* %9, %struct.pcl816_private** %6, align 8
  %10 = load %struct.pcl816_private*, %struct.pcl816_private** %6, align 8
  %11 = getelementptr inbounds %struct.pcl816_private, %struct.pcl816_private* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

15:                                               ; preds = %2
  %16 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PCL816_CTRL_REG, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outb(i32 0, i64 %20)
  %22 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %23 = call i32 @pcl816_ai_clear_eoc(%struct.comedi_device* %22)
  %24 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @comedi_8254_pacer_enable(i32 %26, i32 1, i32 2, i32 0)
  %28 = load %struct.pcl816_private*, %struct.pcl816_private** %6, align 8
  %29 = getelementptr inbounds %struct.pcl816_private, %struct.pcl816_private* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.pcl816_private*, %struct.pcl816_private** %6, align 8
  %31 = getelementptr inbounds %struct.pcl816_private, %struct.pcl816_private* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %15, %14
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @pcl816_ai_clear_eoc(%struct.comedi_device*) #1

declare dso_local i32 @comedi_8254_pacer_enable(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
