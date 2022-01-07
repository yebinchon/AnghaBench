; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_load_ao_dma_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_load_ao_dma_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice*, %struct.pcidas64_private* }
%struct.comedi_subdevice = type { i32 }
%struct.pcidas64_private = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.comedi_cmd = type { i32 }

@DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@PLX_DMADPR_CHAINEND = common dso_local global i32 0, align 4
@AO_DMA_RING_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_cmd*)* @load_ao_dma_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_ao_dma_buffer(%struct.comedi_device* %0, %struct.comedi_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_cmd*, align 8
  %6 = alloca %struct.pcidas64_private*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_cmd* %1, %struct.comedi_cmd** %5, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 1
  %15 = load %struct.pcidas64_private*, %struct.pcidas64_private** %14, align 8
  store %struct.pcidas64_private* %15, %struct.pcidas64_private** %6, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 0
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %17, align 8
  store %struct.comedi_subdevice* %18, %struct.comedi_subdevice** %7, align 8
  %19 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %20 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %23 = call i32 @prev_ao_dma_index(%struct.comedi_device* %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %26 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %27 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  %34 = call i32 @cb_pcidas64_ao_fill_buffer(%struct.comedi_device* %24, %struct.comedi_subdevice* %25, i32 %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %101

38:                                               ; preds = %2
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @comedi_samples_to_bytes(%struct.comedi_subdevice* %39, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i8* @cpu_to_le32(i32 %42)
  %44 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %45 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i8* %43, i8** %50, align 8
  %51 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %52 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @le32_to_cpu(i8* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* @PLX_DMADPR_CHAINEND, align 4
  %61 = load i32, i32* %12, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i8* @cpu_to_le32(i32 %63)
  %65 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %66 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i8* %64, i8** %71, align 8
  %72 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %73 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @le32_to_cpu(i8* %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* @PLX_DMADPR_CHAINEND, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %12, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i8* @cpu_to_le32(i32 %85)
  %87 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %88 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i8* %86, i8** %93, align 8
  %94 = load i32, i32* %8, align 4
  %95 = add i32 %94, 1
  %96 = load i32, i32* @AO_DMA_RING_COUNT, align 4
  %97 = urem i32 %95, %96
  %98 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %99 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %38, %37
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @prev_ao_dma_index(%struct.comedi_device*) #1

declare dso_local i32 @cb_pcidas64_ao_fill_buffer(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32) #1

declare dso_local i32 @comedi_samples_to_bytes(%struct.comedi_subdevice*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
