; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_pcidio.c_nidio_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_pcidio.c_nidio_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i64, i32, i32, %struct.comedi_subdevice*, %struct.nidio96_private* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32 }
%struct.nidio96_private = type { i32, i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@INTERRUPT_AND_WINDOW_STATUS = common dso_local global i64 0, align 8
@GROUP_1_FLAGS = common dso_local global i64 0, align 8
@DATA_LEFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"too much work in interrupt\0A\00", align 1
@MASTER_DMA_AND_INTERRUPT_CONTROL = common dso_local global i64 0, align 8
@INT_EN = common dso_local global i32 0, align 4
@TRANSFER_READY = common dso_local global i32 0, align 4
@GROUP_1_FIFO = common dso_local global i64 0, align 8
@COUNT_EXPIRED = common dso_local global i32 0, align 4
@CLEAR_EXPIRED = common dso_local global i32 0, align 4
@GROUP_1_SECOND_CLEAR = common dso_local global i64 0, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@OP_MODE = common dso_local global i64 0, align 8
@WAITED = common dso_local global i32 0, align 4
@CLEAR_WAITED = common dso_local global i32 0, align 4
@GROUP_1_FIRST_CLEAR = common dso_local global i64 0, align 8
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@PRIMARY_TC = common dso_local global i32 0, align 4
@CLEAR_PRIMARY_TC = common dso_local global i32 0, align 4
@SECONDARY_TC = common dso_local global i32 0, align 4
@CLEAR_SECONDARY_TC = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@tag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nidio_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nidio_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.nidio96_private*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca %struct.comedi_async*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.comedi_device*
  store %struct.comedi_device* %15, %struct.comedi_device** %6, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 5
  %18 = load %struct.nidio96_private*, %struct.nidio96_private** %17, align 8
  store %struct.nidio96_private* %18, %struct.nidio96_private** %7, align 8
  %19 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 4
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %20, align 8
  store %struct.comedi_subdevice* %21, %struct.comedi_subdevice** %8, align 8
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %23 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %22, i32 0, i32 0
  %24 = load %struct.comedi_async*, %struct.comedi_async** %23, align 8
  store %struct.comedi_async* %24, %struct.comedi_async** %9, align 8
  store i32 0, i32* %13, align 4
  %25 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @IRQ_NONE, align 4
  store i32 %30, i32* %3, align 4
  br label %234

31:                                               ; preds = %2
  %32 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 0
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @INTERRUPT_AND_WINDOW_STATUS, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @readb(i64 %39)
  store i32 %40, i32* %12, align 4
  %41 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %42 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @GROUP_1_FLAGS, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @readb(i64 %45)
  store i32 %46, i32* %11, align 4
  %47 = load %struct.nidio96_private*, %struct.nidio96_private** %7, align 8
  %48 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %47, i32 0, i32 0
  %49 = call i32 @spin_lock(i32* %48)
  %50 = load %struct.nidio96_private*, %struct.nidio96_private** %7, align 8
  %51 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %31
  %55 = load %struct.nidio96_private*, %struct.nidio96_private** %7, align 8
  %56 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %59 = call i32 @mite_ack_linkc(i64 %57, %struct.comedi_subdevice* %58, i32 0)
  br label %60

60:                                               ; preds = %54, %31
  %61 = load %struct.nidio96_private*, %struct.nidio96_private** %7, align 8
  %62 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock(i32* %62)
  br label %64

64:                                               ; preds = %212, %60
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @DATA_LEFT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %225

69:                                               ; preds = %64
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp sgt i32 %72, 20
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %76 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @dev_dbg(i32 %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %79 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %80 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @MASTER_DMA_AND_INTERRUPT_CONTROL, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writeb(i32 0, i64 %83)
  br label %225

85:                                               ; preds = %69
  %86 = load i32, i32* @INT_EN, align 4
  %87 = load i32, i32* %11, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @TRANSFER_READY, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %131

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %115, %93
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @TRANSFER_READY, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %130

99:                                               ; preds = %94
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp sgt i32 %102, 100
  br i1 %103, label %104, label %115

104:                                              ; preds = %99
  %105 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %106 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @dev_dbg(i32 %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %109 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %110 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @MASTER_DMA_AND_INTERRUPT_CONTROL, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @writeb(i32 0, i64 %113)
  br label %226

115:                                              ; preds = %99
  %116 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %117 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @GROUP_1_FIFO, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @readl(i64 %120)
  store i32 %121, i32* %10, align 4
  %122 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %123 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %122, i32* %10, i32 1)
  %124 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %125 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @GROUP_1_FLAGS, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @readb(i64 %128)
  store i32 %129, i32* %11, align 4
  br label %94

130:                                              ; preds = %94
  br label %131

131:                                              ; preds = %130, %85
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* @COUNT_EXPIRED, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %155

136:                                              ; preds = %131
  %137 = load i32, i32* @CLEAR_EXPIRED, align 4
  %138 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %139 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @GROUP_1_SECOND_CLEAR, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @writeb(i32 %137, i64 %142)
  %144 = load i32, i32* @COMEDI_CB_EOA, align 4
  %145 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  %146 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 4
  %149 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %150 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @OP_MODE, align 8
  %153 = add nsw i64 %151, %152
  %154 = call i32 @writeb(i32 0, i64 %153)
  br label %225

155:                                              ; preds = %131
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* @WAITED, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %155
  %161 = load i32, i32* @CLEAR_WAITED, align 4
  %162 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %163 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @GROUP_1_FIRST_CLEAR, align 8
  %166 = add nsw i64 %164, %165
  %167 = call i32 @writeb(i32 %161, i64 %166)
  %168 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %169 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  %170 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 4
  br label %225

173:                                              ; preds = %155
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* @PRIMARY_TC, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %191

178:                                              ; preds = %173
  %179 = load i32, i32* @CLEAR_PRIMARY_TC, align 4
  %180 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %181 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @GROUP_1_FIRST_CLEAR, align 8
  %184 = add nsw i64 %182, %183
  %185 = call i32 @writeb(i32 %179, i64 %184)
  %186 = load i32, i32* @COMEDI_CB_EOA, align 4
  %187 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  %188 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 4
  br label %210

191:                                              ; preds = %173
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* @SECONDARY_TC, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %209

196:                                              ; preds = %191
  %197 = load i32, i32* @CLEAR_SECONDARY_TC, align 4
  %198 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %199 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @GROUP_1_FIRST_CLEAR, align 8
  %202 = add nsw i64 %200, %201
  %203 = call i32 @writeb(i32 %197, i64 %202)
  %204 = load i32, i32* @COMEDI_CB_EOA, align 4
  %205 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  %206 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = or i32 %207, %204
  store i32 %208, i32* %206, align 4
  br label %209

209:                                              ; preds = %196, %191
  br label %210

210:                                              ; preds = %209, %178
  br label %211

211:                                              ; preds = %210
  br label %212

212:                                              ; preds = %211
  %213 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %214 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @GROUP_1_FLAGS, align 8
  %217 = add nsw i64 %215, %216
  %218 = call i32 @readb(i64 %217)
  store i32 %218, i32* %11, align 4
  %219 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %220 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @INTERRUPT_AND_WINDOW_STATUS, align 8
  %223 = add nsw i64 %221, %222
  %224 = call i32 @readb(i64 %223)
  store i32 %224, i32* %12, align 4
  br label %64

225:                                              ; preds = %160, %136, %74, %64
  br label %226

226:                                              ; preds = %225, %104
  %227 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %228 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %229 = call i32 @comedi_handle_events(%struct.comedi_device* %227, %struct.comedi_subdevice* %228)
  %230 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %231 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %230, i32 0, i32 0
  %232 = call i32 @spin_unlock(i32* %231)
  %233 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %233, i32* %3, align 4
  br label %234

234:                                              ; preds = %226, %29
  %235 = load i32, i32* %3, align 4
  ret i32 %235
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @mite_ack_linkc(i64, %struct.comedi_subdevice*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i32*, i32) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
