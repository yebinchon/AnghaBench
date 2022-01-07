; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i32, %struct.comedi_subdevice*, %struct.labpc_private*, %struct.labpc_boardinfo* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64 }
%struct.labpc_private = type { i32, i32 (%struct.comedi_device.0*, i32)*, i32, i64, i64, i32 (%struct.comedi_device.1*, i32, i32)* }
%struct.comedi_device.0 = type opaque
%struct.comedi_device.1 = type opaque
%struct.labpc_boardinfo = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"premature interrupt\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@STAT1_REG = common dso_local global i32 0, align 4
@STAT2_REG = common dso_local global i32 0, align 4
@STAT1_GATA0 = common dso_local global i32 0, align 4
@STAT1_CNTINT = common dso_local global i32 0, align 4
@STAT1_OVERFLOW = common dso_local global i32 0, align 4
@STAT1_OVERRUN = common dso_local global i32 0, align 4
@STAT1_DAVAIL = common dso_local global i32 0, align 4
@STAT2_OUTA1 = common dso_local global i32 0, align 4
@STAT2_FIFONHF = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@ADC_FIFO_CLEAR_REG = common dso_local global i32 0, align 4
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"overrun\0A\00", align 1
@isa_dma_transfer = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"handled timer interrupt?\0A\00", align 1
@TIMER_CLEAR_REG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"overflow\0A\00", align 1
@TRIG_EXT = common dso_local global i64 0, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @labpc_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @labpc_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.labpc_boardinfo*, align 8
  %8 = alloca %struct.labpc_private*, align 8
  %9 = alloca %struct.comedi_subdevice*, align 8
  %10 = alloca %struct.comedi_async*, align 8
  %11 = alloca %struct.comedi_cmd*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.comedi_device*
  store %struct.comedi_device* %13, %struct.comedi_device** %6, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 4
  %16 = load %struct.labpc_boardinfo*, %struct.labpc_boardinfo** %15, align 8
  store %struct.labpc_boardinfo* %16, %struct.labpc_boardinfo** %7, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 3
  %19 = load %struct.labpc_private*, %struct.labpc_private** %18, align 8
  store %struct.labpc_private* %19, %struct.labpc_private** %8, align 8
  %20 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 2
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %21, align 8
  store %struct.comedi_subdevice* %22, %struct.comedi_subdevice** %9, align 8
  %23 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %2
  %28 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %32, i32* %3, align 4
  br label %225

33:                                               ; preds = %2
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %35 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %34, i32 0, i32 0
  %36 = load %struct.comedi_async*, %struct.comedi_async** %35, align 8
  store %struct.comedi_async* %36, %struct.comedi_async** %10, align 8
  %37 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %38 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %37, i32 0, i32 1
  store %struct.comedi_cmd* %38, %struct.comedi_cmd** %11, align 8
  %39 = load %struct.labpc_private*, %struct.labpc_private** %8, align 8
  %40 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %39, i32 0, i32 1
  %41 = load i32 (%struct.comedi_device.0*, i32)*, i32 (%struct.comedi_device.0*, i32)** %40, align 8
  %42 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %43 = bitcast %struct.comedi_device* %42 to %struct.comedi_device.0*
  %44 = load i32, i32* @STAT1_REG, align 4
  %45 = call i32 %41(%struct.comedi_device.0* %43, i32 %44)
  %46 = load %struct.labpc_private*, %struct.labpc_private** %8, align 8
  %47 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.labpc_boardinfo*, %struct.labpc_boardinfo** %7, align 8
  %49 = getelementptr inbounds %struct.labpc_boardinfo, %struct.labpc_boardinfo* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %33
  %53 = load %struct.labpc_private*, %struct.labpc_private** %8, align 8
  %54 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %53, i32 0, i32 1
  %55 = load i32 (%struct.comedi_device.0*, i32)*, i32 (%struct.comedi_device.0*, i32)** %54, align 8
  %56 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %57 = bitcast %struct.comedi_device* %56 to %struct.comedi_device.0*
  %58 = load i32, i32* @STAT2_REG, align 4
  %59 = call i32 %55(%struct.comedi_device.0* %57, i32 %58)
  %60 = load %struct.labpc_private*, %struct.labpc_private** %8, align 8
  %61 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %52, %33
  %63 = load %struct.labpc_private*, %struct.labpc_private** %8, align 8
  %64 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @STAT1_GATA0, align 4
  %67 = load i32, i32* @STAT1_CNTINT, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @STAT1_OVERFLOW, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @STAT1_OVERRUN, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @STAT1_DAVAIL, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %65, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %62
  %78 = load %struct.labpc_private*, %struct.labpc_private** %8, align 8
  %79 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @STAT2_OUTA1, align 4
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %77
  %85 = load %struct.labpc_private*, %struct.labpc_private** %8, align 8
  %86 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @STAT2_FIFONHF, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* @IRQ_NONE, align 4
  store i32 %92, i32* %3, align 4
  br label %225

93:                                               ; preds = %84, %77, %62
  %94 = load %struct.labpc_private*, %struct.labpc_private** %8, align 8
  %95 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @STAT1_OVERRUN, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %121

100:                                              ; preds = %93
  %101 = load %struct.labpc_private*, %struct.labpc_private** %8, align 8
  %102 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %101, i32 0, i32 5
  %103 = load i32 (%struct.comedi_device.1*, i32, i32)*, i32 (%struct.comedi_device.1*, i32, i32)** %102, align 8
  %104 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %105 = bitcast %struct.comedi_device* %104 to %struct.comedi_device.1*
  %106 = load i32, i32* @ADC_FIFO_CLEAR_REG, align 4
  %107 = call i32 %103(%struct.comedi_device.1* %105, i32 1, i32 %106)
  %108 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %109 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %110 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %114 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %115 = call i32 @comedi_handle_events(%struct.comedi_device* %113, %struct.comedi_subdevice* %114)
  %116 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %117 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @dev_err(i32 %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %120 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %120, i32* %3, align 4
  br label %225

121:                                              ; preds = %93
  %122 = load %struct.labpc_private*, %struct.labpc_private** %8, align 8
  %123 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @isa_dma_transfer, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %129 = call i32 @labpc_handle_dma_status(%struct.comedi_device* %128)
  br label %133

130:                                              ; preds = %121
  %131 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %132 = call i32 @labpc_drain_fifo(%struct.comedi_device* %131)
  br label %133

133:                                              ; preds = %130, %127
  %134 = load %struct.labpc_private*, %struct.labpc_private** %8, align 8
  %135 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @STAT1_CNTINT, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %133
  %141 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %142 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @dev_err(i32 %143, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %145 = load %struct.labpc_private*, %struct.labpc_private** %8, align 8
  %146 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %145, i32 0, i32 5
  %147 = load i32 (%struct.comedi_device.1*, i32, i32)*, i32 (%struct.comedi_device.1*, i32, i32)** %146, align 8
  %148 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %149 = bitcast %struct.comedi_device* %148 to %struct.comedi_device.1*
  %150 = load i32, i32* @TIMER_CLEAR_REG, align 4
  %151 = call i32 %147(%struct.comedi_device.1* %149, i32 1, i32 %150)
  br label %152

152:                                              ; preds = %140, %133
  %153 = load %struct.labpc_private*, %struct.labpc_private** %8, align 8
  %154 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @STAT1_OVERFLOW, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %180

159:                                              ; preds = %152
  %160 = load %struct.labpc_private*, %struct.labpc_private** %8, align 8
  %161 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %160, i32 0, i32 5
  %162 = load i32 (%struct.comedi_device.1*, i32, i32)*, i32 (%struct.comedi_device.1*, i32, i32)** %161, align 8
  %163 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %164 = bitcast %struct.comedi_device* %163 to %struct.comedi_device.1*
  %165 = load i32, i32* @ADC_FIFO_CLEAR_REG, align 4
  %166 = call i32 %162(%struct.comedi_device.1* %164, i32 1, i32 %165)
  %167 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %168 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %169 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 8
  %172 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %173 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %174 = call i32 @comedi_handle_events(%struct.comedi_device* %172, %struct.comedi_subdevice* %173)
  %175 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %176 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @dev_err(i32 %177, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %179 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %179, i32* %3, align 4
  br label %225

180:                                              ; preds = %152
  %181 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %182 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @TRIG_EXT, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %202

186:                                              ; preds = %180
  %187 = load %struct.labpc_private*, %struct.labpc_private** %8, align 8
  %188 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @STAT2_OUTA1, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %201

193:                                              ; preds = %186
  %194 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %195 = call i32 @labpc_drain_dregs(%struct.comedi_device* %194)
  %196 = load i32, i32* @COMEDI_CB_EOA, align 4
  %197 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %198 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 8
  br label %201

201:                                              ; preds = %193, %186
  br label %202

202:                                              ; preds = %201, %180
  %203 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %204 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @TRIG_COUNT, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %220

208:                                              ; preds = %202
  %209 = load %struct.labpc_private*, %struct.labpc_private** %8, align 8
  %210 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %209, i32 0, i32 4
  %211 = load i64, i64* %210, align 8
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %208
  %214 = load i32, i32* @COMEDI_CB_EOA, align 4
  %215 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %216 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = or i32 %217, %214
  store i32 %218, i32* %216, align 8
  br label %219

219:                                              ; preds = %213, %208
  br label %220

220:                                              ; preds = %219, %202
  %221 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %222 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %223 = call i32 @comedi_handle_events(%struct.comedi_device* %221, %struct.comedi_subdevice* %222)
  %224 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %224, i32* %3, align 4
  br label %225

225:                                              ; preds = %220, %159, %100, %91, %27
  %226 = load i32, i32* %3, align 4
  ret i32 %226
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @labpc_handle_dma_status(%struct.comedi_device*) #1

declare dso_local i32 @labpc_drain_fifo(%struct.comedi_device*) #1

declare dso_local i32 @labpc_drain_dregs(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
