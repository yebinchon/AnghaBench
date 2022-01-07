; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fhci-sched.c_fhci_frame_limit_timer_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fhci-sched.c_fhci_frame_limit_timer_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.fhci_hcd = type { i32, i32, %struct.fhci_usb* }
%struct.fhci_usb = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@FRAME_IS_TRANSMITTED = common dso_local global i64 0, align 8
@FRAME_TIMER_END_TRANSMISSION = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fhci_frame_limit_timer_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.fhci_hcd*, align 8
  %7 = alloca %struct.fhci_usb*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.usb_hcd*
  store %struct.usb_hcd* %9, %struct.usb_hcd** %5, align 8
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %11 = call %struct.fhci_hcd* @hcd_to_fhci(%struct.usb_hcd* %10)
  store %struct.fhci_hcd* %11, %struct.fhci_hcd** %6, align 8
  %12 = load %struct.fhci_hcd*, %struct.fhci_hcd** %6, align 8
  %13 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %12, i32 0, i32 2
  %14 = load %struct.fhci_usb*, %struct.fhci_usb** %13, align 8
  store %struct.fhci_usb* %14, %struct.fhci_usb** %7, align 8
  %15 = load %struct.fhci_hcd*, %struct.fhci_hcd** %6, align 8
  %16 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.fhci_hcd*, %struct.fhci_hcd** %6, align 8
  %19 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @gtm_set_exact_timer16(i32 %20, i32 1000, i32 0)
  %22 = load %struct.fhci_usb*, %struct.fhci_usb** %7, align 8
  %23 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @FRAME_IS_TRANSMITTED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %2
  %30 = load i64, i64* @FRAME_TIMER_END_TRANSMISSION, align 8
  %31 = load %struct.fhci_usb*, %struct.fhci_usb** %7, align 8
  %32 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i64 %30, i64* %34, align 8
  %35 = load %struct.fhci_usb*, %struct.fhci_usb** %7, align 8
  %36 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @fhci_push_dummy_bd(i32 %37)
  br label %39

39:                                               ; preds = %29, %2
  %40 = load %struct.fhci_usb*, %struct.fhci_usb** %7, align 8
  %41 = call i32 @fhci_schedule_transactions(%struct.fhci_usb* %40)
  %42 = load %struct.fhci_hcd*, %struct.fhci_hcd** %6, align 8
  %43 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock(i32* %43)
  %45 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %45
}

declare dso_local %struct.fhci_hcd* @hcd_to_fhci(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @gtm_set_exact_timer16(i32, i32, i32) #1

declare dso_local i32 @fhci_push_dummy_bd(i32) #1

declare dso_local i32 @fhci_schedule_transactions(%struct.fhci_usb*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
