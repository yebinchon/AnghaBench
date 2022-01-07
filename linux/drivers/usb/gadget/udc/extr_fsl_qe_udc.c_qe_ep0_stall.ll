; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_qe_udc.c_qe_ep0_stall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_qe_udc.c_qe_ep0_stall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qe_udc = type { i64, i32, i32* }

@WAIT_FOR_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qe_udc*)* @qe_ep0_stall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qe_ep0_stall(%struct.qe_udc* %0) #0 {
  %2 = alloca %struct.qe_udc*, align 8
  store %struct.qe_udc* %0, %struct.qe_udc** %2, align 8
  %3 = load %struct.qe_udc*, %struct.qe_udc** %2, align 8
  %4 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = call i32 @qe_eptx_stall_change(i32* %6, i32 1)
  %8 = load %struct.qe_udc*, %struct.qe_udc** %2, align 8
  %9 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = call i32 @qe_eprx_stall_change(i32* %11, i32 1)
  %13 = load i32, i32* @WAIT_FOR_SETUP, align 4
  %14 = load %struct.qe_udc*, %struct.qe_udc** %2, align 8
  %15 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load %struct.qe_udc*, %struct.qe_udc** %2, align 8
  %17 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  ret i32 0
}

declare dso_local i32 @qe_eptx_stall_change(i32*, i32) #1

declare dso_local i32 @qe_eprx_stall_change(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
