; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-q.c_uhci_urbp_wants_fsbr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-q.c_uhci_urbp_wants_fsbr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_hcd = type { i32, i32, i64, i32 }
%struct.urb_priv = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uhci_hcd*, %struct.urb_priv*)* @uhci_urbp_wants_fsbr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhci_urbp_wants_fsbr(%struct.uhci_hcd* %0, %struct.urb_priv* %1) #0 {
  %3 = alloca %struct.uhci_hcd*, align 8
  %4 = alloca %struct.urb_priv*, align 8
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %3, align 8
  store %struct.urb_priv* %1, %struct.urb_priv** %4, align 8
  %5 = load %struct.urb_priv*, %struct.urb_priv** %4, align 8
  %6 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %2
  %10 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %11 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %13 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %18 = call i32 @uhci_fsbr_on(%struct.uhci_hcd* %17)
  br label %31

19:                                               ; preds = %9
  %20 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %21 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %26 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %28 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %27, i32 0, i32 1
  %29 = call i32 @del_timer(i32* %28)
  br label %30

30:                                               ; preds = %24, %19
  br label %31

31:                                               ; preds = %30, %16
  br label %32

32:                                               ; preds = %31, %2
  ret void
}

declare dso_local i32 @uhci_fsbr_on(%struct.uhci_hcd*) #1

declare dso_local i32 @del_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
