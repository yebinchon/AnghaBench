; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_prep_ao_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_prep_ao_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice*, %struct.pcidas64_private* }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.pcidas64_private = type { i64, i32* }
%struct.comedi_cmd = type { i64, i64 }

@ADC_QUEUE_CLEAR_REG = common dso_local global i64 0, align 8
@DAC_BUFFER_CLEAR_REG = common dso_local global i64 0, align 8
@DAC_FIFO_SIZE = common dso_local global i32 0, align 4
@DAC_FIFO_REG = common dso_local global i64 0, align 8
@TRIG_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_cmd*)* @prep_ao_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prep_ao_dma(%struct.comedi_device* %0, %struct.comedi_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_cmd*, align 8
  %6 = alloca %struct.pcidas64_private*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_cmd* %1, %struct.comedi_cmd** %5, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 1
  %13 = load %struct.pcidas64_private*, %struct.pcidas64_private** %12, align 8
  store %struct.pcidas64_private* %13, %struct.pcidas64_private** %6, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  store %struct.comedi_subdevice* %16, %struct.comedi_subdevice** %7, align 8
  %17 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %18 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ADC_QUEUE_CLEAR_REG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writew(i32 0, i64 %21)
  %23 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %24 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DAC_BUFFER_CLEAR_REG, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writew(i32 0, i64 %27)
  %29 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %31 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %32 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* @DAC_FIFO_SIZE, align 4
  %35 = call i32 @cb_pcidas64_ao_fill_buffer(%struct.comedi_device* %29, %struct.comedi_subdevice* %30, i32* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %91

39:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %58, %39
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %46 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %53 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DAC_FIFO_REG, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writew(i32 %51, i64 %56)
  br label %58

58:                                               ; preds = %44
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %40

61:                                               ; preds = %40
  %62 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %63 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TRIG_COUNT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %61
  %68 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %69 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %74 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp sge i64 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %91

78:                                               ; preds = %67, %61
  %79 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %80 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %81 = call i32 @load_ao_dma_buffer(%struct.comedi_device* %79, %struct.comedi_cmd* %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 -1, i32* %3, align 4
  br label %91

85:                                               ; preds = %78
  %86 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %87 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %88 = call i32 @load_ao_dma(%struct.comedi_device* %86, %struct.comedi_cmd* %87)
  %89 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %90 = call i32 @dma_start_sync(%struct.comedi_device* %89, i32 0)
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %85, %84, %77, %38
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @cb_pcidas64_ao_fill_buffer(%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32) #1

declare dso_local i32 @load_ao_dma_buffer(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @load_ao_dma(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @dma_start_sync(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
