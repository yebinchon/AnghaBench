; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_qe_udc.c_ch9setaddress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_qe_udc.c_ch9setaddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qe_udc = type { i32, i64 }

@USB_STATE_ADDRESS = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qe_udc*, i64, i64, i64)* @ch9setaddress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ch9setaddress(%struct.qe_udc* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.qe_udc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.qe_udc* %0, %struct.qe_udc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  %11 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %10, i32 0, i32 1
  store i64 %9, i64* %11, align 8
  %12 = load i32, i32* @USB_STATE_ADDRESS, align 4
  %13 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  %14 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  %16 = load i32, i32* @USB_DIR_IN, align 4
  %17 = call i64 @ep0_prime_status(%struct.qe_udc* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  %21 = call i32 @qe_ep0_stall(%struct.qe_udc* %20)
  br label %22

22:                                               ; preds = %19, %4
  ret void
}

declare dso_local i64 @ep0_prime_status(%struct.qe_udc*, i32) #1

declare dso_local i32 @qe_ep0_stall(%struct.qe_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
