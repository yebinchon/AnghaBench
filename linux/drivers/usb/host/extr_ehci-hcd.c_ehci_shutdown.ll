; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-hcd.c_ehci_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-hcd.c_ehci_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.ehci_hcd = type { i32, i32, i32, i64, i32, i32 }

@EHCI_RH_STOPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*)* @ehci_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_shutdown(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.ehci_hcd*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %5 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %4)
  store %struct.ehci_hcd* %5, %struct.ehci_hcd** %3, align 8
  %6 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %7 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %30

11:                                               ; preds = %1
  %12 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %13 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %12, i32 0, i32 2
  %14 = call i32 @spin_lock_irq(i32* %13)
  %15 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %16 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load i32, i32* @EHCI_RH_STOPPING, align 4
  %18 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %19 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %21 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %23 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %22, i32 0, i32 2
  %24 = call i32 @spin_unlock_irq(i32* %23)
  %25 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %26 = call i32 @ehci_silence_controller(%struct.ehci_hcd* %25)
  %27 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %28 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %27, i32 0, i32 1
  %29 = call i32 @hrtimer_cancel(i32* %28)
  br label %30

30:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ehci_silence_controller(%struct.ehci_hcd*) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
