; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_transfer_completed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_transfer_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_device = type { i32 }
%struct.cdns3_endpoint = type { i32, i64, i32, %struct.cdns3_trb*, %struct.TYPE_2__, i32 }
%struct.cdns3_trb = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.cdns3_request = type { %struct.cdns3_trb* }
%struct.usb_request = type { i32 }

@TRB_LINK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"request_trb=0x%p, queue_trb=0x%p\0A\00", align 1
@USB_ENDPOINT_XFER_ISOC = common dso_local global i64 0, align 8
@TRBS_PER_SEGMENT = common dso_local global i32 0, align 4
@EP_PENDING_REQUEST = common dso_local global i32 0, align 4
@EP_STALLED = common dso_local global i32 0, align 4
@EP_STALL_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns3_device*, %struct.cdns3_endpoint*)* @cdns3_transfer_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns3_transfer_completed(%struct.cdns3_device* %0, %struct.cdns3_endpoint* %1) #0 {
  %3 = alloca %struct.cdns3_device*, align 8
  %4 = alloca %struct.cdns3_endpoint*, align 8
  %5 = alloca %struct.cdns3_request*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca %struct.cdns3_trb*, align 8
  store %struct.cdns3_device* %0, %struct.cdns3_device** %3, align 8
  store %struct.cdns3_endpoint* %1, %struct.cdns3_endpoint** %4, align 8
  br label %8

8:                                                ; preds = %100, %2
  %9 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %10 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %9, i32 0, i32 5
  %11 = call i32 @list_empty(i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %101

14:                                               ; preds = %8
  %15 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %16 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %15, i32 0, i32 5
  %17 = call %struct.usb_request* @cdns3_next_request(i32* %16)
  store %struct.usb_request* %17, %struct.usb_request** %6, align 8
  %18 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %19 = call %struct.cdns3_request* @to_cdns3_request(%struct.usb_request* %18)
  store %struct.cdns3_request* %19, %struct.cdns3_request** %5, align 8
  %20 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %21 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %20, i32 0, i32 3
  %22 = load %struct.cdns3_trb*, %struct.cdns3_trb** %21, align 8
  %23 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %24 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.cdns3_trb, %struct.cdns3_trb* %22, i64 %26
  store %struct.cdns3_trb* %27, %struct.cdns3_trb** %7, align 8
  %28 = load %struct.cdns3_trb*, %struct.cdns3_trb** %7, align 8
  %29 = getelementptr inbounds %struct.cdns3_trb, %struct.cdns3_trb* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @TRB_FIELD_TO_TYPE(i32 %30)
  %32 = load i64, i64* @TRB_LINK, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %14
  %35 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %36 = load %struct.cdns3_trb*, %struct.cdns3_trb** %7, align 8
  %37 = call i32 @trace_cdns3_complete_trb(%struct.cdns3_endpoint* %35, %struct.cdns3_trb* %36)
  %38 = load %struct.cdns3_request*, %struct.cdns3_request** %5, align 8
  %39 = call i32 @cdns3_move_deq_to_next_trb(%struct.cdns3_request* %38)
  br label %40

40:                                               ; preds = %34, %14
  %41 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %42 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %43 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @cdns3_select_ep(%struct.cdns3_device* %41, i32 %45)
  %47 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %48 = load %struct.cdns3_request*, %struct.cdns3_request** %5, align 8
  %49 = call i32 @cdns3_request_handled(%struct.cdns3_endpoint* %47, %struct.cdns3_request* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %40
  br label %108

52:                                               ; preds = %40
  %53 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %54 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %53, i32 0, i32 3
  %55 = load %struct.cdns3_trb*, %struct.cdns3_trb** %54, align 8
  %56 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %57 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.cdns3_trb, %struct.cdns3_trb* %55, i64 %59
  store %struct.cdns3_trb* %60, %struct.cdns3_trb** %7, align 8
  %61 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %62 = load %struct.cdns3_trb*, %struct.cdns3_trb** %7, align 8
  %63 = call i32 @trace_cdns3_complete_trb(%struct.cdns3_endpoint* %61, %struct.cdns3_trb* %62)
  %64 = load %struct.cdns3_trb*, %struct.cdns3_trb** %7, align 8
  %65 = load %struct.cdns3_request*, %struct.cdns3_request** %5, align 8
  %66 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %65, i32 0, i32 0
  %67 = load %struct.cdns3_trb*, %struct.cdns3_trb** %66, align 8
  %68 = icmp ne %struct.cdns3_trb* %64, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %52
  %70 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %71 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.cdns3_request*, %struct.cdns3_request** %5, align 8
  %74 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %73, i32 0, i32 0
  %75 = load %struct.cdns3_trb*, %struct.cdns3_trb** %74, align 8
  %76 = load %struct.cdns3_trb*, %struct.cdns3_trb** %7, align 8
  %77 = call i32 @dev_warn(i32 %72, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.cdns3_trb* %75, %struct.cdns3_trb* %76)
  br label %78

78:                                               ; preds = %69, %52
  %79 = load %struct.cdns3_trb*, %struct.cdns3_trb** %7, align 8
  %80 = getelementptr inbounds %struct.cdns3_trb, %struct.cdns3_trb* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le32_to_cpu(i32 %81)
  %83 = call i32 @TRB_LEN(i32 %82)
  %84 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %85 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.cdns3_request*, %struct.cdns3_request** %5, align 8
  %87 = call i32 @cdns3_move_deq_to_next_trb(%struct.cdns3_request* %86)
  %88 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %89 = load %struct.cdns3_request*, %struct.cdns3_request** %5, align 8
  %90 = call i32 @cdns3_gadget_giveback(%struct.cdns3_endpoint* %88, %struct.cdns3_request* %89, i32 0)
  %91 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %92 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %78
  %97 = load i32, i32* @TRBS_PER_SEGMENT, align 4
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %101

100:                                              ; preds = %96, %78
  br label %8

101:                                              ; preds = %99, %8
  %102 = load i32, i32* @EP_PENDING_REQUEST, align 4
  %103 = xor i32 %102, -1
  %104 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %105 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %101, %51
  %109 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %110 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @EP_STALLED, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %108
  %116 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %117 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @EP_STALL_PENDING, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %115
  %123 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %124 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %125 = call i32 @cdns3_start_all_request(%struct.cdns3_device* %123, %struct.cdns3_endpoint* %124)
  br label %126

126:                                              ; preds = %122, %115, %108
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.usb_request* @cdns3_next_request(i32*) #1

declare dso_local %struct.cdns3_request* @to_cdns3_request(%struct.usb_request*) #1

declare dso_local i64 @TRB_FIELD_TO_TYPE(i32) #1

declare dso_local i32 @trace_cdns3_complete_trb(%struct.cdns3_endpoint*, %struct.cdns3_trb*) #1

declare dso_local i32 @cdns3_move_deq_to_next_trb(%struct.cdns3_request*) #1

declare dso_local i32 @cdns3_select_ep(%struct.cdns3_device*, i32) #1

declare dso_local i32 @cdns3_request_handled(%struct.cdns3_endpoint*, %struct.cdns3_request*) #1

declare dso_local i32 @dev_warn(i32, i8*, %struct.cdns3_trb*, %struct.cdns3_trb*) #1

declare dso_local i32 @TRB_LEN(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cdns3_gadget_giveback(%struct.cdns3_endpoint*, %struct.cdns3_request*, i32) #1

declare dso_local i32 @cdns3_start_all_request(%struct.cdns3_device*, %struct.cdns3_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
