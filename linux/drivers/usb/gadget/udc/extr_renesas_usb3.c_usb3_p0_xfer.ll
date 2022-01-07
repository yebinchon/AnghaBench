; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_p0_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_p0_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3_ep = type { i64 }
%struct.renesas_usb3_request = type { i32 }

@USB3_P0_WRITE = common dso_local global i32 0, align 4
@USB3_P0_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.renesas_usb3_ep*, %struct.renesas_usb3_request*)* @usb3_p0_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb3_p0_xfer(%struct.renesas_usb3_ep* %0, %struct.renesas_usb3_request* %1) #0 {
  %3 = alloca %struct.renesas_usb3_ep*, align 8
  %4 = alloca %struct.renesas_usb3_request*, align 8
  %5 = alloca i32, align 4
  store %struct.renesas_usb3_ep* %0, %struct.renesas_usb3_ep** %3, align 8
  store %struct.renesas_usb3_request* %1, %struct.renesas_usb3_request** %4, align 8
  %6 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %7 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %12 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %4, align 8
  %13 = load i32, i32* @USB3_P0_WRITE, align 4
  %14 = call i32 @usb3_write_pipe(%struct.renesas_usb3_ep* %11, %struct.renesas_usb3_request* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %17 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %4, align 8
  %18 = load i32, i32* @USB3_P0_READ, align 4
  %19 = call i32 @usb3_read_pipe(%struct.renesas_usb3_ep* %16, %struct.renesas_usb3_request* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %15, %10
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %25 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %4, align 8
  %26 = call i32 @usb3_set_status_stage(%struct.renesas_usb3_ep* %24, %struct.renesas_usb3_request* %25)
  br label %27

27:                                               ; preds = %23, %20
  ret void
}

declare dso_local i32 @usb3_write_pipe(%struct.renesas_usb3_ep*, %struct.renesas_usb3_request*, i32) #1

declare dso_local i32 @usb3_read_pipe(%struct.renesas_usb3_ep*, %struct.renesas_usb3_request*, i32) #1

declare dso_local i32 @usb3_set_status_stage(%struct.renesas_usb3_ep*, %struct.renesas_usb3_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
