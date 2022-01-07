; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_handle_ai_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_handle_ai_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i32, %struct.comedi_subdevice*, %struct.pcidas64_private*, %struct.pcidas64_board* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i64, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i64, i64 }
%struct.pcidas64_private = type { i64, i64 }
%struct.pcidas64_board = type { i64 }

@ADC_OVERRUN_BIT = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [14 x i8] c"fifo overrun\0A\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@PLX_REG_DMACSR1 = common dso_local global i64 0, align 8
@PLX_INTCSR_DMA1IA = common dso_local global i32 0, align 4
@PLX_DMACSR_ENABLE = common dso_local global i32 0, align 4
@PLX_DMACSR_CLEARINTR = common dso_local global i32 0, align 4
@ADC_DONE_BIT = common dso_local global i16 0, align 2
@CMDF_WAKE_EOS = common dso_local global i32 0, align 4
@ADC_INTR_PENDING_BIT = common dso_local global i16 0, align 2
@LAYOUT_4020 = common dso_local global i64 0, align 8
@TRIG_COUNT = common dso_local global i64 0, align 8
@TRIG_EXT = common dso_local global i64 0, align 8
@ADC_STOP_BIT = common dso_local global i16 0, align 2
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i16, i32)* @handle_ai_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_ai_interrupt(%struct.comedi_device* %0, i16 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcidas64_board*, align 8
  %8 = alloca %struct.pcidas64_private*, align 8
  %9 = alloca %struct.comedi_subdevice*, align 8
  %10 = alloca %struct.comedi_async*, align 8
  %11 = alloca %struct.comedi_cmd*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32 %2, i32* %6, align 4
  %14 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 4
  %16 = load %struct.pcidas64_board*, %struct.pcidas64_board** %15, align 8
  store %struct.pcidas64_board* %16, %struct.pcidas64_board** %7, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 3
  %19 = load %struct.pcidas64_private*, %struct.pcidas64_private** %18, align 8
  store %struct.pcidas64_private* %19, %struct.pcidas64_private** %8, align 8
  %20 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 2
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %21, align 8
  store %struct.comedi_subdevice* %22, %struct.comedi_subdevice** %9, align 8
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %24 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %23, i32 0, i32 0
  %25 = load %struct.comedi_async*, %struct.comedi_async** %24, align 8
  store %struct.comedi_async* %25, %struct.comedi_async** %10, align 8
  %26 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %27 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %26, i32 0, i32 2
  store %struct.comedi_cmd* %27, %struct.comedi_cmd** %11, align 8
  %28 = load i16, i16* %5, align 2
  %29 = zext i16 %28 to i32
  %30 = load i16, i16* @ADC_OVERRUN_BIT, align 2
  %31 = zext i16 %30 to i32
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %3
  %35 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %40 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %41 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %34, %3
  %45 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %46 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 0
  %47 = load i64, i64* %13, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load %struct.pcidas64_private*, %struct.pcidas64_private** %8, align 8
  %50 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PLX_REG_DMACSR1, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @readb(i64 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @PLX_INTCSR_DMA1IA, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %44
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @PLX_DMACSR_ENABLE, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @PLX_DMACSR_CLEARINTR, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.pcidas64_private*, %struct.pcidas64_private** %8, align 8
  %66 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @PLX_REG_DMACSR1, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writeb(i32 %64, i64 %69)
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @PLX_DMACSR_ENABLE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %59
  %76 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %77 = call i32 @drain_dma_buffers(%struct.comedi_device* %76, i32 1)
  br label %78

78:                                               ; preds = %75, %59
  br label %79

79:                                               ; preds = %78, %44
  %80 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %81 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %80, i32 0, i32 0
  %82 = load i64, i64* %13, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load i16, i16* %5, align 2
  %85 = zext i16 %84 to i32
  %86 = load i16, i16* @ADC_DONE_BIT, align 2
  %87 = zext i16 %86 to i32
  %88 = and i32 %85, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %110, label %90

90:                                               ; preds = %79
  %91 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %92 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @CMDF_WAKE_EOS, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %132

97:                                               ; preds = %90
  %98 = load i16, i16* %5, align 2
  %99 = zext i16 %98 to i32
  %100 = load i16, i16* @ADC_INTR_PENDING_BIT, align 2
  %101 = zext i16 %100 to i32
  %102 = and i32 %99, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %132

104:                                              ; preds = %97
  %105 = load %struct.pcidas64_board*, %struct.pcidas64_board** %7, align 8
  %106 = getelementptr inbounds %struct.pcidas64_board, %struct.pcidas64_board* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @LAYOUT_4020, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %132

110:                                              ; preds = %104, %79
  %111 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %112 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %111, i32 0, i32 0
  %113 = load i64, i64* %13, align 8
  %114 = call i32 @spin_lock_irqsave(i32* %112, i64 %113)
  %115 = load %struct.pcidas64_private*, %struct.pcidas64_private** %8, align 8
  %116 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %110
  %120 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %121 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %120, i32 0, i32 0
  %122 = load i64, i64* %13, align 8
  %123 = call i32 @spin_unlock_irqrestore(i32* %121, i64 %122)
  %124 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %125 = call i32 @pio_drain_ai_fifo(%struct.comedi_device* %124)
  br label %131

126:                                              ; preds = %110
  %127 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %128 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %127, i32 0, i32 0
  %129 = load i64, i64* %13, align 8
  %130 = call i32 @spin_unlock_irqrestore(i32* %128, i64 %129)
  br label %131

131:                                              ; preds = %126, %119
  br label %132

132:                                              ; preds = %131, %104, %97, %90
  %133 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %134 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @TRIG_COUNT, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %146

138:                                              ; preds = %132
  %139 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %140 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %143 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp sge i64 %141, %144
  br i1 %145, label %159, label %146

146:                                              ; preds = %138, %132
  %147 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %148 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @TRIG_EXT, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %165

152:                                              ; preds = %146
  %153 = load i16, i16* %5, align 2
  %154 = zext i16 %153 to i32
  %155 = load i16, i16* @ADC_STOP_BIT, align 2
  %156 = zext i16 %155 to i32
  %157 = and i32 %154, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %152, %138
  %160 = load i32, i32* @COMEDI_CB_EOA, align 4
  %161 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %162 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 8
  br label %165

165:                                              ; preds = %159, %152, %146
  %166 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %167 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %168 = call i32 @comedi_handle_events(%struct.comedi_device* %166, %struct.comedi_subdevice* %167)
  ret void
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @drain_dma_buffers(%struct.comedi_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pio_drain_ai_fifo(%struct.comedi_device*) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
