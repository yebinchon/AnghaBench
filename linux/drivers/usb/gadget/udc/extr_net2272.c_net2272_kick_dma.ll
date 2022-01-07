; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2272.c_net2272_kick_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2272.c_net2272_kick_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net2272_ep = type { i32, i32, %struct.TYPE_8__*, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.net2272_request = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i64 }

@use_dma = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"kick_dma %s req %p dma %08llx\0A\00", align 1
@EP_RSPSET = common dso_local global i32 0, align 4
@ALT_NAK_OUT_PACKETS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EP_STAT0 = common dso_local global i32 0, align 4
@BUFFER_EMPTY = common dso_local global i32 0, align 4
@EP_RSPCLR = common dso_local global i32 0, align 4
@SHORT_PACKET_TRANSFERRED_INTERRUPT = common dso_local global i32 0, align 4
@DMAREQ = common dso_local global i32 0, align 4
@DMA_BUFFER_VALID = common dso_local global i32 0, align 4
@DMA_REQUEST_ENABLE = common dso_local global i32 0, align 4
@DMA_CONTROL_DACK = common dso_local global i32 0, align 4
@EOT_POLARITY = common dso_local global i32 0, align 4
@DACK_POLARITY = common dso_local global i32 0, align 4
@DREQ_POLARITY = common dso_local global i32 0, align 4
@DMA_ENDPOINT_SELECT = common dso_local global i32 0, align 4
@EP_IRQENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net2272_ep*, %struct.net2272_request*)* @net2272_kick_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net2272_kick_dma(%struct.net2272_ep* %0, %struct.net2272_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net2272_ep*, align 8
  %5 = alloca %struct.net2272_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net2272_ep* %0, %struct.net2272_ep** %4, align 8
  store %struct.net2272_request* %1, %struct.net2272_request** %5, align 8
  %8 = load i32, i32* @use_dma, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %12 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %25, label %15

15:                                               ; preds = %10
  %16 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %17 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 2
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %22 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20, %15, %10, %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %202

28:                                               ; preds = %20
  %29 = load %struct.net2272_request*, %struct.net2272_request** %5, align 8
  %30 = getelementptr inbounds %struct.net2272_request, %struct.net2272_request* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %202

38:                                               ; preds = %28
  %39 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %40 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %39, i32 0, i32 2
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %45 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.net2272_request*, %struct.net2272_request** %5, align 8
  %49 = load %struct.net2272_request*, %struct.net2272_request** %5, align 8
  %50 = getelementptr inbounds %struct.net2272_request, %struct.net2272_request* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @dev_vdbg(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %47, %struct.net2272_request* %48, i64 %52)
  %54 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %55 = load i32, i32* @EP_RSPSET, align 4
  %56 = load i32, i32* @ALT_NAK_OUT_PACKETS, align 4
  %57 = shl i32 1, %56
  %58 = call i32 @net2272_ep_write(%struct.net2272_ep* %54, i32 %55, i32 %57)
  %59 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %60 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %59, i32 0, i32 2
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %38
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %202

68:                                               ; preds = %38
  %69 = load %struct.net2272_request*, %struct.net2272_request** %5, align 8
  %70 = getelementptr inbounds %struct.net2272_request, %struct.net2272_request* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = and i32 %73, -2
  store i32 %74, i32* %6, align 4
  %75 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %76 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %68
  %80 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %81 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %80, i32 0, i32 2
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %84 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.net2272_request*, %struct.net2272_request** %5, align 8
  %87 = getelementptr inbounds %struct.net2272_request, %struct.net2272_request* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i64 @net2272_request_dma(%struct.TYPE_8__* %82, i32 %85, i64 %89, i32 %90, i32 0)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %79
  %94 = load i32, i32* @EBUSY, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %202

96:                                               ; preds = %79
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.net2272_request*, %struct.net2272_request** %5, align 8
  %99 = getelementptr inbounds %struct.net2272_request, %struct.net2272_request* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add i32 %101, %97
  store i32 %102, i32* %100, align 4
  br label %194

103:                                              ; preds = %68
  %104 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %105 = load i32, i32* @EP_STAT0, align 4
  %106 = call i32 @net2272_ep_read(%struct.net2272_ep* %104, i32 %105)
  store i32 %106, i32* %7, align 4
  %107 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %108 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %107, i32 0, i32 2
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %111 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.net2272_request*, %struct.net2272_request** %5, align 8
  %114 = getelementptr inbounds %struct.net2272_request, %struct.net2272_request* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i64 @net2272_request_dma(%struct.TYPE_8__* %109, i32 %112, i64 %116, i32 %117, i32 1)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %103
  %121 = load i32, i32* @EBUSY, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %202

123:                                              ; preds = %103
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @BUFFER_EMPTY, align 4
  %126 = shl i32 1, %125
  %127 = and i32 %124, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %123
  %130 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %131 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %130, i32 0, i32 1
  store i32 1, i32* %131, align 4
  br label %135

132:                                              ; preds = %123
  %133 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %134 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %133, i32 0, i32 1
  store i32 0, i32* %134, align 4
  br label %135

135:                                              ; preds = %132, %129
  %136 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %137 = load i32, i32* @EP_RSPCLR, align 4
  %138 = load i32, i32* @ALT_NAK_OUT_PACKETS, align 4
  %139 = shl i32 1, %138
  %140 = call i32 @net2272_ep_write(%struct.net2272_ep* %136, i32 %137, i32 %139)
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @SHORT_PACKET_TRANSFERRED_INTERRUPT, align 4
  %143 = shl i32 1, %142
  %144 = and i32 %141, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %193

146:                                              ; preds = %135
  %147 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %148 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %147, i32 0, i32 2
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = load i32, i32* @DMAREQ, align 4
  %151 = load i32, i32* @DMA_BUFFER_VALID, align 4
  %152 = shl i32 0, %151
  %153 = load i32, i32* @DMA_REQUEST_ENABLE, align 4
  %154 = shl i32 0, %153
  %155 = or i32 %152, %154
  %156 = load i32, i32* @DMA_CONTROL_DACK, align 4
  %157 = shl i32 1, %156
  %158 = or i32 %155, %157
  %159 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %160 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %159, i32 0, i32 2
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @EOT_POLARITY, align 4
  %165 = shl i32 %163, %164
  %166 = or i32 %158, %165
  %167 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %168 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %167, i32 0, i32 2
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @DACK_POLARITY, align 4
  %173 = shl i32 %171, %172
  %174 = or i32 %166, %173
  %175 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %176 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %175, i32 0, i32 2
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @DREQ_POLARITY, align 4
  %181 = shl i32 %179, %180
  %182 = or i32 %174, %181
  %183 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %184 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = ashr i32 %185, 1
  %187 = load i32, i32* @DMA_ENDPOINT_SELECT, align 4
  %188 = shl i32 %186, %187
  %189 = or i32 %182, %188
  %190 = call i32 @net2272_write(%struct.TYPE_8__* %149, i32 %150, i32 %189)
  %191 = load i32, i32* @EBUSY, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %3, align 4
  br label %202

193:                                              ; preds = %135
  br label %194

194:                                              ; preds = %193, %96
  %195 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %196 = load i32, i32* @EP_IRQENB, align 4
  %197 = call i32 @net2272_ep_write(%struct.net2272_ep* %195, i32 %196, i32 0)
  %198 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %199 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %198, i32 0, i32 2
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %199, align 8
  %201 = call i32 @net2272_start_dma(%struct.TYPE_8__* %200)
  store i32 0, i32* %3, align 4
  br label %202

202:                                              ; preds = %194, %146, %120, %93, %65, %35, %25
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local i32 @dev_vdbg(i32, i8*, i32, %struct.net2272_request*, i64) #1

declare dso_local i32 @net2272_ep_write(%struct.net2272_ep*, i32, i32) #1

declare dso_local i64 @net2272_request_dma(%struct.TYPE_8__*, i32, i64, i32, i32) #1

declare dso_local i32 @net2272_ep_read(%struct.net2272_ep*, i32) #1

declare dso_local i32 @net2272_write(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @net2272_start_dma(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
