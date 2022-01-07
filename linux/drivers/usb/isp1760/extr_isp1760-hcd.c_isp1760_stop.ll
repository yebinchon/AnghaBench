; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-hcd.c_isp1760_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-hcd.c_isp1760_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.isp1760_hcd = type { i32 }

@errata2_timer = common dso_local global i32 0, align 4
@ClearPortFeature = common dso_local global i32 0, align 4
@USB_PORT_FEAT_POWER = common dso_local global i32 0, align 4
@HC_HW_MODE_CTRL = common dso_local global i32 0, align 4
@HW_GLOBAL_INTR_EN = common dso_local global i32 0, align 4
@HC_CONFIGFLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*)* @isp1760_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp1760_stop(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.isp1760_hcd*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %5 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %6 = call %struct.isp1760_hcd* @hcd_to_priv(%struct.usb_hcd* %5)
  store %struct.isp1760_hcd* %6, %struct.isp1760_hcd** %3, align 8
  %7 = call i32 @del_timer(i32* @errata2_timer)
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %9 = load i32, i32* @ClearPortFeature, align 4
  %10 = load i32, i32* @USB_PORT_FEAT_POWER, align 4
  %11 = call i32 @isp1760_hub_control(%struct.usb_hcd* %8, i32 %9, i32 %10, i32 1, i32* null, i32 0)
  %12 = call i32 @msleep(i32 20)
  %13 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %3, align 8
  %14 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %17 = call i32 @ehci_reset(%struct.usb_hcd* %16)
  %18 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %19 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @HC_HW_MODE_CTRL, align 4
  %22 = call i32 @reg_read32(i32 %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %24 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @HC_HW_MODE_CTRL, align 4
  %27 = load i32, i32* @HW_GLOBAL_INTR_EN, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = call i32 @reg_write32(i32 %25, i32 %26, i32 %30)
  %32 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %3, align 8
  %33 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock_irq(i32* %33)
  %35 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %36 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @HC_CONFIGFLAG, align 4
  %39 = call i32 @reg_write32(i32 %37, i32 %38, i32 0)
  ret void
}

declare dso_local %struct.isp1760_hcd* @hcd_to_priv(%struct.usb_hcd*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @isp1760_hub_control(%struct.usb_hcd*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @ehci_reset(%struct.usb_hcd*) #1

declare dso_local i32 @reg_read32(i32, i32) #1

declare dso_local i32 @reg_write32(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
