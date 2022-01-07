; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-q.c_uhci_add_fsbr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-q.c_uhci_add_fsbr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_hcd = type { i32 }
%struct.urb = type { %struct.urb_priv* }
%struct.urb_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uhci_hcd*, %struct.urb*)* @uhci_add_fsbr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhci_add_fsbr(%struct.uhci_hcd* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.uhci_hcd*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.urb_priv*, align 8
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %6 = load %struct.urb*, %struct.urb** %4, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 0
  %8 = load %struct.urb_priv*, %struct.urb_priv** %7, align 8
  store %struct.urb_priv* %8, %struct.urb_priv** %5, align 8
  %9 = load %struct.urb_priv*, %struct.urb_priv** %5, align 8
  %10 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
