; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_cppi41.c_cppi41_dma_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_cppi41.c_cppi41_dma_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmaengine_result = type { i64 }
%struct.dma_channel = type { %struct.cppi41_dma_channel* }
%struct.cppi41_dma_channel = type { i64, i64, i32, i64, i32, i64, i32, i32, %struct.cppi41_dma_controller*, %struct.musb_hw_ep* }
%struct.cppi41_dma_controller = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*)* }
%struct.musb_hw_ep = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.musb* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.musb = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.dma_tx_state = type { i64 }

@DMA_TRANS_ABORTED = common dso_local global i64 0, align 8
@USB_ENDPOINT_XFER_ISOC = common dso_local global i64 0, align 8
@USB_PORT_STAT_HIGH_SPEED = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@NSEC_PER_USEC = common dso_local global i64 0, align 8
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.dmaengine_result*)* @cppi41_dma_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cppi41_dma_callback(i8* %0, %struct.dmaengine_result* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dmaengine_result*, align 8
  %5 = alloca %struct.dma_channel*, align 8
  %6 = alloca %struct.cppi41_dma_channel*, align 8
  %7 = alloca %struct.musb_hw_ep*, align 8
  %8 = alloca %struct.cppi41_dma_controller*, align 8
  %9 = alloca %struct.musb*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.dma_tx_state, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.dmaengine_result* %1, %struct.dmaengine_result** %4, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = bitcast i8* %18 to %struct.dma_channel*
  store %struct.dma_channel* %19, %struct.dma_channel** %5, align 8
  %20 = load %struct.dma_channel*, %struct.dma_channel** %5, align 8
  %21 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %20, i32 0, i32 0
  %22 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %21, align 8
  store %struct.cppi41_dma_channel* %22, %struct.cppi41_dma_channel** %6, align 8
  %23 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %6, align 8
  %24 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %23, i32 0, i32 9
  %25 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %24, align 8
  store %struct.musb_hw_ep* %25, %struct.musb_hw_ep** %7, align 8
  %26 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %7, align 8
  %27 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %26, i32 0, i32 2
  %28 = load %struct.musb*, %struct.musb** %27, align 8
  store %struct.musb* %28, %struct.musb** %9, align 8
  store i32 0, i32* %13, align 4
  %29 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %6, align 8
  %30 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %29, i32 0, i32 8
  %31 = load %struct.cppi41_dma_controller*, %struct.cppi41_dma_controller** %30, align 8
  store %struct.cppi41_dma_controller* %31, %struct.cppi41_dma_controller** %8, align 8
  %32 = load %struct.cppi41_dma_controller*, %struct.cppi41_dma_controller** %8, align 8
  %33 = getelementptr inbounds %struct.cppi41_dma_controller, %struct.cppi41_dma_controller* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %34, align 8
  %36 = icmp ne i32 (%struct.TYPE_8__*)* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %2
  %38 = load %struct.cppi41_dma_controller*, %struct.cppi41_dma_controller** %8, align 8
  %39 = getelementptr inbounds %struct.cppi41_dma_controller, %struct.cppi41_dma_controller* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %40, align 8
  %42 = load %struct.cppi41_dma_controller*, %struct.cppi41_dma_controller** %8, align 8
  %43 = getelementptr inbounds %struct.cppi41_dma_controller, %struct.cppi41_dma_controller* %42, i32 0, i32 2
  %44 = call i32 %41(%struct.TYPE_8__* %43)
  br label %45

45:                                               ; preds = %37, %2
  %46 = load %struct.dmaengine_result*, %struct.dmaengine_result** %4, align 8
  %47 = getelementptr inbounds %struct.dmaengine_result, %struct.dmaengine_result* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DMA_TRANS_ABORTED, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %212

52:                                               ; preds = %45
  %53 = load %struct.musb*, %struct.musb** %9, align 8
  %54 = getelementptr inbounds %struct.musb, %struct.musb* %53, i32 0, i32 1
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  %57 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %6, align 8
  %58 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %6, align 8
  %61 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dmaengine_tx_status(i32 %59, i32 %62, %struct.dma_tx_state* %11)
  %64 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %6, align 8
  %65 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %11, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %66, %68
  store i64 %69, i64* %12, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %6, align 8
  %72 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %6, align 8
  %76 = call i32 @trace_musb_cppi41_gb(%struct.cppi41_dma_channel* %75)
  %77 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %6, align 8
  %78 = call i32 @update_rx_toggle(%struct.cppi41_dma_channel* %77)
  %79 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %6, align 8
  %80 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %6, align 8
  %83 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = icmp eq i64 %81, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %52
  %88 = load i64, i64* %12, align 8
  %89 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %6, align 8
  %90 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %88, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87, %52
  %94 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %6, align 8
  %95 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %94, i32 0, i32 0
  store i64 0, i64* %95, align 8
  br label %96

96:                                               ; preds = %93, %87
  %97 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %6, align 8
  %98 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %125

101:                                              ; preds = %96
  %102 = load %struct.musb*, %struct.musb** %9, align 8
  %103 = call i64 @is_host_active(%struct.musb* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %7, align 8
  %107 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %106, i32 0, i32 1
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %15, align 8
  br label %116

111:                                              ; preds = %101
  %112 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %7, align 8
  %113 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %15, align 8
  br label %116

116:                                              ; preds = %111, %105
  %117 = load i64, i64* %15, align 8
  %118 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  store i32 1, i32* %14, align 4
  br label %124

121:                                              ; preds = %116
  %122 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %7, align 8
  %123 = call i32 @musb_is_tx_fifo_empty(%struct.musb_hw_ep* %122)
  store i32 %123, i32* %14, align 4
  br label %124

124:                                              ; preds = %121, %120
  br label %125

125:                                              ; preds = %124, %96
  %126 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %6, align 8
  %127 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %126, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load i32, i32* %14, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130, %125
  %134 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %6, align 8
  %135 = call i32 @cppi41_trans_done(%struct.cppi41_dma_channel* %134)
  br label %207

136:                                              ; preds = %130
  %137 = load %struct.musb*, %struct.musb** %9, align 8
  %138 = call i64 @is_host_active(%struct.musb* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %136
  %141 = load %struct.musb*, %struct.musb** %9, align 8
  %142 = getelementptr inbounds %struct.musb, %struct.musb* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @USB_PORT_STAT_HIGH_SPEED, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  store i32 1, i32* %13, align 4
  br label %148

148:                                              ; preds = %147, %140
  br label %158

149:                                              ; preds = %136
  %150 = load %struct.musb*, %struct.musb** %9, align 8
  %151 = getelementptr inbounds %struct.musb, %struct.musb* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @USB_SPEED_HIGH, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  store i32 1, i32* %13, align 4
  br label %157

157:                                              ; preds = %156, %149
  br label %158

158:                                              ; preds = %157, %148
  %159 = load i32, i32* %13, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %180

161:                                              ; preds = %158
  store i32 25, i32* %16, align 4
  br label %162

162:                                              ; preds = %178, %161
  %163 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %7, align 8
  %164 = call i32 @musb_is_tx_fifo_empty(%struct.musb_hw_ep* %163)
  store i32 %164, i32* %14, align 4
  %165 = load i32, i32* %14, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %6, align 8
  %169 = call i32 @cppi41_trans_done(%struct.cppi41_dma_channel* %168)
  br label %207

170:                                              ; preds = %162
  %171 = load i32, i32* %16, align 4
  %172 = add i32 %171, -1
  store i32 %172, i32* %16, align 4
  %173 = load i32, i32* %16, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %170
  br label %179

176:                                              ; preds = %170
  %177 = call i32 (...) @cpu_relax()
  br label %178

178:                                              ; preds = %176
  br i1 true, label %162, label %179

179:                                              ; preds = %178, %175
  br label %180

180:                                              ; preds = %179, %158
  %181 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %6, align 8
  %182 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %181, i32 0, i32 4
  %183 = load %struct.cppi41_dma_controller*, %struct.cppi41_dma_controller** %8, align 8
  %184 = getelementptr inbounds %struct.cppi41_dma_controller, %struct.cppi41_dma_controller* %183, i32 0, i32 1
  %185 = call i32 @list_add_tail(i32* %182, i32* %184)
  %186 = load %struct.cppi41_dma_controller*, %struct.cppi41_dma_controller** %8, align 8
  %187 = getelementptr inbounds %struct.cppi41_dma_controller, %struct.cppi41_dma_controller* %186, i32 0, i32 0
  %188 = call i32 @hrtimer_is_queued(i32* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %206, label %190

190:                                              ; preds = %180
  %191 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %6, align 8
  %192 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = sdiv i32 %193, 10
  %195 = sext i32 %194 to i64
  store i64 %195, i64* %17, align 8
  %196 = load %struct.cppi41_dma_controller*, %struct.cppi41_dma_controller** %8, align 8
  %197 = getelementptr inbounds %struct.cppi41_dma_controller, %struct.cppi41_dma_controller* %196, i32 0, i32 0
  %198 = load i64, i64* %17, align 8
  %199 = load i64, i64* @NSEC_PER_USEC, align 8
  %200 = mul i64 %198, %199
  %201 = load i64, i64* @NSEC_PER_USEC, align 8
  %202 = mul i64 20, %201
  %203 = trunc i64 %202 to i32
  %204 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %205 = call i32 @hrtimer_start_range_ns(i32* %197, i64 %200, i32 %203, i32 %204)
  br label %206

206:                                              ; preds = %190, %180
  br label %207

207:                                              ; preds = %206, %167, %133
  %208 = load %struct.musb*, %struct.musb** %9, align 8
  %209 = getelementptr inbounds %struct.musb, %struct.musb* %208, i32 0, i32 1
  %210 = load i64, i64* %10, align 8
  %211 = call i32 @spin_unlock_irqrestore(i32* %209, i64 %210)
  br label %212

212:                                              ; preds = %207, %51
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dmaengine_tx_status(i32, i32, %struct.dma_tx_state*) #1

declare dso_local i32 @trace_musb_cppi41_gb(%struct.cppi41_dma_channel*) #1

declare dso_local i32 @update_rx_toggle(%struct.cppi41_dma_channel*) #1

declare dso_local i64 @is_host_active(%struct.musb*) #1

declare dso_local i32 @musb_is_tx_fifo_empty(%struct.musb_hw_ep*) #1

declare dso_local i32 @cppi41_trans_done(%struct.cppi41_dma_channel*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @hrtimer_is_queued(i32*) #1

declare dso_local i32 @hrtimer_start_range_ns(i32*, i64, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
