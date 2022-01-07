; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_udc_core.c_ep0_prime_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_udc_core.c_ep0_prime_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_udc = type { i64, %struct.fsl_ep*, i32, %struct.fsl_req* }
%struct.fsl_ep = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.fsl_req = type { i32, %struct.TYPE_4__, i64, %struct.fsl_ep* }
%struct.TYPE_4__ = type { i32, i64, i32, i64 }

@EP_DIR_IN = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@DATA_STATE_XMIT = common dso_local global i64 0, align 8
@WAIT_FOR_OUT_STATUS = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i32 0, align 4
@fsl_noop_complete = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_udc*, i32)* @ep0_prime_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep0_prime_status(%struct.fsl_udc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsl_udc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsl_req*, align 8
  %7 = alloca %struct.fsl_ep*, align 8
  %8 = alloca i32, align 4
  store %struct.fsl_udc* %0, %struct.fsl_udc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.fsl_udc*, %struct.fsl_udc** %4, align 8
  %10 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %9, i32 0, i32 3
  %11 = load %struct.fsl_req*, %struct.fsl_req** %10, align 8
  store %struct.fsl_req* %11, %struct.fsl_req** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @EP_DIR_IN, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @USB_DIR_IN, align 4
  %17 = load %struct.fsl_udc*, %struct.fsl_udc** %4, align 8
  %18 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  br label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @USB_DIR_OUT, align 4
  %21 = load %struct.fsl_udc*, %struct.fsl_udc** %4, align 8
  %22 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  br label %23

23:                                               ; preds = %19, %15
  %24 = load %struct.fsl_udc*, %struct.fsl_udc** %4, align 8
  %25 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %24, i32 0, i32 1
  %26 = load %struct.fsl_ep*, %struct.fsl_ep** %25, align 8
  %27 = getelementptr inbounds %struct.fsl_ep, %struct.fsl_ep* %26, i64 0
  store %struct.fsl_ep* %27, %struct.fsl_ep** %7, align 8
  %28 = load %struct.fsl_udc*, %struct.fsl_udc** %4, align 8
  %29 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DATA_STATE_XMIT, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load i64, i64* @WAIT_FOR_OUT_STATUS, align 8
  %35 = load %struct.fsl_udc*, %struct.fsl_udc** %4, align 8
  %36 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %23
  %38 = load %struct.fsl_ep*, %struct.fsl_ep** %7, align 8
  %39 = load %struct.fsl_req*, %struct.fsl_req** %6, align 8
  %40 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %39, i32 0, i32 3
  store %struct.fsl_ep* %38, %struct.fsl_ep** %40, align 8
  %41 = load %struct.fsl_req*, %struct.fsl_req** %6, align 8
  %42 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @EINPROGRESS, align 4
  %45 = sub nsw i32 0, %44
  %46 = load %struct.fsl_req*, %struct.fsl_req** %6, align 8
  %47 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 8
  %49 = load %struct.fsl_req*, %struct.fsl_req** %6, align 8
  %50 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @fsl_noop_complete, align 4
  %53 = load %struct.fsl_req*, %struct.fsl_req** %6, align 8
  %54 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.fsl_req*, %struct.fsl_req** %6, align 8
  %57 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load %struct.fsl_ep*, %struct.fsl_ep** %7, align 8
  %59 = getelementptr inbounds %struct.fsl_ep, %struct.fsl_ep* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load %struct.fsl_req*, %struct.fsl_req** %6, align 8
  %63 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %62, i32 0, i32 1
  %64 = load %struct.fsl_ep*, %struct.fsl_ep** %7, align 8
  %65 = call i32 @ep_is_in(%struct.fsl_ep* %64)
  %66 = call i32 @usb_gadget_map_request(i32* %61, %struct.TYPE_4__* %63, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %37
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %89

71:                                               ; preds = %37
  %72 = load %struct.fsl_req*, %struct.fsl_req** %6, align 8
  %73 = load i32, i32* @GFP_ATOMIC, align 4
  %74 = call i64 @fsl_req_to_dtd(%struct.fsl_req* %72, i32 %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.fsl_ep*, %struct.fsl_ep** %7, align 8
  %78 = load %struct.fsl_req*, %struct.fsl_req** %6, align 8
  %79 = call i32 @fsl_queue_td(%struct.fsl_ep* %77, %struct.fsl_req* %78)
  br label %83

80:                                               ; preds = %71
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %89

83:                                               ; preds = %76
  %84 = load %struct.fsl_req*, %struct.fsl_req** %6, align 8
  %85 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %84, i32 0, i32 0
  %86 = load %struct.fsl_ep*, %struct.fsl_ep** %7, align 8
  %87 = getelementptr inbounds %struct.fsl_ep, %struct.fsl_ep* %86, i32 0, i32 0
  %88 = call i32 @list_add_tail(i32* %85, i32* %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %83, %80, %69
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @usb_gadget_map_request(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @ep_is_in(%struct.fsl_ep*) #1

declare dso_local i64 @fsl_req_to_dtd(%struct.fsl_req*, i32) #1

declare dso_local i32 @fsl_queue_td(%struct.fsl_ep*, %struct.fsl_req*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
