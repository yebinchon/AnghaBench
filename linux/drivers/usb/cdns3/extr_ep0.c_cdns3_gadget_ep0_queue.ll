; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_ep0.c_cdns3_gadget_ep0_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_ep0.c_cdns3_gadget_ep0_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i32, i32, i64, i32, i32, i64 }
%struct.cdns3_endpoint = type { i32, %struct.cdns3_device* }
%struct.cdns3_device = type { i64, i32, i32, i32, i32, i32, i32, %struct.usb_request*, i32 }

@ECONNRESET = common dso_local global i32 0, align 4
@CDNS3_STATUS_STAGE = common dso_local global i64 0, align 8
@system_freezable_wq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"can't handle multiple requests for ep0\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to map request\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_request*, i32)* @cdns3_gadget_ep0_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns3_gadget_ep0_queue(%struct.usb_ep* %0, %struct.usb_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_ep*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cdns3_endpoint*, align 8
  %9 = alloca %struct.cdns3_device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %5, align 8
  store %struct.usb_request* %1, %struct.usb_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %15 = call %struct.cdns3_endpoint* @ep_to_cdns3_ep(%struct.usb_ep* %14)
  store %struct.cdns3_endpoint* %15, %struct.cdns3_endpoint** %8, align 8
  %16 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %8, align 8
  %17 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %16, i32 0, i32 1
  %18 = load %struct.cdns3_device*, %struct.cdns3_device** %17, align 8
  store %struct.cdns3_device* %18, %struct.cdns3_device** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = load %struct.cdns3_device*, %struct.cdns3_device** %9, align 8
  %20 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %21 = call i32 @trace_cdns3_ep0_queue(%struct.cdns3_device* %19, %struct.usb_request* %20)
  %22 = load %struct.cdns3_device*, %struct.cdns3_device** %9, align 8
  %23 = call i64 @cdns3_check_new_setup(%struct.cdns3_device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @ECONNRESET, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %158

28:                                               ; preds = %3
  %29 = load %struct.cdns3_device*, %struct.cdns3_device** %9, align 8
  %30 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CDNS3_STATUS_STAGE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %72

34:                                               ; preds = %28
  %35 = load %struct.cdns3_device*, %struct.cdns3_device** %9, align 8
  %36 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %35, i32 0, i32 2
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.cdns3_device*, %struct.cdns3_device** %9, align 8
  %40 = call i32 @cdns3_select_ep(%struct.cdns3_device* %39, i32 0)
  %41 = load %struct.cdns3_device*, %struct.cdns3_device** %9, align 8
  %42 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %11, align 4
  %47 = load %struct.cdns3_device*, %struct.cdns3_device** %9, align 8
  %48 = call i32 @cdns3_set_hw_configuration(%struct.cdns3_device* %47)
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %34
  %52 = load %struct.cdns3_device*, %struct.cdns3_device** %9, align 8
  %53 = call i32 @cdns3_ep0_complete_setup(%struct.cdns3_device* %52, i32 0, i32 1)
  br label %54

54:                                               ; preds = %51, %34
  %55 = load %struct.cdns3_device*, %struct.cdns3_device** %9, align 8
  %56 = call i32 @cdns3_allow_enable_l1(%struct.cdns3_device* %55, i32 1)
  %57 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %58 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %57, i32 0, i32 5
  store i64 0, i64* %58, align 8
  %59 = load %struct.cdns3_device*, %struct.cdns3_device** %9, align 8
  %60 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %59, i32 0, i32 1
  store i32 1, i32* %60, align 8
  %61 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %62 = load %struct.cdns3_device*, %struct.cdns3_device** %9, align 8
  %63 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %62, i32 0, i32 7
  store %struct.usb_request* %61, %struct.usb_request** %63, align 8
  %64 = load %struct.cdns3_device*, %struct.cdns3_device** %9, align 8
  %65 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %64, i32 0, i32 2
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load i32, i32* @system_freezable_wq, align 4
  %69 = load %struct.cdns3_device*, %struct.cdns3_device** %9, align 8
  %70 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %69, i32 0, i32 6
  %71 = call i32 @queue_work(i32 %68, i32* %70)
  store i32 0, i32* %4, align 4
  br label %158

72:                                               ; preds = %28
  %73 = load %struct.cdns3_device*, %struct.cdns3_device** %9, align 8
  %74 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %73, i32 0, i32 2
  %75 = load i64, i64* %10, align 8
  %76 = call i32 @spin_lock_irqsave(i32* %74, i64 %75)
  %77 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %8, align 8
  %78 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %77, i32 0, i32 0
  %79 = call i32 @list_empty(i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %72
  %82 = load %struct.cdns3_device*, %struct.cdns3_device** %9, align 8
  %83 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %86 = load %struct.cdns3_device*, %struct.cdns3_device** %9, align 8
  %87 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %86, i32 0, i32 2
  %88 = load i64, i64* %10, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  %90 = load i32, i32* @EBUSY, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %158

92:                                               ; preds = %72
  %93 = load %struct.cdns3_device*, %struct.cdns3_device** %9, align 8
  %94 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %97 = load %struct.cdns3_device*, %struct.cdns3_device** %9, align 8
  %98 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @usb_gadget_map_request_by_dev(i32 %95, %struct.usb_request* %96, i32 %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %92
  %104 = load %struct.cdns3_device*, %struct.cdns3_device** %9, align 8
  %105 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %104, i32 0, i32 2
  %106 = load i64, i64* %10, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  %108 = load %struct.cdns3_device*, %struct.cdns3_device** %9, align 8
  %109 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @dev_err(i32 %110, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  br label %158

114:                                              ; preds = %92
  %115 = load i32, i32* @EINPROGRESS, align 4
  %116 = sub nsw i32 0, %115
  %117 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %118 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 4
  %119 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %120 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %119, i32 0, i32 3
  %121 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %8, align 8
  %122 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %121, i32 0, i32 0
  %123 = call i32 @list_add_tail(i32* %120, i32* %122)
  %124 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %125 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %114
  %129 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %130 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %128
  %134 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %135 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %138 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = srem i32 %136, %139
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %133
  store i32 1, i32* %13, align 4
  br label %143

143:                                              ; preds = %142, %133, %128, %114
  %144 = load %struct.cdns3_device*, %struct.cdns3_device** %9, align 8
  %145 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %146 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %149 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %13, align 4
  %152 = call i32 @cdns3_ep0_run_transfer(%struct.cdns3_device* %144, i32 %147, i32 %150, i32 1, i32 %151)
  %153 = load %struct.cdns3_device*, %struct.cdns3_device** %9, align 8
  %154 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %153, i32 0, i32 2
  %155 = load i64, i64* %10, align 8
  %156 = call i32 @spin_unlock_irqrestore(i32* %154, i64 %155)
  %157 = load i32, i32* %12, align 4
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %143, %103, %81, %54, %25
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local %struct.cdns3_endpoint* @ep_to_cdns3_ep(%struct.usb_ep*) #1

declare dso_local i32 @trace_cdns3_ep0_queue(%struct.cdns3_device*, %struct.usb_request*) #1

declare dso_local i64 @cdns3_check_new_setup(%struct.cdns3_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cdns3_select_ep(%struct.cdns3_device*, i32) #1

declare dso_local i32 @cdns3_set_hw_configuration(%struct.cdns3_device*) #1

declare dso_local i32 @cdns3_ep0_complete_setup(%struct.cdns3_device*, i32, i32) #1

declare dso_local i32 @cdns3_allow_enable_l1(%struct.cdns3_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @usb_gadget_map_request_by_dev(i32, %struct.usb_request*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @cdns3_ep0_run_transfer(%struct.cdns3_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
