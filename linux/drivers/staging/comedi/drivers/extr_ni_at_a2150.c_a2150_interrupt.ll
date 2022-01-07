; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_at_a2150.c_a2150_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_at_a2150.c_a2150_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, %struct.comedi_subdevice*, %struct.a2150_private* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64 }
%struct.a2150_private = type { i32, %struct.comedi_isadma* }
%struct.comedi_isadma = type { %struct.comedi_isadma_desc* }
%struct.comedi_isadma_desc = type { i16*, i32, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@STATUS_REG = common dso_local global i64 0, align 8
@INTR_BIT = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@OVFL_BIT = common dso_local global i32 0, align 4
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@DMA_TC_BIT = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@TRIG_NONE = common dso_local global i64 0, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@DMA_TC_CLEAR_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @a2150_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a2150_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.a2150_private*, align 8
  %8 = alloca %struct.comedi_isadma*, align 8
  %9 = alloca %struct.comedi_isadma_desc*, align 8
  %10 = alloca %struct.comedi_subdevice*, align 8
  %11 = alloca %struct.comedi_async*, align 8
  %12 = alloca %struct.comedi_cmd*, align 8
  %13 = alloca i16*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i16, align 2
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to %struct.comedi_device*
  store %struct.comedi_device* %22, %struct.comedi_device** %6, align 8
  %23 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 3
  %25 = load %struct.a2150_private*, %struct.a2150_private** %24, align 8
  store %struct.a2150_private* %25, %struct.a2150_private** %7, align 8
  %26 = load %struct.a2150_private*, %struct.a2150_private** %7, align 8
  %27 = getelementptr inbounds %struct.a2150_private, %struct.a2150_private* %26, i32 0, i32 1
  %28 = load %struct.comedi_isadma*, %struct.comedi_isadma** %27, align 8
  store %struct.comedi_isadma* %28, %struct.comedi_isadma** %8, align 8
  %29 = load %struct.comedi_isadma*, %struct.comedi_isadma** %8, align 8
  %30 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %29, i32 0, i32 0
  %31 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %30, align 8
  %32 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %31, i64 0
  store %struct.comedi_isadma_desc* %32, %struct.comedi_isadma_desc** %9, align 8
  %33 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 2
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %34, align 8
  store %struct.comedi_subdevice* %35, %struct.comedi_subdevice** %10, align 8
  %36 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %37 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %36, i32 0, i32 0
  %38 = load %struct.comedi_async*, %struct.comedi_async** %37, align 8
  store %struct.comedi_async* %38, %struct.comedi_async** %11, align 8
  %39 = load %struct.comedi_async*, %struct.comedi_async** %11, align 8
  %40 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %39, i32 0, i32 1
  store %struct.comedi_cmd* %40, %struct.comedi_cmd** %12, align 8
  %41 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %9, align 8
  %42 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %41, i32 0, i32 0
  %43 = load i16*, i16** %42, align 8
  store i16* %43, i16** %13, align 8
  %44 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %2
  %49 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %49, i32* %3, align 4
  br label %218

50:                                               ; preds = %2
  %51 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %52 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @STATUS_REG, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @inw(i64 %55)
  store i32 %56, i32* %19, align 4
  %57 = load i32, i32* %19, align 4
  %58 = load i32, i32* @INTR_BIT, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* @IRQ_NONE, align 4
  store i32 %62, i32* %3, align 4
  br label %218

63:                                               ; preds = %50
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* @OVFL_BIT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %70 = load %struct.comedi_async*, %struct.comedi_async** %11, align 8
  %71 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %75 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %76 = call i32 @comedi_handle_events(%struct.comedi_device* %74, %struct.comedi_subdevice* %75)
  br label %77

77:                                               ; preds = %68, %63
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* @DMA_TC_BIT, align 4
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %84 = load %struct.comedi_async*, %struct.comedi_async** %11, align 8
  %85 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %89 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %90 = call i32 @comedi_handle_events(%struct.comedi_device* %88, %struct.comedi_subdevice* %89)
  %91 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %91, i32* %3, align 4
  br label %218

92:                                               ; preds = %77
  %93 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %9, align 8
  %94 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @comedi_isadma_disable(i32 %95)
  store i32 %96, i32* %16, align 4
  %97 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %98 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %9, align 8
  %99 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %97, i32 %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %104 = load i32, i32* %16, align 4
  %105 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %103, i32 %104)
  %106 = sub i32 %102, %105
  store i32 %106, i32* %15, align 4
  %107 = load %struct.a2150_private*, %struct.a2150_private** %7, align 8
  %108 = getelementptr inbounds %struct.a2150_private, %struct.a2150_private* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %15, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %92
  %113 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %114 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @TRIG_COUNT, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load %struct.a2150_private*, %struct.a2150_private** %7, align 8
  %120 = getelementptr inbounds %struct.a2150_private, %struct.a2150_private* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %15, align 4
  br label %122

122:                                              ; preds = %118, %112, %92
  store i32 0, i32* %17, align 4
  %123 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %124 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @TRIG_NONE, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %122
  %129 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %130 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %9, align 8
  %131 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %129, i32 %132)
  store i32 %133, i32* %17, align 4
  br label %153

134:                                              ; preds = %122
  %135 = load %struct.a2150_private*, %struct.a2150_private** %7, align 8
  %136 = getelementptr inbounds %struct.a2150_private, %struct.a2150_private* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %14, align 4
  %139 = icmp ugt i32 %137, %138
  br i1 %139, label %140, label %152

140:                                              ; preds = %134
  %141 = load %struct.a2150_private*, %struct.a2150_private** %7, align 8
  %142 = getelementptr inbounds %struct.a2150_private, %struct.a2150_private* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %14, align 4
  %145 = sub i32 %143, %144
  store i32 %145, i32* %17, align 4
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* %14, align 4
  %148 = icmp ugt i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %140
  %150 = load i32, i32* %14, align 4
  store i32 %150, i32* %17, align 4
  br label %151

151:                                              ; preds = %149, %140
  br label %152

152:                                              ; preds = %151, %134
  br label %153

153:                                              ; preds = %152, %128
  %154 = load i32, i32* %16, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  store i32 0, i32* %17, align 4
  br label %157

157:                                              ; preds = %156, %153
  store i32 0, i32* %20, align 4
  br label %158

158:                                              ; preds = %193, %157
  %159 = load i32, i32* %20, align 4
  %160 = load i32, i32* %15, align 4
  %161 = icmp ult i32 %159, %160
  br i1 %161, label %162, label %196

162:                                              ; preds = %158
  %163 = load i16*, i16** %13, align 8
  %164 = load i32, i32* %20, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i16, i16* %163, i64 %165
  %167 = load i16, i16* %166, align 2
  store i16 %167, i16* %18, align 2
  %168 = load i16, i16* %18, align 2
  %169 = zext i16 %168 to i32
  %170 = xor i32 %169, 32768
  %171 = trunc i32 %170 to i16
  store i16 %171, i16* %18, align 2
  %172 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %173 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %172, i16* %18, i32 1)
  %174 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %175 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @TRIG_COUNT, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %192

179:                                              ; preds = %162
  %180 = load %struct.a2150_private*, %struct.a2150_private** %7, align 8
  %181 = getelementptr inbounds %struct.a2150_private, %struct.a2150_private* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = add i32 %182, -1
  store i32 %183, i32* %181, align 8
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %179
  %186 = load i32, i32* @COMEDI_CB_EOA, align 4
  %187 = load %struct.comedi_async*, %struct.comedi_async** %11, align 8
  %188 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 8
  br label %196

191:                                              ; preds = %179
  br label %192

192:                                              ; preds = %191, %162
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %20, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %20, align 4
  br label %158

196:                                              ; preds = %185, %158
  %197 = load i32, i32* %17, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %196
  %200 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %201 = load i32, i32* %17, align 4
  %202 = call i32 @comedi_samples_to_bytes(%struct.comedi_subdevice* %200, i32 %201)
  %203 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %9, align 8
  %204 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 8
  %205 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %9, align 8
  %206 = call i32 @comedi_isadma_program(%struct.comedi_isadma_desc* %205)
  br label %207

207:                                              ; preds = %199, %196
  %208 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %209 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %210 = call i32 @comedi_handle_events(%struct.comedi_device* %208, %struct.comedi_subdevice* %209)
  %211 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %212 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @DMA_TC_CLEAR_REG, align 8
  %215 = add nsw i64 %213, %214
  %216 = call i32 @outw(i32 0, i64 %215)
  %217 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %217, i32* %3, align 4
  br label %218

218:                                              ; preds = %207, %82, %61, %48
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_isadma_disable(i32) #1

declare dso_local i32 @comedi_bytes_to_samples(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i16*, i32) #1

declare dso_local i32 @comedi_samples_to_bytes(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_isadma_program(%struct.comedi_isadma_desc*) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
