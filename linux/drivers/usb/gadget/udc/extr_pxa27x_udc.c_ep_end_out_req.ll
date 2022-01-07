; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_ep_end_out_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_ep_end_out_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_ep = type { i32 }
%struct.pxa27x_request = type { i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa_ep*, %struct.pxa27x_request*, i64*)* @ep_end_out_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep_end_out_req(%struct.pxa_ep* %0, %struct.pxa27x_request* %1, i64* %2) #0 {
  %4 = alloca %struct.pxa_ep*, align 8
  %5 = alloca %struct.pxa27x_request*, align 8
  %6 = alloca i64*, align 8
  store %struct.pxa_ep* %0, %struct.pxa_ep** %4, align 8
  store %struct.pxa27x_request* %1, %struct.pxa27x_request** %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load %struct.pxa_ep*, %struct.pxa_ep** %4, align 8
  %8 = load i32, i32* @USB_DIR_IN, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @inc_ep_stats_reqs(%struct.pxa_ep* %7, i32 %11)
  %13 = load %struct.pxa_ep*, %struct.pxa_ep** %4, align 8
  %14 = load %struct.pxa27x_request*, %struct.pxa27x_request** %5, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = call i32 @req_done(%struct.pxa_ep* %13, %struct.pxa27x_request* %14, i32 0, i64* %15)
  ret void
}

declare dso_local i32 @inc_ep_stats_reqs(%struct.pxa_ep*, i32) #1

declare dso_local i32 @req_done(%struct.pxa_ep*, %struct.pxa27x_request*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
