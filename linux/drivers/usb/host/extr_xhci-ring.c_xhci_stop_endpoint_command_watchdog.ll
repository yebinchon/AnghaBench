; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_stop_endpoint_command_watchdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_stop_endpoint_command_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_virt_ep = type { i32, i32, %struct.xhci_hcd* }
%struct.xhci_hcd = type { i32 }
%struct.timer_list = type { i32 }

@stop_cmd_timer = common dso_local global i32 0, align 4
@EP_STOP_CMD_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Stop EP timer raced with cmd completion, exit\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"xHCI host not responding to stop endpoint command.\0A\00", align 1
@trace_xhci_dbg_cancel_urb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"xHCI host controller is dead.\00", align 1
@ep = common dso_local global %struct.xhci_virt_ep* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_stop_endpoint_command_watchdog(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.xhci_virt_ep*, align 8
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %3, align 8
  %7 = ptrtoint %struct.xhci_virt_ep* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @stop_cmd_timer, align 4
  %10 = call %struct.xhci_virt_ep* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.xhci_virt_ep* %10, %struct.xhci_virt_ep** %3, align 8
  %11 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %3, align 8
  %12 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %11, i32 0, i32 2
  %13 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  store %struct.xhci_hcd* %13, %struct.xhci_hcd** %4, align 8
  %14 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %15 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %14, i32 0, i32 0
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %3, align 8
  %19 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @EP_STOP_CMD_PENDING, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %3, align 8
  %26 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %25, i32 0, i32 1
  %27 = call i64 @timer_pending(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24, %1
  %30 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %31 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %30, i32 0, i32 0
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %35 = call i32 @xhci_dbg(%struct.xhci_hcd* %34, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %56

36:                                               ; preds = %24
  %37 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %38 = call i32 @xhci_warn(%struct.xhci_hcd* %37, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EP_STOP_CMD_PENDING, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %3, align 8
  %42 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %46 = call i32 @xhci_halt(%struct.xhci_hcd* %45)
  %47 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %48 = call i32 @xhci_hc_died(%struct.xhci_hcd* %47)
  %49 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %50 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %49, i32 0, i32 0
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %54 = load i32, i32* @trace_xhci_dbg_cancel_urb, align 4
  %55 = call i32 @xhci_dbg_trace(%struct.xhci_hcd* %53, i32 %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %36, %29
  ret void
}

declare dso_local %struct.xhci_virt_ep* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @xhci_halt(%struct.xhci_hcd*) #1

declare dso_local i32 @xhci_hc_died(%struct.xhci_hcd*) #1

declare dso_local i32 @xhci_dbg_trace(%struct.xhci_hcd*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
