; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das1800.c_das1800_ai_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das1800.c_das1800_ai_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, %struct.comedi_subdevice*, %struct.das1800_private* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i64, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i64 }
%struct.das1800_private = type { i32 }

@DAS1800_STATUS = common dso_local global i64 0, align 8
@ADC = common dso_local global i32 0, align 4
@DAS1800_SELECT = common dso_local global i64 0, align 8
@DMA_ENABLED = common dso_local global i32 0, align 4
@FHF = common dso_local global i32 0, align 4
@FNE = common dso_local global i32 0, align 4
@OVF = common dso_local global i32 0, align 4
@CLEAR_INTR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"FIFO overflow\0A\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@CT0TC = common dso_local global i32 0, align 4
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @das1800_ai_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @das1800_ai_handler(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.das1800_private*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.comedi_async*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 3
  %10 = load %struct.das1800_private*, %struct.das1800_private** %9, align 8
  store %struct.das1800_private* %10, %struct.das1800_private** %3, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 2
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  store %struct.comedi_subdevice* %13, %struct.comedi_subdevice** %4, align 8
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 0
  %16 = load %struct.comedi_async*, %struct.comedi_async** %15, align 8
  store %struct.comedi_async* %16, %struct.comedi_async** %5, align 8
  %17 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %18 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %17, i32 0, i32 2
  store %struct.comedi_cmd* %18, %struct.comedi_cmd** %6, align 8
  %19 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DAS1800_STATUS, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @inb(i64 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @ADC, align 4
  %26 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DAS1800_SELECT, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @outb(i32 %25, i64 %30)
  %32 = load %struct.das1800_private*, %struct.das1800_private** %3, align 8
  %33 = getelementptr inbounds %struct.das1800_private, %struct.das1800_private* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @DMA_ENABLED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %1
  %39 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %40 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @das1800_handle_dma(%struct.comedi_device* %39, %struct.comedi_subdevice* %40, i32 %41)
  br label %63

43:                                               ; preds = %1
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @FHF, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %50 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %51 = call i32 @das1800_handle_fifo_half_full(%struct.comedi_device* %49, %struct.comedi_subdevice* %50)
  br label %62

52:                                               ; preds = %43
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @FNE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %60 = call i32 @das1800_handle_fifo_not_empty(%struct.comedi_device* %58, %struct.comedi_subdevice* %59)
  br label %61

61:                                               ; preds = %57, %52
  br label %62

62:                                               ; preds = %61, %48
  br label %63

63:                                               ; preds = %62, %38
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @OVF, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %63
  %69 = load i32, i32* @CLEAR_INTR_MASK, align 4
  %70 = load i32, i32* @OVF, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  %73 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %74 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DAS1800_STATUS, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @outb(i32 %72, i64 %77)
  %79 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %80 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dev_err(i32 %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %84 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %85 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %89 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %90 = call i32 @comedi_handle_events(%struct.comedi_device* %88, %struct.comedi_subdevice* %89)
  br label %152

91:                                               ; preds = %63
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @CT0TC, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %127

96:                                               ; preds = %91
  %97 = load i32, i32* @CLEAR_INTR_MASK, align 4
  %98 = load i32, i32* @CT0TC, align 4
  %99 = xor i32 %98, -1
  %100 = and i32 %97, %99
  %101 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %102 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @DAS1800_STATUS, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @outb(i32 %100, i64 %105)
  %107 = load %struct.das1800_private*, %struct.das1800_private** %3, align 8
  %108 = getelementptr inbounds %struct.das1800_private, %struct.das1800_private* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @DMA_ENABLED, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %96
  %114 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %115 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %116 = call i32 @das1800_flush_dma(%struct.comedi_device* %114, %struct.comedi_subdevice* %115)
  br label %121

117:                                              ; preds = %96
  %118 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %119 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %120 = call i32 @das1800_handle_fifo_not_empty(%struct.comedi_device* %118, %struct.comedi_subdevice* %119)
  br label %121

121:                                              ; preds = %117, %113
  %122 = load i32, i32* @COMEDI_CB_EOA, align 4
  %123 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %124 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %148

127:                                              ; preds = %91
  %128 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %129 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @TRIG_COUNT, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %147

133:                                              ; preds = %127
  %134 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %135 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %138 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp sge i64 %136, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %133
  %142 = load i32, i32* @COMEDI_CB_EOA, align 4
  %143 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %144 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  br label %147

147:                                              ; preds = %141, %133, %127
  br label %148

148:                                              ; preds = %147, %121
  %149 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %150 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %151 = call i32 @comedi_handle_events(%struct.comedi_device* %149, %struct.comedi_subdevice* %150)
  br label %152

152:                                              ; preds = %148, %68
  ret void
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @das1800_handle_dma(%struct.comedi_device*, %struct.comedi_subdevice*, i32) #1

declare dso_local i32 @das1800_handle_fifo_half_full(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @das1800_handle_fifo_not_empty(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @das1800_flush_dma(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
