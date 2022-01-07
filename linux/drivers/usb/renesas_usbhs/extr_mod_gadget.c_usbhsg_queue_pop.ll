; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_queue_pop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_queue_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhsg_uep = type { i32 }
%struct.usbhsg_request = type { i32 }
%struct.usbhsg_gpriv = type { i32 }
%struct.usbhs_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbhsg_uep*, %struct.usbhsg_request*, i32)* @usbhsg_queue_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbhsg_queue_pop(%struct.usbhsg_uep* %0, %struct.usbhsg_request* %1, i32 %2) #0 {
  %4 = alloca %struct.usbhsg_uep*, align 8
  %5 = alloca %struct.usbhsg_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usbhsg_gpriv*, align 8
  %8 = alloca %struct.usbhs_priv*, align 8
  %9 = alloca i64, align 8
  store %struct.usbhsg_uep* %0, %struct.usbhsg_uep** %4, align 8
  store %struct.usbhsg_request* %1, %struct.usbhsg_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %4, align 8
  %11 = call %struct.usbhsg_gpriv* @usbhsg_uep_to_gpriv(%struct.usbhsg_uep* %10)
  store %struct.usbhsg_gpriv* %11, %struct.usbhsg_gpriv** %7, align 8
  %12 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %7, align 8
  %13 = call %struct.usbhs_priv* @usbhsg_gpriv_to_priv(%struct.usbhsg_gpriv* %12)
  store %struct.usbhs_priv* %13, %struct.usbhs_priv** %8, align 8
  %14 = load %struct.usbhs_priv*, %struct.usbhs_priv** %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @usbhs_lock(%struct.usbhs_priv* %14, i64 %15)
  %17 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %4, align 8
  %18 = load %struct.usbhsg_request*, %struct.usbhsg_request** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @__usbhsg_queue_pop(%struct.usbhsg_uep* %17, %struct.usbhsg_request* %18, i32 %19)
  %21 = load %struct.usbhs_priv*, %struct.usbhs_priv** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @usbhs_unlock(%struct.usbhs_priv* %21, i64 %22)
  ret void
}

declare dso_local %struct.usbhsg_gpriv* @usbhsg_uep_to_gpriv(%struct.usbhsg_uep*) #1

declare dso_local %struct.usbhs_priv* @usbhsg_gpriv_to_priv(%struct.usbhsg_gpriv*) #1

declare dso_local i32 @usbhs_lock(%struct.usbhs_priv*, i64) #1

declare dso_local i32 @__usbhsg_queue_pop(%struct.usbhsg_uep*, %struct.usbhsg_request*, i32) #1

declare dso_local i32 @usbhs_unlock(%struct.usbhs_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
