; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c___dwc3_gadget_ep_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c___dwc3_gadget_ep_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_ep = type { i32, %struct.TYPE_5__, i32, %struct.TYPE_6__*, %struct.dwc3* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.dwc3 = type { i32 }
%struct.dwc3_request = type { i64, i32, %struct.TYPE_6__, %struct.dwc3_ep* }

@.str = private unnamed_addr constant [38 x i8] c"%s: can't queue to disabled endpoint\0A\00", align 1
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"request %pK belongs to '%s'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DWC3_REQUEST_STATUS_COMPLETED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: request %pK already in flight\0A\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@DWC3_REQUEST_STATUS_QUEUED = common dso_local global i64 0, align 8
@DWC3_EP_PENDING_REQUEST = common dso_local global i32 0, align 4
@DWC3_EP_TRANSFER_STARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3_ep*, %struct.dwc3_request*)* @__dwc3_gadget_ep_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dwc3_gadget_ep_queue(%struct.dwc3_ep* %0, %struct.dwc3_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwc3_ep*, align 8
  %5 = alloca %struct.dwc3_request*, align 8
  %6 = alloca %struct.dwc3*, align 8
  store %struct.dwc3_ep* %0, %struct.dwc3_ep** %4, align 8
  store %struct.dwc3_request* %1, %struct.dwc3_request** %5, align 8
  %7 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %8 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %7, i32 0, i32 4
  %9 = load %struct.dwc3*, %struct.dwc3** %8, align 8
  store %struct.dwc3* %9, %struct.dwc3** %6, align 8
  %10 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %11 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %17 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %20 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %19, i32 0, i32 3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %21)
  %23 = load i32, i32* @ESHUTDOWN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %127

25:                                               ; preds = %2
  %26 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %27 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %26, i32 0, i32 3
  %28 = load %struct.dwc3_ep*, %struct.dwc3_ep** %27, align 8
  %29 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %30 = icmp ne %struct.dwc3_ep* %28, %29
  %31 = zext i1 %30 to i32
  %32 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %33 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %32, i32 0, i32 2
  %34 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %35 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %34, i32 0, i32 3
  %36 = load %struct.dwc3_ep*, %struct.dwc3_ep** %35, align 8
  %37 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %36, i32 0, i32 3
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = call i64 @WARN(i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* %33, %struct.TYPE_6__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %25
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %127

44:                                               ; preds = %25
  %45 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %46 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DWC3_REQUEST_STATUS_COMPLETED, align 8
  %49 = icmp slt i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %52 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %51, i32 0, i32 3
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %55 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %54, i32 0, i32 2
  %56 = call i64 @WARN(i32 %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_6__* %53, %struct.TYPE_6__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %44
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %127

61:                                               ; preds = %44
  %62 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %63 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @pm_runtime_get(i32 %64)
  %66 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %67 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* @EINPROGRESS, align 4
  %70 = sub nsw i32 0, %69
  %71 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %72 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %75 = call i32 @trace_dwc3_ep_queue(%struct.dwc3_request* %74)
  %76 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %77 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %76, i32 0, i32 1
  %78 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %79 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %78, i32 0, i32 2
  %80 = call i32 @list_add_tail(i32* %77, i32* %79)
  %81 = load i64, i64* @DWC3_REQUEST_STATUS_QUEUED, align 8
  %82 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %83 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %85 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @usb_endpoint_xfer_isoc(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %124

90:                                               ; preds = %61
  %91 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %92 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @DWC3_EP_PENDING_REQUEST, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %90
  %98 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %99 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @DWC3_EP_TRANSFER_STARTED, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %127

105:                                              ; preds = %97, %90
  %106 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %107 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @DWC3_EP_PENDING_REQUEST, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %105
  %113 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %114 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @DWC3_EP_TRANSFER_STARTED, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %112
  %120 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %121 = call i32 @__dwc3_gadget_start_isoc(%struct.dwc3_ep* %120)
  store i32 %121, i32* %3, align 4
  br label %127

122:                                              ; preds = %112
  br label %123

123:                                              ; preds = %122, %105
  br label %124

124:                                              ; preds = %123, %61
  %125 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %126 = call i32 @__dwc3_gadget_kick_transfer(%struct.dwc3_ep* %125)
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %124, %119, %104, %58, %41, %15
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @dev_err(i32, i8*, %struct.TYPE_6__*) #1

declare dso_local i64 @WARN(i32, i8*, %struct.TYPE_6__*, %struct.TYPE_6__*) #1

declare dso_local i32 @pm_runtime_get(i32) #1

declare dso_local i32 @trace_dwc3_ep_queue(%struct.dwc3_request*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @usb_endpoint_xfer_isoc(i32) #1

declare dso_local i32 @__dwc3_gadget_start_isoc(%struct.dwc3_ep*) #1

declare dso_local i32 @__dwc3_gadget_kick_transfer(%struct.dwc3_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
