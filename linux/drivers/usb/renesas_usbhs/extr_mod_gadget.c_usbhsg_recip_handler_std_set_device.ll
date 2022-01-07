; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_recip_handler_std_set_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_recip_handler_std_set_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_priv = type { i32 }
%struct.usbhsg_uep = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_priv*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest*)* @usbhsg_recip_handler_std_set_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsg_recip_handler_std_set_device(%struct.usbhs_priv* %0, %struct.usbhsg_uep* %1, %struct.usb_ctrlrequest* %2) #0 {
  %4 = alloca %struct.usbhs_priv*, align 8
  %5 = alloca %struct.usbhsg_uep*, align 8
  %6 = alloca %struct.usb_ctrlrequest*, align 8
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %4, align 8
  store %struct.usbhsg_uep* %1, %struct.usbhsg_uep** %5, align 8
  store %struct.usb_ctrlrequest* %2, %struct.usb_ctrlrequest** %6, align 8
  %7 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %8 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @le16_to_cpu(i32 %9)
  switch i32 %10, label %24 [
    i32 128, label %11
  ]

11:                                               ; preds = %3
  %12 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %13 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %5, align 8
  %14 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %15 = call i32 @usbhsg_recip_handler_std_control_done(%struct.usbhs_priv* %12, %struct.usbhsg_uep* %13, %struct.usb_ctrlrequest* %14)
  %16 = call i32 @udelay(i32 100)
  %17 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %18 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %19 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  %22 = ashr i32 %21, 8
  %23 = call i32 @usbhs_sys_set_test_mode(%struct.usbhs_priv* %17, i32 %22)
  br label %29

24:                                               ; preds = %3
  %25 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %26 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %5, align 8
  %27 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %28 = call i32 @usbhsg_recip_handler_std_control_done(%struct.usbhs_priv* %25, %struct.usbhsg_uep* %26, %struct.usb_ctrlrequest* %27)
  br label %29

29:                                               ; preds = %24, %11
  ret i32 0
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usbhsg_recip_handler_std_control_done(%struct.usbhs_priv*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @usbhs_sys_set_test_mode(%struct.usbhs_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
