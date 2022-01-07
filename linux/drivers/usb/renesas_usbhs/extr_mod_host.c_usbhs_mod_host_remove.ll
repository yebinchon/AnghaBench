; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_host.c_usbhs_mod_host_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_host.c_usbhs_mod_host_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_priv = type { i32 }
%struct.usbhsh_hpriv = type { i32 }
%struct.usb_hcd = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbhs_mod_host_remove(%struct.usbhs_priv* %0) #0 {
  %2 = alloca %struct.usbhs_priv*, align 8
  %3 = alloca %struct.usbhsh_hpriv*, align 8
  %4 = alloca %struct.usb_hcd*, align 8
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %2, align 8
  %5 = load %struct.usbhs_priv*, %struct.usbhs_priv** %2, align 8
  %6 = call %struct.usbhsh_hpriv* @usbhsh_priv_to_hpriv(%struct.usbhs_priv* %5)
  store %struct.usbhsh_hpriv* %6, %struct.usbhsh_hpriv** %3, align 8
  %7 = load %struct.usbhsh_hpriv*, %struct.usbhsh_hpriv** %3, align 8
  %8 = call %struct.usb_hcd* @usbhsh_hpriv_to_hcd(%struct.usbhsh_hpriv* %7)
  store %struct.usb_hcd* %8, %struct.usb_hcd** %4, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %10 = call i32 @usb_put_hcd(%struct.usb_hcd* %9)
  ret i32 0
}

declare dso_local %struct.usbhsh_hpriv* @usbhsh_priv_to_hpriv(%struct.usbhs_priv*) #1

declare dso_local %struct.usb_hcd* @usbhsh_hpriv_to_hcd(%struct.usbhsh_hpriv*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
