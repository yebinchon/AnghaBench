; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c___cdns3_gadget_ep_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c___cdns3_gadget_ep_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i32, i32, i64 }
%struct.cdns3_endpoint = type { i32, i32, %struct.cdns3_device* }
%struct.cdns3_device = type { i64, i64, i32 }
%struct.cdns3_request = type { i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@DEV_VER_V2 = common dso_local global i64 0, align 8
@EP_STALLED = common dso_local global i32 0, align 4
@EP_STALL_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_request*, i32)* @__cdns3_gadget_ep_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cdns3_gadget_ep_queue(%struct.usb_ep* %0, %struct.usb_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_ep*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cdns3_endpoint*, align 8
  %9 = alloca %struct.cdns3_device*, align 8
  %10 = alloca %struct.cdns3_request*, align 8
  %11 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %5, align 8
  store %struct.usb_request* %1, %struct.usb_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %13 = call %struct.cdns3_endpoint* @ep_to_cdns3_ep(%struct.usb_ep* %12)
  store %struct.cdns3_endpoint* %13, %struct.cdns3_endpoint** %8, align 8
  %14 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %8, align 8
  %15 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %14, i32 0, i32 2
  %16 = load %struct.cdns3_device*, %struct.cdns3_device** %15, align 8
  store %struct.cdns3_device* %16, %struct.cdns3_device** %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %18 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @EINPROGRESS, align 4
  %20 = sub nsw i32 0, %19
  %21 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %22 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %24 = call %struct.cdns3_request* @to_cdns3_request(%struct.usb_request* %23)
  store %struct.cdns3_request* %24, %struct.cdns3_request** %10, align 8
  %25 = load %struct.cdns3_request*, %struct.cdns3_request** %10, align 8
  %26 = call i32 @trace_cdns3_ep_queue(%struct.cdns3_request* %25)
  %27 = load %struct.cdns3_device*, %struct.cdns3_device** %9, align 8
  %28 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DEV_VER_V2, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %3
  %33 = load %struct.cdns3_device*, %struct.cdns3_device** %9, align 8
  %34 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %8, align 8
  %35 = load %struct.cdns3_request*, %struct.cdns3_request** %10, align 8
  %36 = call i32 @cdns3_wa2_gadget_ep_queue(%struct.cdns3_device* %33, %struct.cdns3_endpoint* %34, %struct.cdns3_request* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @EINPROGRESS, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %92

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %3
  %43 = load %struct.cdns3_request*, %struct.cdns3_request** %10, align 8
  %44 = call i32 @cdns3_prepare_aligned_request_buf(%struct.cdns3_request* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %4, align 4
  br label %92

49:                                               ; preds = %42
  %50 = load %struct.cdns3_device*, %struct.cdns3_device** %9, align 8
  %51 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %54 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %55 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @usb_endpoint_dir_in(i32 %56)
  %58 = call i32 @usb_gadget_map_request_by_dev(i32 %52, %struct.usb_request* %53, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %4, align 4
  br label %92

63:                                               ; preds = %49
  %64 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %65 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %64, i32 0, i32 1
  %66 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %8, align 8
  %67 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %66, i32 0, i32 1
  %68 = call i32 @list_add_tail(i32* %65, i32* %67)
  %69 = load %struct.cdns3_device*, %struct.cdns3_device** %9, align 8
  %70 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %63
  %74 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %8, align 8
  %75 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @EP_STALLED, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %73
  %81 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %8, align 8
  %82 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @EP_STALL_PENDING, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %80
  %88 = load %struct.cdns3_device*, %struct.cdns3_device** %9, align 8
  %89 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %8, align 8
  %90 = call i32 @cdns3_start_all_request(%struct.cdns3_device* %88, %struct.cdns3_endpoint* %89)
  br label %91

91:                                               ; preds = %87, %80, %73, %63
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %61, %47, %40
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.cdns3_endpoint* @ep_to_cdns3_ep(%struct.usb_ep*) #1

declare dso_local %struct.cdns3_request* @to_cdns3_request(%struct.usb_request*) #1

declare dso_local i32 @trace_cdns3_ep_queue(%struct.cdns3_request*) #1

declare dso_local i32 @cdns3_wa2_gadget_ep_queue(%struct.cdns3_device*, %struct.cdns3_endpoint*, %struct.cdns3_request*) #1

declare dso_local i32 @cdns3_prepare_aligned_request_buf(%struct.cdns3_request*) #1

declare dso_local i32 @usb_gadget_map_request_by_dev(i32, %struct.usb_request*, i32) #1

declare dso_local i32 @usb_endpoint_dir_in(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @cdns3_start_all_request(%struct.cdns3_device*, %struct.cdns3_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
