; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_complete_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_complete_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_hsudc_ep = type { i32, i32, i32, %struct.s3c_hsudc* }
%struct.s3c_hsudc = type { i32, i32 }
%struct.s3c_hsudc_req = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@WAIT_FOR_SETUP = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c_hsudc_ep*, %struct.s3c_hsudc_req*, i32)* @s3c_hsudc_complete_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_hsudc_complete_request(%struct.s3c_hsudc_ep* %0, %struct.s3c_hsudc_req* %1, i32 %2) #0 {
  %4 = alloca %struct.s3c_hsudc_ep*, align 8
  %5 = alloca %struct.s3c_hsudc_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.s3c_hsudc*, align 8
  store %struct.s3c_hsudc_ep* %0, %struct.s3c_hsudc_ep** %4, align 8
  store %struct.s3c_hsudc_req* %1, %struct.s3c_hsudc_req** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %4, align 8
  %10 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %4, align 8
  %13 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %12, i32 0, i32 3
  %14 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %13, align 8
  store %struct.s3c_hsudc* %14, %struct.s3c_hsudc** %8, align 8
  %15 = load %struct.s3c_hsudc_req*, %struct.s3c_hsudc_req** %5, align 8
  %16 = getelementptr inbounds %struct.s3c_hsudc_req, %struct.s3c_hsudc_req* %15, i32 0, i32 1
  %17 = call i32 @list_del_init(i32* %16)
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.s3c_hsudc_req*, %struct.s3c_hsudc_req** %5, align 8
  %20 = getelementptr inbounds %struct.s3c_hsudc_req, %struct.s3c_hsudc_req* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %4, align 8
  %23 = call i32 @ep_index(%struct.s3c_hsudc_ep* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @WAIT_FOR_SETUP, align 4
  %27 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %8, align 8
  %28 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @USB_DIR_IN, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %4, align 8
  %32 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %25, %3
  %36 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %4, align 8
  %37 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %8, align 8
  %39 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %4, align 8
  %42 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %41, i32 0, i32 1
  %43 = load %struct.s3c_hsudc_req*, %struct.s3c_hsudc_req** %5, align 8
  %44 = getelementptr inbounds %struct.s3c_hsudc_req, %struct.s3c_hsudc_req* %43, i32 0, i32 0
  %45 = call i32 @usb_gadget_giveback_request(i32* %42, %struct.TYPE_2__* %44)
  %46 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %8, align 8
  %47 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %46, i32 0, i32 0
  %48 = call i32 @spin_lock(i32* %47)
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %4, align 8
  %51 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @ep_index(%struct.s3c_hsudc_ep*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_gadget_giveback_request(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
