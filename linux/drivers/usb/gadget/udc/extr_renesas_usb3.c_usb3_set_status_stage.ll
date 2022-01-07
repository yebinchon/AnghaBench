; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_set_status_stage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_set_status_stage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3_ep = type { i64 }
%struct.renesas_usb3_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.renesas_usb3 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.renesas_usb3_ep*, %struct.renesas_usb3_request*)* @usb3_set_status_stage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb3_set_status_stage(%struct.renesas_usb3_ep* %0, %struct.renesas_usb3_request* %1) #0 {
  %3 = alloca %struct.renesas_usb3_ep*, align 8
  %4 = alloca %struct.renesas_usb3_request*, align 8
  %5 = alloca %struct.renesas_usb3*, align 8
  store %struct.renesas_usb3_ep* %0, %struct.renesas_usb3_ep** %3, align 8
  store %struct.renesas_usb3_request* %1, %struct.renesas_usb3_request** %4, align 8
  %6 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %7 = call %struct.renesas_usb3* @usb3_ep_to_usb3(%struct.renesas_usb3_ep* %6)
  store %struct.renesas_usb3* %7, %struct.renesas_usb3** %5, align 8
  %8 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %9 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %14 = call i32 @usb3_set_p0_con_for_ctrl_read_status(%struct.renesas_usb3* %13)
  br label %28

15:                                               ; preds = %2
  %16 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %4, align 8
  %17 = getelementptr inbounds %struct.renesas_usb3_request, %struct.renesas_usb3_request* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %23 = call i32 @usb3_set_p0_con_for_no_data(%struct.renesas_usb3* %22)
  br label %27

24:                                               ; preds = %15
  %25 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %26 = call i32 @usb3_set_p0_con_for_ctrl_write_status(%struct.renesas_usb3* %25)
  br label %27

27:                                               ; preds = %24, %21
  br label %28

28:                                               ; preds = %27, %12
  ret void
}

declare dso_local %struct.renesas_usb3* @usb3_ep_to_usb3(%struct.renesas_usb3_ep*) #1

declare dso_local i32 @usb3_set_p0_con_for_ctrl_read_status(%struct.renesas_usb3*) #1

declare dso_local i32 @usb3_set_p0_con_for_no_data(%struct.renesas_usb3*) #1

declare dso_local i32 @usb3_set_p0_con_for_ctrl_write_status(%struct.renesas_usb3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
