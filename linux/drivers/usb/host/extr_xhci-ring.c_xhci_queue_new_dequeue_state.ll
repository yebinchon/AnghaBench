; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_queue_new_dequeue_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_queue_new_dequeue_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.xhci_virt_ep* }
%struct.xhci_virt_ep = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.xhci_dequeue_state = type { i32, i64, i32, %struct.TYPE_5__* }
%struct.xhci_command = type { i32 }

@TRB_SET_DEQ = common dso_local global i32 0, align 4
@trace_xhci_dbg_cancel_urb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [97 x i8] c"Set TR Deq Ptr cmd, new deq seg = %p (0x%llx dma), new deq ptr = %p (0x%llx dma), new cycle = %u\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"WARN Cannot submit Set TR Deq Ptr\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"WARN deq seg = %p, deq pt = %p\0A\00", align 1
@SET_DEQ_PENDING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"A Set TR Deq Ptr command is pending.\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCT_PRI_TR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_queue_new_dequeue_state(%struct.xhci_hcd* %0, i32 %1, i32 %2, %struct.xhci_dequeue_state* %3) #0 {
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xhci_dequeue_state*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.xhci_virt_ep*, align 8
  %16 = alloca %struct.xhci_command*, align 8
  %17 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.xhci_dequeue_state* %3, %struct.xhci_dequeue_state** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @SLOT_ID_FOR_TRB(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @EP_ID_FOR_TRB(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.xhci_dequeue_state*, %struct.xhci_dequeue_state** %8, align 8
  %23 = getelementptr inbounds %struct.xhci_dequeue_state, %struct.xhci_dequeue_state* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @STREAM_ID_FOR_TRB(i64 %24)
  store i32 %25, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %26 = load i32, i32* @TRB_SET_DEQ, align 4
  %27 = call i32 @TRB_TYPE(i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %29 = load i32, i32* @trace_xhci_dbg_cancel_urb, align 4
  %30 = load %struct.xhci_dequeue_state*, %struct.xhci_dequeue_state** %8, align 8
  %31 = getelementptr inbounds %struct.xhci_dequeue_state, %struct.xhci_dequeue_state* %30, i32 0, i32 3
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load %struct.xhci_dequeue_state*, %struct.xhci_dequeue_state** %8, align 8
  %34 = getelementptr inbounds %struct.xhci_dequeue_state, %struct.xhci_dequeue_state* %33, i32 0, i32 3
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.xhci_dequeue_state*, %struct.xhci_dequeue_state** %8, align 8
  %39 = getelementptr inbounds %struct.xhci_dequeue_state, %struct.xhci_dequeue_state* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.xhci_dequeue_state*, %struct.xhci_dequeue_state** %8, align 8
  %42 = getelementptr inbounds %struct.xhci_dequeue_state, %struct.xhci_dequeue_state* %41, i32 0, i32 3
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load %struct.xhci_dequeue_state*, %struct.xhci_dequeue_state** %8, align 8
  %45 = getelementptr inbounds %struct.xhci_dequeue_state, %struct.xhci_dequeue_state* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @xhci_trb_virt_to_dma(%struct.TYPE_5__* %43, i32 %46)
  %48 = load %struct.xhci_dequeue_state*, %struct.xhci_dequeue_state** %8, align 8
  %49 = getelementptr inbounds %struct.xhci_dequeue_state, %struct.xhci_dequeue_state* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @xhci_dbg_trace(%struct.xhci_hcd* %28, i32 %29, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %32, i64 %37, i32 %40, i64 %47, i32 %50)
  %52 = load %struct.xhci_dequeue_state*, %struct.xhci_dequeue_state** %8, align 8
  %53 = getelementptr inbounds %struct.xhci_dequeue_state, %struct.xhci_dequeue_state* %52, i32 0, i32 3
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load %struct.xhci_dequeue_state*, %struct.xhci_dequeue_state** %8, align 8
  %56 = getelementptr inbounds %struct.xhci_dequeue_state, %struct.xhci_dequeue_state* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @xhci_trb_virt_to_dma(%struct.TYPE_5__* %54, i32 %57)
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %4
  %62 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %63 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_warn(%struct.xhci_hcd* %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %65 = load %struct.xhci_dequeue_state*, %struct.xhci_dequeue_state** %8, align 8
  %66 = getelementptr inbounds %struct.xhci_dequeue_state, %struct.xhci_dequeue_state* %65, i32 0, i32 3
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load %struct.xhci_dequeue_state*, %struct.xhci_dequeue_state** %8, align 8
  %69 = getelementptr inbounds %struct.xhci_dequeue_state, %struct.xhci_dequeue_state* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_warn(%struct.xhci_hcd* %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_5__* %67, i32 %70)
  br label %153

72:                                               ; preds = %4
  %73 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %74 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %75, i64 %77
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %81, i64 %83
  store %struct.xhci_virt_ep* %84, %struct.xhci_virt_ep** %15, align 8
  %85 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %15, align 8
  %86 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @SET_DEQ_PENDING, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %72
  %92 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %93 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_warn(%struct.xhci_hcd* %92, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %94 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %95 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_warn(%struct.xhci_hcd* %94, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %153

96:                                               ; preds = %72
  %97 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %98 = load i32, i32* @GFP_ATOMIC, align 4
  %99 = call %struct.xhci_command* @xhci_alloc_command(%struct.xhci_hcd* %97, i32 0, i32 %98)
  store %struct.xhci_command* %99, %struct.xhci_command** %16, align 8
  %100 = load %struct.xhci_command*, %struct.xhci_command** %16, align 8
  %101 = icmp ne %struct.xhci_command* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %96
  br label %153

103:                                              ; preds = %96
  %104 = load %struct.xhci_dequeue_state*, %struct.xhci_dequeue_state** %8, align 8
  %105 = getelementptr inbounds %struct.xhci_dequeue_state, %struct.xhci_dequeue_state* %104, i32 0, i32 3
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %15, align 8
  %108 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %107, i32 0, i32 2
  store %struct.TYPE_5__* %106, %struct.TYPE_5__** %108, align 8
  %109 = load %struct.xhci_dequeue_state*, %struct.xhci_dequeue_state** %8, align 8
  %110 = getelementptr inbounds %struct.xhci_dequeue_state, %struct.xhci_dequeue_state* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %15, align 8
  %113 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.xhci_dequeue_state*, %struct.xhci_dequeue_state** %8, align 8
  %115 = getelementptr inbounds %struct.xhci_dequeue_state, %struct.xhci_dequeue_state* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %103
  %119 = load i32, i32* @SCT_PRI_TR, align 4
  %120 = call i32 @SCT_FOR_TRB(i32 %119)
  store i32 %120, i32* %13, align 4
  br label %121

121:                                              ; preds = %118, %103
  %122 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %123 = load %struct.xhci_command*, %struct.xhci_command** %16, align 8
  %124 = load i64, i64* %9, align 8
  %125 = call i32 @lower_32_bits(i64 %124)
  %126 = load i32, i32* %13, align 4
  %127 = or i32 %125, %126
  %128 = load %struct.xhci_dequeue_state*, %struct.xhci_dequeue_state** %8, align 8
  %129 = getelementptr inbounds %struct.xhci_dequeue_state, %struct.xhci_dequeue_state* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %127, %130
  %132 = load i64, i64* %9, align 8
  %133 = call i32 @upper_32_bits(i64 %132)
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %11, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* %14, align 4
  %139 = or i32 %137, %138
  %140 = call i32 @queue_command(%struct.xhci_hcd* %122, %struct.xhci_command* %123, i32 %131, i32 %133, i32 %134, i32 %139, i32 0)
  store i32 %140, i32* %17, align 4
  %141 = load i32, i32* %17, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %121
  %144 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %145 = load %struct.xhci_command*, %struct.xhci_command** %16, align 8
  %146 = call i32 @xhci_free_command(%struct.xhci_hcd* %144, %struct.xhci_command* %145)
  br label %153

147:                                              ; preds = %121
  %148 = load i32, i32* @SET_DEQ_PENDING, align 4
  %149 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %15, align 8
  %150 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 8
  br label %153

153:                                              ; preds = %147, %143, %102, %91, %61
  ret void
}

declare dso_local i32 @SLOT_ID_FOR_TRB(i32) #1

declare dso_local i32 @EP_ID_FOR_TRB(i32) #1

declare dso_local i32 @STREAM_ID_FOR_TRB(i64) #1

declare dso_local i32 @TRB_TYPE(i32) #1

declare dso_local i32 @xhci_dbg_trace(%struct.xhci_hcd*, i32, i8*, %struct.TYPE_5__*, i64, i32, i64, i32) #1

declare dso_local i64 @xhci_trb_virt_to_dma(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*, ...) #1

declare dso_local %struct.xhci_command* @xhci_alloc_command(%struct.xhci_hcd*, i32, i32) #1

declare dso_local i32 @SCT_FOR_TRB(i32) #1

declare dso_local i32 @queue_command(%struct.xhci_hcd*, %struct.xhci_command*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @xhci_free_command(%struct.xhci_hcd*, %struct.xhci_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
