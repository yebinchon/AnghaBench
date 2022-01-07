; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-q.c_ehci_clear_tt_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-q.c_ehci_clear_tt_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32 }
%struct.ehci_qh = type { i32 }
%struct.urb = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.usb_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_hcd*, %struct.ehci_qh*, %struct.urb*, i32)* @ehci_clear_tt_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_clear_tt_buffer(%struct.ehci_hcd* %0, %struct.ehci_qh* %1, %struct.urb* %2, i32 %3) #0 {
  %5 = alloca %struct.ehci_hcd*, align 8
  %6 = alloca %struct.ehci_qh*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i32, align 4
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %5, align 8
  store %struct.ehci_qh* %1, %struct.ehci_qh** %6, align 8
  store %struct.urb* %2, %struct.urb** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.urb*, %struct.urb** %7, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %54

15:                                               ; preds = %4
  %16 = load %struct.urb*, %struct.urb** %7, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @usb_pipeint(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %54, label %21

21:                                               ; preds = %15
  %22 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %23 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %54, label %26

26:                                               ; preds = %21
  %27 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %28 = call i32 @ehci_is_TDI(%struct.ehci_hcd* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load %struct.urb*, %struct.urb** %7, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.usb_device*, %struct.usb_device** %36, align 8
  %38 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %39 = call %struct.TYPE_8__* @ehci_to_hcd(%struct.ehci_hcd* %38)
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.usb_device*, %struct.usb_device** %41, align 8
  %43 = icmp ne %struct.usb_device* %37, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %30, %26
  %45 = load %struct.urb*, %struct.urb** %7, align 8
  %46 = call i64 @usb_hub_clear_tt_buffer(%struct.urb* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %50 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %44
  br label %53

52:                                               ; preds = %30
  br label %53

53:                                               ; preds = %52, %51
  br label %54

54:                                               ; preds = %53, %21, %15, %4
  ret void
}

declare dso_local i32 @usb_pipeint(i32) #1

declare dso_local i32 @ehci_is_TDI(%struct.ehci_hcd*) #1

declare dso_local %struct.TYPE_8__* @ehci_to_hcd(%struct.ehci_hcd*) #1

declare dso_local i64 @usb_hub_clear_tt_buffer(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
