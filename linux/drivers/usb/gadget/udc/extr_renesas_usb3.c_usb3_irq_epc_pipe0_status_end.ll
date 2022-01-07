; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_irq_epc_pipe0_status_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_irq_epc_pipe0_status_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3 = type { i64 }
%struct.renesas_usb3_ep = type { i32 }
%struct.renesas_usb3_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.renesas_usb3*)* @usb3_irq_epc_pipe0_status_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb3_irq_epc_pipe0_status_end(%struct.renesas_usb3* %0) #0 {
  %2 = alloca %struct.renesas_usb3*, align 8
  %3 = alloca %struct.renesas_usb3_ep*, align 8
  %4 = alloca %struct.renesas_usb3_request*, align 8
  store %struct.renesas_usb3* %0, %struct.renesas_usb3** %2, align 8
  %5 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %6 = call %struct.renesas_usb3_ep* @usb3_get_ep(%struct.renesas_usb3* %5, i32 0)
  store %struct.renesas_usb3_ep* %6, %struct.renesas_usb3_ep** %3, align 8
  %7 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %8 = call %struct.renesas_usb3_request* @usb3_get_request(%struct.renesas_usb3_ep* %7)
  store %struct.renesas_usb3_request* %8, %struct.renesas_usb3_request** %4, align 8
  %9 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %4, align 8
  %10 = icmp ne %struct.renesas_usb3_request* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %13 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %4, align 8
  %14 = call i32 @usb3_request_done(%struct.renesas_usb3_ep* %12, %struct.renesas_usb3_request* %13, i32 0)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %17 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %22 = call i32 @usb3_set_test_mode(%struct.renesas_usb3* %21)
  br label %23

23:                                               ; preds = %20, %15
  ret void
}

declare dso_local %struct.renesas_usb3_ep* @usb3_get_ep(%struct.renesas_usb3*, i32) #1

declare dso_local %struct.renesas_usb3_request* @usb3_get_request(%struct.renesas_usb3_ep*) #1

declare dso_local i32 @usb3_request_done(%struct.renesas_usb3_ep*, %struct.renesas_usb3_request*, i32) #1

declare dso_local i32 @usb3_set_test_mode(%struct.renesas_usb3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
