; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-brcm-usb-init.c_brcmusb_xhci_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-brcm-usb-init.c_brcmusb_xhci_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcm_usb_init_params = type { i32 }

@USB_PM = common dso_local global i32 0, align 4
@XHC_SOFT_RESETB = common dso_local global i32 0, align 4
@USB30_CTL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcm_usb_init_params*, i32)* @brcmusb_xhci_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmusb_xhci_soft_reset(%struct.brcm_usb_init_params* %0, i32 %1) #0 {
  %3 = alloca %struct.brcm_usb_init_params*, align 8
  %4 = alloca i32, align 4
  store %struct.brcm_usb_init_params* %0, %struct.brcm_usb_init_params** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %2
  %8 = load %struct.brcm_usb_init_params*, %struct.brcm_usb_init_params** %3, align 8
  %9 = load i32, i32* @USB_PM, align 4
  %10 = load i32, i32* @XHC_SOFT_RESETB, align 4
  %11 = call i64 @USB_CTRL_MASK_FAMILY(%struct.brcm_usb_init_params* %8, i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = load %struct.brcm_usb_init_params*, %struct.brcm_usb_init_params** %3, align 8
  %15 = load i32, i32* @USB_PM, align 4
  %16 = load i32, i32* @XHC_SOFT_RESETB, align 4
  %17 = call i32 @USB_CTRL_UNSET_FAMILY(%struct.brcm_usb_init_params* %14, i32 %15, i32 %16)
  br label %23

18:                                               ; preds = %7
  %19 = load %struct.brcm_usb_init_params*, %struct.brcm_usb_init_params** %3, align 8
  %20 = load i32, i32* @USB30_CTL1, align 4
  %21 = load i32, i32* @XHC_SOFT_RESETB, align 4
  %22 = call i32 @USB_CTRL_UNSET_FAMILY(%struct.brcm_usb_init_params* %19, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %18, %13
  br label %41

24:                                               ; preds = %2
  %25 = load %struct.brcm_usb_init_params*, %struct.brcm_usb_init_params** %3, align 8
  %26 = load i32, i32* @USB_PM, align 4
  %27 = load i32, i32* @XHC_SOFT_RESETB, align 4
  %28 = call i64 @USB_CTRL_MASK_FAMILY(%struct.brcm_usb_init_params* %25, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.brcm_usb_init_params*, %struct.brcm_usb_init_params** %3, align 8
  %32 = load i32, i32* @USB_PM, align 4
  %33 = load i32, i32* @XHC_SOFT_RESETB, align 4
  %34 = call i32 @USB_CTRL_SET_FAMILY(%struct.brcm_usb_init_params* %31, i32 %32, i32 %33)
  br label %40

35:                                               ; preds = %24
  %36 = load %struct.brcm_usb_init_params*, %struct.brcm_usb_init_params** %3, align 8
  %37 = load i32, i32* @USB30_CTL1, align 4
  %38 = load i32, i32* @XHC_SOFT_RESETB, align 4
  %39 = call i32 @USB_CTRL_SET_FAMILY(%struct.brcm_usb_init_params* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %30
  br label %41

41:                                               ; preds = %40, %23
  ret void
}

declare dso_local i64 @USB_CTRL_MASK_FAMILY(%struct.brcm_usb_init_params*, i32, i32) #1

declare dso_local i32 @USB_CTRL_UNSET_FAMILY(%struct.brcm_usb_init_params*, i32, i32) #1

declare dso_local i32 @USB_CTRL_SET_FAMILY(%struct.brcm_usb_init_params*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
