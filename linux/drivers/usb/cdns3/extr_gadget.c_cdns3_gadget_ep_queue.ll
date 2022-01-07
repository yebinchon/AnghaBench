; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_gadget_ep_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_gadget_ep_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i32, i32, i64 }
%struct.cdns3_endpoint = type { i32, %struct.cdns3_device* }
%struct.cdns3_device = type { i32, i32, i32 }
%struct.cdns3_request = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@REQUEST_ZLP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Queuing ZLP for endpoint: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_request*, i32)* @cdns3_gadget_ep_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns3_gadget_ep_queue(%struct.usb_ep* %0, %struct.usb_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_ep*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_request*, align 8
  %9 = alloca %struct.cdns3_endpoint*, align 8
  %10 = alloca %struct.cdns3_device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.cdns3_request*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %5, align 8
  store %struct.usb_request* %1, %struct.usb_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %15 = icmp ne %struct.usb_request* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %18 = icmp ne %struct.usb_ep* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %92

22:                                               ; preds = %16
  %23 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %24 = call %struct.cdns3_endpoint* @ep_to_cdns3_ep(%struct.usb_ep* %23)
  store %struct.cdns3_endpoint* %24, %struct.cdns3_endpoint** %9, align 8
  %25 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %9, align 8
  %26 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %25, i32 0, i32 1
  %27 = load %struct.cdns3_device*, %struct.cdns3_device** %26, align 8
  store %struct.cdns3_device* %27, %struct.cdns3_device** %10, align 8
  %28 = load %struct.cdns3_device*, %struct.cdns3_device** %10, align 8
  %29 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %28, i32 0, i32 0
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %33 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @__cdns3_gadget_ep_queue(%struct.usb_ep* %32, %struct.usb_request* %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %86

38:                                               ; preds = %22
  %39 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %40 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %86

43:                                               ; preds = %38
  %44 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %45 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %86

48:                                               ; preds = %43
  %49 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %50 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %53 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = srem i32 %51, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %86

57:                                               ; preds = %48
  %58 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %59 = load i32, i32* @GFP_ATOMIC, align 4
  %60 = call %struct.usb_request* @cdns3_gadget_ep_alloc_request(%struct.usb_ep* %58, i32 %59)
  store %struct.usb_request* %60, %struct.usb_request** %8, align 8
  %61 = load %struct.cdns3_device*, %struct.cdns3_device** %10, align 8
  %62 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %65 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %67 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  %68 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %69 = call %struct.cdns3_request* @to_cdns3_request(%struct.usb_request* %68)
  store %struct.cdns3_request* %69, %struct.cdns3_request** %13, align 8
  %70 = load i32, i32* @REQUEST_ZLP, align 4
  %71 = load %struct.cdns3_request*, %struct.cdns3_request** %13, align 8
  %72 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.cdns3_device*, %struct.cdns3_device** %10, align 8
  %76 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %9, align 8
  %79 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dev_dbg(i32 %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %83 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @__cdns3_gadget_ep_queue(%struct.usb_ep* %82, %struct.usb_request* %83, i32 %84)
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %57, %48, %43, %38, %22
  %87 = load %struct.cdns3_device*, %struct.cdns3_device** %10, align 8
  %88 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %87, i32 0, i32 0
  %89 = load i64, i64* %11, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %86, %19
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.cdns3_endpoint* @ep_to_cdns3_ep(%struct.usb_ep*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__cdns3_gadget_ep_queue(%struct.usb_ep*, %struct.usb_request*, i32) #1

declare dso_local %struct.usb_request* @cdns3_gadget_ep_alloc_request(%struct.usb_ep*, i32) #1

declare dso_local %struct.cdns3_request* @to_cdns3_request(%struct.usb_request*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
