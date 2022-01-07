; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fhci-sched.c_sof_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fhci-sched.c_sof_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fhci_hcd = type { i32, %struct.fhci_usb* }
%struct.fhci_usb = type { i64, %struct.TYPE_10__*, i32, i32, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@FHCI_PORT_DISABLED = common dso_local global i64 0, align 8
@USB_PORT_STAT_CONNECTION = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_CONNECTION = common dso_local global i32 0, align 4
@USB_PORT_STAT_LOW_SPEED = common dso_local global i32 0, align 4
@FHCI_PORT_LOW = common dso_local global i64 0, align 8
@FHCI_PORT_FULL = common dso_local global i64 0, align 8
@USB_E_IDLE_MASK = common dso_local global i32 0, align 4
@FRAME_IS_TRANSMITTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fhci_hcd*)* @sof_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sof_interrupt(%struct.fhci_hcd* %0) #0 {
  %2 = alloca %struct.fhci_hcd*, align 8
  %3 = alloca %struct.fhci_usb*, align 8
  store %struct.fhci_hcd* %0, %struct.fhci_hcd** %2, align 8
  %4 = load %struct.fhci_hcd*, %struct.fhci_hcd** %2, align 8
  %5 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %4, i32 0, i32 1
  %6 = load %struct.fhci_usb*, %struct.fhci_usb** %5, align 8
  store %struct.fhci_usb* %6, %struct.fhci_usb** %3, align 8
  %7 = load %struct.fhci_usb*, %struct.fhci_usb** %3, align 8
  %8 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @FHCI_PORT_DISABLED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %67

12:                                               ; preds = %1
  %13 = load %struct.fhci_usb*, %struct.fhci_usb** %3, align 8
  %14 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %13, i32 0, i32 5
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %67

22:                                               ; preds = %12
  %23 = load %struct.fhci_usb*, %struct.fhci_usb** %3, align 8
  %24 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %23, i32 0, i32 5
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @USB_PORT_STAT_C_CONNECTION, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %67, label %32

32:                                               ; preds = %22
  %33 = load %struct.fhci_usb*, %struct.fhci_usb** %3, align 8
  %34 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %33, i32 0, i32 5
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @USB_PORT_STAT_LOW_SPEED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  %43 = load i64, i64* @FHCI_PORT_LOW, align 8
  %44 = load %struct.fhci_usb*, %struct.fhci_usb** %3, align 8
  %45 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %50

46:                                               ; preds = %32
  %47 = load i64, i64* @FHCI_PORT_FULL, align 8
  %48 = load %struct.fhci_usb*, %struct.fhci_usb** %3, align 8
  %49 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32, i32* @USB_E_IDLE_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.fhci_usb*, %struct.fhci_usb** %3, align 8
  %54 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.fhci_usb*, %struct.fhci_usb** %3, align 8
  %58 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %57, i32 0, i32 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load %struct.fhci_usb*, %struct.fhci_usb** %3, align 8
  %64 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @out_be16(i32* %62, i32 %65)
  br label %67

67:                                               ; preds = %50, %22, %12, %1
  %68 = load %struct.fhci_hcd*, %struct.fhci_hcd** %2, align 8
  %69 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.fhci_usb*, %struct.fhci_usb** %3, align 8
  %72 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @gtm_set_exact_timer16(i32 %70, i32 %73, i32 0)
  %75 = load %struct.fhci_usb*, %struct.fhci_usb** %3, align 8
  %76 = call i32 @fhci_host_transmit_actual_frame(%struct.fhci_usb* %75)
  %77 = load i32, i32* @FRAME_IS_TRANSMITTED, align 4
  %78 = load %struct.fhci_usb*, %struct.fhci_usb** %3, align 8
  %79 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %78, i32 0, i32 1
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 4
  %82 = load %struct.fhci_usb*, %struct.fhci_usb** %3, align 8
  %83 = call i32 @fhci_schedule_transactions(%struct.fhci_usb* %82)
  ret void
}

declare dso_local i32 @out_be16(i32*, i32) #1

declare dso_local i32 @gtm_set_exact_timer16(i32, i32, i32) #1

declare dso_local i32 @fhci_host_transmit_actual_frame(%struct.fhci_usb*) #1

declare dso_local i32 @fhci_schedule_transactions(%struct.fhci_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
