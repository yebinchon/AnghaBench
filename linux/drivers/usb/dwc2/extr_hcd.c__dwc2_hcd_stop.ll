; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c__dwc2_hcd_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c__dwc2_hcd_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32, i32, i32 }
%struct.dwc2_hsotg = type { i32, i32 }

@DWC2_L3 = common dso_local global i32 0, align 4
@HC_STATE_HALT = common dso_local global i32 0, align 4
@HCD_FLAG_HW_ACCESSIBLE = common dso_local global i32 0, align 4
@HPRT0_PWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*)* @_dwc2_hcd_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dwc2_hcd_stop(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %7 = call %struct.dwc2_hsotg* @dwc2_hcd_to_hsotg(%struct.usb_hcd* %6)
  store %struct.dwc2_hsotg* %7, %struct.dwc2_hsotg** %3, align 8
  %8 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %9 = call i32 @dwc2_disable_host_interrupts(%struct.dwc2_hsotg* %8)
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %11 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @synchronize_irq(i32 %12)
  %14 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %15 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %14, i32 0, i32 0
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %19 = call i32 @dwc2_read_hprt0(%struct.dwc2_hsotg* %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %21 = call i32 @dwc2_hcd_disconnect(%struct.dwc2_hsotg* %20, i32 1)
  %22 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %23 = call i32 @dwc2_hcd_stop(%struct.dwc2_hsotg* %22)
  %24 = load i32, i32* @DWC2_L3, align 4
  %25 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %26 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @HC_STATE_HALT, align 4
  %28 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %29 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @HCD_FLAG_HW_ACCESSIBLE, align 4
  %31 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %32 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %31, i32 0, i32 0
  %33 = call i32 @clear_bit(i32 %30, i32* %32)
  %34 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %35 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %34, i32 0, i32 0
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @HPRT0_PWR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %1
  %43 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %44 = call i32 @dwc2_vbus_supply_exit(%struct.dwc2_hsotg* %43)
  br label %45

45:                                               ; preds = %42, %1
  %46 = call i32 @usleep_range(i32 1000, i32 3000)
  ret void
}

declare dso_local %struct.dwc2_hsotg* @dwc2_hcd_to_hsotg(%struct.usb_hcd*) #1

declare dso_local i32 @dwc2_disable_host_interrupts(%struct.dwc2_hsotg*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dwc2_read_hprt0(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_hcd_disconnect(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dwc2_hcd_stop(%struct.dwc2_hsotg*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dwc2_vbus_supply_exit(%struct.dwc2_hsotg*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
