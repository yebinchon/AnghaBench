; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_serial.c_gs_read_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_serial.c_gs_read_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { %struct.gs_port* }
%struct.gs_port = type { i32, i32, i32 }
%struct.usb_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ep*, %struct.usb_request*)* @gs_read_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gs_read_complete(%struct.usb_ep* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca %struct.gs_port*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  %6 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %7 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %6, i32 0, i32 0
  %8 = load %struct.gs_port*, %struct.gs_port** %7, align 8
  store %struct.gs_port* %8, %struct.gs_port** %5, align 8
  %9 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %10 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %13 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %12, i32 0, i32 0
  %14 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %15 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %14, i32 0, i32 2
  %16 = call i32 @list_add_tail(i32* %13, i32* %15)
  %17 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %18 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %17, i32 0, i32 1
  %19 = call i32 @schedule_delayed_work(i32* %18, i32 0)
  %20 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %21 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock(i32* %21)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
