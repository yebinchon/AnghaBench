; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_handle_ao_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_handle_ao_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.comedi_subdevice*, %struct.pcidas64_private* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i64, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i64 }
%struct.pcidas64_private = type { i64 }

@PLX_REG_DMACSR0 = common dso_local global i64 0, align 8
@PLX_INTCSR_DMA0IA = common dso_local global i32 0, align 4
@PLX_DMACSR_ENABLE = common dso_local global i32 0, align 4
@PLX_DMACSR_DONE = common dso_local global i32 0, align 4
@PLX_DMACSR_CLEARINTR = common dso_local global i32 0, align 4
@DAC_DONE_BIT = common dso_local global i16 0, align 2
@TRIG_COUNT = common dso_local global i64 0, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i16, i32)* @handle_ao_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_ao_interrupt(%struct.comedi_device* %0, i16 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcidas64_private*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca %struct.comedi_async*, align 8
  %10 = alloca %struct.comedi_cmd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32 %2, i32* %6, align 4
  %13 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 2
  %15 = load %struct.pcidas64_private*, %struct.pcidas64_private** %14, align 8
  store %struct.pcidas64_private* %15, %struct.pcidas64_private** %7, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 1
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %17, align 8
  store %struct.comedi_subdevice* %18, %struct.comedi_subdevice** %8, align 8
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %20 = icmp ne %struct.comedi_subdevice* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %139

22:                                               ; preds = %3
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %24 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %23, i32 0, i32 0
  %25 = load %struct.comedi_async*, %struct.comedi_async** %24, align 8
  store %struct.comedi_async* %25, %struct.comedi_async** %9, align 8
  %26 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  %27 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %26, i32 0, i32 2
  store %struct.comedi_cmd* %27, %struct.comedi_cmd** %10, align 8
  %28 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 0
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %33 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PLX_REG_DMACSR0, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readb(i64 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @PLX_INTCSR_DMA0IA, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %92

42:                                               ; preds = %22
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @PLX_DMACSR_ENABLE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @PLX_DMACSR_DONE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @PLX_DMACSR_ENABLE, align 4
  %54 = load i32, i32* @PLX_DMACSR_CLEARINTR, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %57 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PLX_REG_DMACSR0, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writeb(i32 %55, i64 %60)
  br label %70

62:                                               ; preds = %47, %42
  %63 = load i32, i32* @PLX_DMACSR_CLEARINTR, align 4
  %64 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %65 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @PLX_REG_DMACSR0, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writeb(i32 %63, i64 %68)
  br label %70

70:                                               ; preds = %62, %52
  %71 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %72 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %71, i32 0, i32 0
  %73 = load i64, i64* %12, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @PLX_DMACSR_ENABLE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %70
  %80 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %81 = load %struct.comedi_cmd*, %struct.comedi_cmd** %10, align 8
  %82 = call i32 @load_ao_dma(%struct.comedi_device* %80, %struct.comedi_cmd* %81)
  %83 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i64 @ao_dma_needs_restart(%struct.comedi_device* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %89 = call i32 @restart_ao_dma(%struct.comedi_device* %88)
  br label %90

90:                                               ; preds = %87, %79
  br label %91

91:                                               ; preds = %90, %70
  br label %97

92:                                               ; preds = %22
  %93 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %94 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %93, i32 0, i32 0
  %95 = load i64, i64* %12, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  br label %97

97:                                               ; preds = %92, %91
  %98 = load i16, i16* %5, align 2
  %99 = zext i16 %98 to i32
  %100 = load i16, i16* @DAC_DONE_BIT, align 2
  %101 = zext i16 %100 to i32
  %102 = and i32 %99, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %135

104:                                              ; preds = %97
  %105 = load %struct.comedi_cmd*, %struct.comedi_cmd** %10, align 8
  %106 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @TRIG_COUNT, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %104
  %111 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  %112 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.comedi_cmd*, %struct.comedi_cmd** %10, align 8
  %115 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp sge i64 %113, %116
  br i1 %117, label %122, label %118

118:                                              ; preds = %110, %104
  %119 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %120 = call i64 @last_ao_dma_load_completed(%struct.comedi_device* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %118, %110
  %123 = load i32, i32* @COMEDI_CB_EOA, align 4
  %124 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  %125 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %134

128:                                              ; preds = %118
  %129 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %130 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  %131 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 8
  br label %134

134:                                              ; preds = %128, %122
  br label %135

135:                                              ; preds = %134, %97
  %136 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %137 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %138 = call i32 @comedi_handle_events(%struct.comedi_device* %136, %struct.comedi_subdevice* %137)
  br label %139

139:                                              ; preds = %135, %21
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @load_ao_dma(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i64 @ao_dma_needs_restart(%struct.comedi_device*, i32) #1

declare dso_local i32 @restart_ao_dma(%struct.comedi_device*) #1

declare dso_local i64 @last_ao_dma_load_completed(%struct.comedi_device*) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
