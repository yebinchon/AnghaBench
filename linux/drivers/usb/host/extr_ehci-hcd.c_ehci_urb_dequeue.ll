; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-hcd.c_ehci_urb_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-hcd.c_ehci_urb_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { i32, i64 }
%struct.ehci_hcd = type { i32 }
%struct.ehci_qh = type { i32, i32, i32 }

@PIPE_ISOCHRONOUS = common dso_local global i64 0, align 8
@QH_UNLINK_REQUESTED = common dso_local global i32 0, align 4
@PIPE_INTERRUPT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*, i32)* @ehci_urb_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_urb_dequeue(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ehci_hcd*, align 8
  %8 = alloca %struct.ehci_qh*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %12 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %11)
  store %struct.ehci_hcd* %12, %struct.ehci_hcd** %7, align 8
  %13 = load %struct.ehci_hcd*, %struct.ehci_hcd** %7, align 8
  %14 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %13, i32 0, i32 0
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %18 = load %struct.urb*, %struct.urb** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @usb_hcd_check_unlink_urb(%struct.usb_hcd* %17, %struct.urb* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %71

24:                                               ; preds = %3
  %25 = load %struct.urb*, %struct.urb** %5, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @usb_pipetype(i32 %27)
  %29 = load i64, i64* @PIPE_ISOCHRONOUS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %70

32:                                               ; preds = %24
  %33 = load %struct.urb*, %struct.urb** %5, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.ehci_qh*
  store %struct.ehci_qh* %36, %struct.ehci_qh** %8, align 8
  %37 = load i32, i32* @QH_UNLINK_REQUESTED, align 4
  %38 = load %struct.ehci_qh*, %struct.ehci_qh** %8, align 8
  %39 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.ehci_qh*, %struct.ehci_qh** %8, align 8
  %43 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %69 [
    i32 130, label %45
    i32 132, label %61
    i32 129, label %64
    i32 128, label %64
    i32 131, label %65
  ]

45:                                               ; preds = %32
  %46 = load %struct.urb*, %struct.urb** %5, align 8
  %47 = getelementptr inbounds %struct.urb, %struct.urb* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @usb_pipetype(i32 %48)
  %50 = load i64, i64* @PIPE_INTERRUPT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load %struct.ehci_hcd*, %struct.ehci_hcd** %7, align 8
  %54 = load %struct.ehci_qh*, %struct.ehci_qh** %8, align 8
  %55 = call i32 @start_unlink_intr(%struct.ehci_hcd* %53, %struct.ehci_qh* %54)
  br label %60

56:                                               ; preds = %45
  %57 = load %struct.ehci_hcd*, %struct.ehci_hcd** %7, align 8
  %58 = load %struct.ehci_qh*, %struct.ehci_qh** %8, align 8
  %59 = call i32 @start_unlink_async(%struct.ehci_hcd* %57, %struct.ehci_qh* %58)
  br label %60

60:                                               ; preds = %56, %52
  br label %69

61:                                               ; preds = %32
  %62 = load %struct.ehci_qh*, %struct.ehci_qh** %8, align 8
  %63 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  br label %69

64:                                               ; preds = %32, %32
  br label %69

65:                                               ; preds = %32
  %66 = load %struct.ehci_hcd*, %struct.ehci_hcd** %7, align 8
  %67 = load %struct.ehci_qh*, %struct.ehci_qh** %8, align 8
  %68 = call i32 @qh_completions(%struct.ehci_hcd* %66, %struct.ehci_qh* %67)
  br label %69

69:                                               ; preds = %32, %65, %64, %61, %60
  br label %70

70:                                               ; preds = %69, %31
  br label %71

71:                                               ; preds = %70, %23
  %72 = load %struct.ehci_hcd*, %struct.ehci_hcd** %7, align 8
  %73 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %72, i32 0, i32 0
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load i32, i32* %10, align 4
  ret i32 %76
}

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb_hcd_check_unlink_urb(%struct.usb_hcd*, %struct.urb*, i32) #1

declare dso_local i64 @usb_pipetype(i32) #1

declare dso_local i32 @start_unlink_intr(%struct.ehci_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @start_unlink_async(%struct.ehci_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @qh_completions(%struct.ehci_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
