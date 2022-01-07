; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_udc_core.c_ch9setaddress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_udc_core.c_ch9setaddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_udc = type { i32, i64 }
%struct.usb_ctrlrequest = type { i64 }

@USB_STATE_ADDRESS = common dso_local global i32 0, align 4
@EP_DIR_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_udc*, %struct.usb_ctrlrequest*)* @ch9setaddress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ch9setaddress(%struct.mv_udc* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca %struct.mv_udc*, align 8
  %4 = alloca %struct.usb_ctrlrequest*, align 8
  store %struct.mv_udc* %0, %struct.mv_udc** %3, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %4, align 8
  %5 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %6 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %9 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %8, i32 0, i32 1
  store i64 %7, i64* %9, align 8
  %10 = load i32, i32* @USB_STATE_ADDRESS, align 4
  %11 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %12 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %14 = load i32, i32* @EP_DIR_IN, align 4
  %15 = call i64 @udc_prime_status(%struct.mv_udc* %13, i32 %14, i32 0, i32 1)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %19 = call i32 @ep0_stall(%struct.mv_udc* %18)
  br label %20

20:                                               ; preds = %17, %2
  ret void
}

declare dso_local i64 @udc_prime_status(%struct.mv_udc*, i32, i32, i32) #1

declare dso_local i32 @ep0_stall(%struct.mv_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
