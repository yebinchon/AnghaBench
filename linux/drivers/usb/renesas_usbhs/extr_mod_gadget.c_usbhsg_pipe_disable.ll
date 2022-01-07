; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_pipe_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_pipe_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhsg_uep = type { i32 }
%struct.usbhs_pipe = type { i32 }
%struct.usbhs_pkt = type { i32 }

@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhsg_uep*)* @usbhsg_pipe_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsg_pipe_disable(%struct.usbhsg_uep* %0) #0 {
  %2 = alloca %struct.usbhsg_uep*, align 8
  %3 = alloca %struct.usbhs_pipe*, align 8
  %4 = alloca %struct.usbhs_pkt*, align 8
  store %struct.usbhsg_uep* %0, %struct.usbhsg_uep** %2, align 8
  %5 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %2, align 8
  %6 = call %struct.usbhs_pipe* @usbhsg_uep_to_pipe(%struct.usbhsg_uep* %5)
  store %struct.usbhs_pipe* %6, %struct.usbhs_pipe** %3, align 8
  br label %7

7:                                                ; preds = %1, %13
  %8 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %9 = call %struct.usbhs_pkt* @usbhs_pkt_pop(%struct.usbhs_pipe* %8, i32* null)
  store %struct.usbhs_pkt* %9, %struct.usbhs_pkt** %4, align 8
  %10 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %11 = icmp ne %struct.usbhs_pkt* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  br label %20

13:                                               ; preds = %7
  %14 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %2, align 8
  %15 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %16 = call i32 @usbhsg_pkt_to_ureq(%struct.usbhs_pkt* %15)
  %17 = load i32, i32* @ESHUTDOWN, align 4
  %18 = sub nsw i32 0, %17
  %19 = call i32 @usbhsg_queue_pop(%struct.usbhsg_uep* %14, i32 %16, i32 %18)
  br label %7

20:                                               ; preds = %12
  %21 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %22 = call i32 @usbhs_pipe_disable(%struct.usbhs_pipe* %21)
  ret i32 0
}

declare dso_local %struct.usbhs_pipe* @usbhsg_uep_to_pipe(%struct.usbhsg_uep*) #1

declare dso_local %struct.usbhs_pkt* @usbhs_pkt_pop(%struct.usbhs_pipe*, i32*) #1

declare dso_local i32 @usbhsg_queue_pop(%struct.usbhsg_uep*, i32, i32) #1

declare dso_local i32 @usbhsg_pkt_to_ureq(%struct.usbhs_pkt*) #1

declare dso_local i32 @usbhs_pipe_disable(%struct.usbhs_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
