; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-hcd.c_ehci_urb_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-hcd.c_ehci_urb_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ehci_hcd = type { i32 }
%struct.list_head = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*, i32)* @ehci_urb_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_urb_enqueue(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ehci_hcd*, align 8
  %9 = alloca %struct.list_head, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %11 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %10)
  store %struct.ehci_hcd* %11, %struct.ehci_hcd** %8, align 8
  %12 = call i32 @INIT_LIST_HEAD(%struct.list_head* %9)
  %13 = load %struct.urb*, %struct.urb** %6, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @usb_pipetype(i32 %15)
  switch i32 %16, label %26 [
    i32 130, label %17
    i32 129, label %40
    i32 128, label %54
  ]

17:                                               ; preds = %3
  %18 = load %struct.urb*, %struct.urb** %6, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 16384
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EMSGSIZE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %72

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %3, %25
  %27 = load %struct.ehci_hcd*, %struct.ehci_hcd** %8, align 8
  %28 = load %struct.urb*, %struct.urb** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @qh_urb_transaction(%struct.ehci_hcd* %27, %struct.urb* %28, %struct.list_head* %9, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %72

35:                                               ; preds = %26
  %36 = load %struct.ehci_hcd*, %struct.ehci_hcd** %8, align 8
  %37 = load %struct.urb*, %struct.urb** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @submit_async(%struct.ehci_hcd* %36, %struct.urb* %37, %struct.list_head* %9, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %72

40:                                               ; preds = %3
  %41 = load %struct.ehci_hcd*, %struct.ehci_hcd** %8, align 8
  %42 = load %struct.urb*, %struct.urb** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @qh_urb_transaction(%struct.ehci_hcd* %41, %struct.urb* %42, %struct.list_head* %9, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %72

49:                                               ; preds = %40
  %50 = load %struct.ehci_hcd*, %struct.ehci_hcd** %8, align 8
  %51 = load %struct.urb*, %struct.urb** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @intr_submit(%struct.ehci_hcd* %50, %struct.urb* %51, %struct.list_head* %9, i32 %52)
  store i32 %53, i32* %4, align 4
  br label %72

54:                                               ; preds = %3
  %55 = load %struct.urb*, %struct.urb** %6, align 8
  %56 = getelementptr inbounds %struct.urb, %struct.urb* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @USB_SPEED_HIGH, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %54
  %63 = load %struct.ehci_hcd*, %struct.ehci_hcd** %8, align 8
  %64 = load %struct.urb*, %struct.urb** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @itd_submit(%struct.ehci_hcd* %63, %struct.urb* %64, i32 %65)
  store i32 %66, i32* %4, align 4
  br label %72

67:                                               ; preds = %54
  %68 = load %struct.ehci_hcd*, %struct.ehci_hcd** %8, align 8
  %69 = load %struct.urb*, %struct.urb** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @sitd_submit(%struct.ehci_hcd* %68, %struct.urb* %69, i32 %70)
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %67, %62, %49, %46, %35, %32, %22
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @usb_pipetype(i32) #1

declare dso_local i32 @qh_urb_transaction(%struct.ehci_hcd*, %struct.urb*, %struct.list_head*, i32) #1

declare dso_local i32 @submit_async(%struct.ehci_hcd*, %struct.urb*, %struct.list_head*, i32) #1

declare dso_local i32 @intr_submit(%struct.ehci_hcd*, %struct.urb*, %struct.list_head*, i32) #1

declare dso_local i32 @itd_submit(%struct.ehci_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @sitd_submit(%struct.ehci_hcd*, %struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
