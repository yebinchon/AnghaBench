; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl818.c_pcl818_handle_eoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl818.c_pcl818_handle_eoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"A/D mode1/3 IRQ without DRDY!\0A\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @pcl818_handle_eoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcl818_handle_eoc(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %8 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %9 = call i64 @pcl818_ai_eoc(%struct.comedi_device* %7, %struct.comedi_subdevice* %8, i32* null, i32 0)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %18 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %16
  store i32 %22, i32* %20, align 4
  br label %32

23:                                               ; preds = %2
  %24 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %26 = call i32 @pcl818_ai_get_sample(%struct.comedi_device* %24, %struct.comedi_subdevice* %25, i32* %5)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @pcl818_ai_write_sample(%struct.comedi_device* %27, %struct.comedi_subdevice* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %23, %11
  ret void
}

declare dso_local i64 @pcl818_ai_eoc(%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @pcl818_ai_get_sample(%struct.comedi_device*, %struct.comedi_subdevice*, i32*) #1

declare dso_local i32 @pcl818_ai_write_sample(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
