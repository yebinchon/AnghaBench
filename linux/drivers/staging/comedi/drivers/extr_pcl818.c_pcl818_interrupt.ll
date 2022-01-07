; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl818.c_pcl818_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl818.c_pcl818_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.comedi_subdevice*, %struct.pcl818_private* }
%struct.comedi_subdevice = type { i32 (%struct.comedi_device.0*, %struct.comedi_subdevice*)*, %struct.TYPE_2__* }
%struct.comedi_device.0 = type opaque
%struct.TYPE_2__ = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32 }
%struct.pcl818_private = type { i64, i64, i64, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pcl818_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl818_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.pcl818_private*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca %struct.comedi_cmd*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.comedi_device*
  store %struct.comedi_device* %11, %struct.comedi_device** %6, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 2
  %14 = load %struct.pcl818_private*, %struct.pcl818_private** %13, align 8
  store %struct.pcl818_private* %14, %struct.pcl818_private** %7, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 1
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %16, align 8
  store %struct.comedi_subdevice* %17, %struct.comedi_subdevice** %8, align 8
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %19 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store %struct.comedi_cmd* %21, %struct.comedi_cmd** %9, align 8
  %22 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.pcl818_private*, %struct.pcl818_private** %7, align 8
  %28 = getelementptr inbounds %struct.pcl818_private, %struct.pcl818_private* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26, %2
  %32 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %33 = call i32 @pcl818_ai_clear_eoc(%struct.comedi_device* %32)
  %34 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %34, i32* %3, align 4
  br label %86

35:                                               ; preds = %26
  %36 = load %struct.pcl818_private*, %struct.pcl818_private** %7, align 8
  %37 = getelementptr inbounds %struct.pcl818_private, %struct.pcl818_private* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %42 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %45 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 4
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 0
  %50 = load i32 (%struct.comedi_device.0*, %struct.comedi_subdevice*)*, i32 (%struct.comedi_device.0*, %struct.comedi_subdevice*)** %49, align 8
  %51 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %52 = bitcast %struct.comedi_device* %51 to %struct.comedi_device.0*
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %54 = call i32 %50(%struct.comedi_device.0* %52, %struct.comedi_subdevice* %53)
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %55, i32* %3, align 4
  br label %86

56:                                               ; preds = %35
  %57 = load %struct.pcl818_private*, %struct.pcl818_private** %7, align 8
  %58 = getelementptr inbounds %struct.pcl818_private, %struct.pcl818_private* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %64 = call i32 @pcl818_handle_dma(%struct.comedi_device* %62, %struct.comedi_subdevice* %63)
  br label %79

65:                                               ; preds = %56
  %66 = load %struct.pcl818_private*, %struct.pcl818_private** %7, align 8
  %67 = getelementptr inbounds %struct.pcl818_private, %struct.pcl818_private* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %73 = call i32 @pcl818_handle_fifo(%struct.comedi_device* %71, %struct.comedi_subdevice* %72)
  br label %78

74:                                               ; preds = %65
  %75 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %76 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %77 = call i32 @pcl818_handle_eoc(%struct.comedi_device* %75, %struct.comedi_subdevice* %76)
  br label %78

78:                                               ; preds = %74, %70
  br label %79

79:                                               ; preds = %78, %61
  %80 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %81 = call i32 @pcl818_ai_clear_eoc(%struct.comedi_device* %80)
  %82 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %83 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %84 = call i32 @comedi_handle_events(%struct.comedi_device* %82, %struct.comedi_subdevice* %83)
  %85 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %79, %40, %31
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @pcl818_ai_clear_eoc(%struct.comedi_device*) #1

declare dso_local i32 @pcl818_handle_dma(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @pcl818_handle_fifo(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @pcl818_handle_eoc(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
