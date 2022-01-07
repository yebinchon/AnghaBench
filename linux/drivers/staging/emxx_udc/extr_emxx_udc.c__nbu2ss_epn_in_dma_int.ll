; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_epn_in_dma_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_epn_in_dma_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbu2ss_udc = type { i32 }
%struct.nbu2ss_ep = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nbu2ss_req = type { i32, i64, %struct.usb_request }
%struct.usb_request = type { i32, i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nbu2ss_udc*, %struct.nbu2ss_ep*, %struct.nbu2ss_req*)* @_nbu2ss_epn_in_dma_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_nbu2ss_epn_in_dma_int(%struct.nbu2ss_udc* %0, %struct.nbu2ss_ep* %1, %struct.nbu2ss_req* %2) #0 {
  %4 = alloca %struct.nbu2ss_udc*, align 8
  %5 = alloca %struct.nbu2ss_ep*, align 8
  %6 = alloca %struct.nbu2ss_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_request*, align 8
  store %struct.nbu2ss_udc* %0, %struct.nbu2ss_udc** %4, align 8
  store %struct.nbu2ss_ep* %1, %struct.nbu2ss_ep** %5, align 8
  store %struct.nbu2ss_req* %2, %struct.nbu2ss_req** %6, align 8
  %10 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %6, align 8
  %11 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %10, i32 0, i32 2
  store %struct.usb_request* %11, %struct.usb_request** %9, align 8
  %12 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %6, align 8
  %13 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %78

17:                                               ; preds = %3
  %18 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %6, align 8
  %19 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.usb_request*, %struct.usb_request** %9, align 8
  %22 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %20
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %22, align 4
  %27 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %6, align 8
  %28 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %6, align 8
  %30 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.usb_request*, %struct.usb_request** %9, align 8
  %32 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.usb_request*, %struct.usb_request** %9, align 8
  %35 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %17
  %39 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %40 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %5, align 8
  %41 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %6, align 8
  %42 = call i32 @_nbu2ss_epn_in_transfer(%struct.nbu2ss_udc* %39, %struct.nbu2ss_ep* %40, %struct.nbu2ss_req* %41)
  br label %78

43:                                               ; preds = %17
  %44 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %5, align 8
  %45 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %7, align 4
  %48 = load %struct.usb_request*, %struct.usb_request** %9, align 8
  %49 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = srem i32 %50, %51
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %43
  %56 = load %struct.usb_request*, %struct.usb_request** %9, align 8
  %57 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 3
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %67 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %5, align 8
  %68 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @_nbu2ss_ep_in_end(%struct.nbu2ss_udc* %66, i32 %69, i32 0, i32 0)
  br label %71

71:                                               ; preds = %65, %61, %55
  br label %77

72:                                               ; preds = %43
  %73 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %74 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %5, align 8
  %75 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %6, align 8
  %76 = call i32 @_nbu2ss_epn_in_int(%struct.nbu2ss_udc* %73, %struct.nbu2ss_ep* %74, %struct.nbu2ss_req* %75)
  br label %77

77:                                               ; preds = %72, %71
  br label %78

78:                                               ; preds = %16, %77, %38
  ret void
}

declare dso_local i32 @_nbu2ss_epn_in_transfer(%struct.nbu2ss_udc*, %struct.nbu2ss_ep*, %struct.nbu2ss_req*) #1

declare dso_local i32 @_nbu2ss_ep_in_end(%struct.nbu2ss_udc*, i32, i32, i32) #1

declare dso_local i32 @_nbu2ss_epn_in_int(%struct.nbu2ss_udc*, %struct.nbu2ss_ep*, %struct.nbu2ss_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
