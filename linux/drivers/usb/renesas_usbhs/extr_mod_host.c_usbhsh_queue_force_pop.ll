; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_host.c_usbhsh_queue_force_pop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_host.c_usbhsh_queue_force_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_priv = type { i32 }
%struct.usbhs_pipe = type { i32 }
%struct.usbhs_pkt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbhs_priv*, %struct.usbhs_pipe*)* @usbhsh_queue_force_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbhsh_queue_force_pop(%struct.usbhs_priv* %0, %struct.usbhs_pipe* %1) #0 {
  %3 = alloca %struct.usbhs_priv*, align 8
  %4 = alloca %struct.usbhs_pipe*, align 8
  %5 = alloca %struct.usbhs_pkt*, align 8
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %3, align 8
  store %struct.usbhs_pipe* %1, %struct.usbhs_pipe** %4, align 8
  br label %6

6:                                                ; preds = %2, %12
  %7 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %4, align 8
  %8 = call %struct.usbhs_pkt* @usbhs_pkt_pop(%struct.usbhs_pipe* %7, i32* null)
  store %struct.usbhs_pkt* %8, %struct.usbhs_pkt** %5, align 8
  %9 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %5, align 8
  %10 = icmp ne %struct.usbhs_pkt* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  br label %16

12:                                               ; preds = %6
  %13 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %14 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %5, align 8
  %15 = call i32 @usbhsh_queue_done(%struct.usbhs_priv* %13, %struct.usbhs_pkt* %14)
  br label %6

16:                                               ; preds = %11
  ret void
}

declare dso_local %struct.usbhs_pkt* @usbhs_pkt_pop(%struct.usbhs_pipe*, i32*) #1

declare dso_local i32 @usbhsh_queue_done(%struct.usbhs_priv*, %struct.usbhs_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
