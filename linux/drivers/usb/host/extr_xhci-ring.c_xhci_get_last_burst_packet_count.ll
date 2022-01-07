; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_get_last_burst_packet_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_get_last_burst_packet_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.urb = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.urb*, i32)* @xhci_get_last_burst_packet_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_get_last_burst_packet_count(%struct.xhci_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %11 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 256
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %48

15:                                               ; preds = %3
  %16 = load %struct.urb*, %struct.urb** %6, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @USB_SPEED_SUPER, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %15
  %24 = load %struct.urb*, %struct.urb** %6, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = add i32 %31, 1
  %33 = urem i32 %30, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %48

38:                                               ; preds = %23
  %39 = load i32, i32* %9, align 4
  %40 = sub i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %48

41:                                               ; preds = %15
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = sub i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %44, %38, %36, %14
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
