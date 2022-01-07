; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fotg210_clear_tt_buffer_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fotg210_clear_tt_buffer_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usb_host_endpoint = type { %struct.fotg210_qh* }
%struct.fotg210_qh = type { i64, i32, i64 }
%struct.fotg210_hcd = type { i64, i32 }

@QH_STATE_IDLE = common dso_local global i64 0, align 8
@FOTG210_RH_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.usb_host_endpoint*)* @fotg210_clear_tt_buffer_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fotg210_clear_tt_buffer_complete(%struct.usb_hcd* %0, %struct.usb_host_endpoint* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.usb_host_endpoint*, align 8
  %5 = alloca %struct.fotg210_hcd*, align 8
  %6 = alloca %struct.fotg210_qh*, align 8
  %7 = alloca i64, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %4, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = call %struct.fotg210_hcd* @hcd_to_fotg210(%struct.usb_hcd* %8)
  store %struct.fotg210_hcd* %9, %struct.fotg210_hcd** %5, align 8
  %10 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %11 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %10, i32 0, i32 0
  %12 = load %struct.fotg210_qh*, %struct.fotg210_qh** %11, align 8
  store %struct.fotg210_qh* %12, %struct.fotg210_qh** %6, align 8
  %13 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %14 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %13, i32 0, i32 1
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.fotg210_qh*, %struct.fotg210_qh** %6, align 8
  %18 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.fotg210_qh*, %struct.fotg210_qh** %6, align 8
  %20 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @QH_STATE_IDLE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %2
  %25 = load %struct.fotg210_qh*, %struct.fotg210_qh** %6, align 8
  %26 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %25, i32 0, i32 1
  %27 = call i32 @list_empty(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %31 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FOTG210_RH_RUNNING, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %37 = load %struct.fotg210_qh*, %struct.fotg210_qh** %6, align 8
  %38 = call i32 @qh_link_async(%struct.fotg210_hcd* %36, %struct.fotg210_qh* %37)
  br label %39

39:                                               ; preds = %35, %29, %24, %2
  %40 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %41 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %40, i32 0, i32 1
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  ret void
}

declare dso_local %struct.fotg210_hcd* @hcd_to_fotg210(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @qh_link_async(%struct.fotg210_hcd*, %struct.fotg210_qh*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
