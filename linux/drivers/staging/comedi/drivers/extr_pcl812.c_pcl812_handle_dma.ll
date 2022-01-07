; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl812.c_pcl812_handle_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl812.c_pcl812_handle_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcl812_private* }
%struct.pcl812_private = type { i32, %struct.comedi_isadma* }
%struct.comedi_isadma = type { i64, %struct.comedi_isadma_desc* }
%struct.comedi_isadma_desc = type { i32, i32 }
%struct.comedi_subdevice = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @pcl812_handle_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcl812_handle_dma(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.pcl812_private*, align 8
  %6 = alloca %struct.comedi_isadma*, align 8
  %7 = alloca %struct.comedi_isadma_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load %struct.pcl812_private*, %struct.pcl812_private** %11, align 8
  store %struct.pcl812_private* %12, %struct.pcl812_private** %5, align 8
  %13 = load %struct.pcl812_private*, %struct.pcl812_private** %5, align 8
  %14 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %13, i32 0, i32 1
  %15 = load %struct.comedi_isadma*, %struct.comedi_isadma** %14, align 8
  store %struct.comedi_isadma* %15, %struct.comedi_isadma** %6, align 8
  %16 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %17 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %16, i32 0, i32 1
  %18 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %17, align 8
  %19 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %20 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %18, i64 %21
  store %struct.comedi_isadma_desc* %22, %struct.comedi_isadma_desc** %7, align 8
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %24 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %7, align 8
  %25 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %23, i32 %26)
  %28 = load %struct.pcl812_private*, %struct.pcl812_private** %5, align 8
  %29 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub i32 %27, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.pcl812_private*, %struct.pcl812_private** %5, align 8
  %33 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %9, align 4
  %35 = load %struct.pcl812_private*, %struct.pcl812_private** %5, align 8
  %36 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %38 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 1, %39
  %41 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %42 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @pcl812_ai_setup_dma(%struct.comedi_device* %43, %struct.comedi_subdevice* %44, i32 %45)
  %47 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %49 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %7, align 8
  %50 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @transfer_from_dma_buf(%struct.comedi_device* %47, %struct.comedi_subdevice* %48, i32 %51, i32 %52, i32 %53)
  ret void
}

declare dso_local i32 @comedi_bytes_to_samples(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @pcl812_ai_setup_dma(%struct.comedi_device*, %struct.comedi_subdevice*, i32) #1

declare dso_local i32 @transfer_from_dma_buf(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
