; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das1800.c_das1800_flush_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das1800.c_das1800_flush_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.das1800_private* }
%struct.das1800_private = type { i32, %struct.comedi_isadma* }
%struct.comedi_isadma = type { i64, %struct.comedi_isadma_desc* }
%struct.comedi_isadma_desc = type { i32 }
%struct.comedi_subdevice = type { i32 }

@DMA_DUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @das1800_flush_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @das1800_flush_dma(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.das1800_private*, align 8
  %6 = alloca %struct.comedi_isadma*, align 8
  %7 = alloca %struct.comedi_isadma_desc*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 0
  %11 = load %struct.das1800_private*, %struct.das1800_private** %10, align 8
  store %struct.das1800_private* %11, %struct.das1800_private** %5, align 8
  %12 = load %struct.das1800_private*, %struct.das1800_private** %5, align 8
  %13 = getelementptr inbounds %struct.das1800_private, %struct.das1800_private* %12, i32 0, i32 1
  %14 = load %struct.comedi_isadma*, %struct.comedi_isadma** %13, align 8
  store %struct.comedi_isadma* %14, %struct.comedi_isadma** %6, align 8
  %15 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %16 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %15, i32 0, i32 1
  %17 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %16, align 8
  %18 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %19 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %17, i64 %20
  store %struct.comedi_isadma_desc* %21, %struct.comedi_isadma_desc** %7, align 8
  %22 = load %struct.das1800_private*, %struct.das1800_private** %5, align 8
  %23 = getelementptr inbounds %struct.das1800_private, %struct.das1800_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @DMA_DUAL, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %29 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %7, align 8
  %30 = call i32 @das1800_flush_dma_channel(%struct.comedi_device* %27, %struct.comedi_subdevice* %28, %struct.comedi_isadma_desc* %29)
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %2
  %34 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %35 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 1, %36
  %38 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %39 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %41 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %40, i32 0, i32 1
  %42 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %41, align 8
  %43 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %44 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %42, i64 %45
  store %struct.comedi_isadma_desc* %46, %struct.comedi_isadma_desc** %7, align 8
  %47 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %49 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %7, align 8
  %50 = call i32 @das1800_flush_dma_channel(%struct.comedi_device* %47, %struct.comedi_subdevice* %48, %struct.comedi_isadma_desc* %49)
  br label %51

51:                                               ; preds = %33, %2
  %52 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %54 = call i32 @das1800_handle_fifo_not_empty(%struct.comedi_device* %52, %struct.comedi_subdevice* %53)
  ret void
}

declare dso_local i32 @das1800_flush_dma_channel(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_isadma_desc*) #1

declare dso_local i32 @das1800_handle_fifo_not_empty(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
