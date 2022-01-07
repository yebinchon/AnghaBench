; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_host.c_usbhsh_irq_setup_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_host.c_usbhsh_irq_setup_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_priv = type { i32 }
%struct.usbhs_irq_state = type { i32 }
%struct.usbhsh_hpriv = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"setup packet Err\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_priv*, %struct.usbhs_irq_state*)* @usbhsh_irq_setup_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsh_irq_setup_err(%struct.usbhs_priv* %0, %struct.usbhs_irq_state* %1) #0 {
  %3 = alloca %struct.usbhs_priv*, align 8
  %4 = alloca %struct.usbhs_irq_state*, align 8
  %5 = alloca %struct.usbhsh_hpriv*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %3, align 8
  store %struct.usbhs_irq_state* %1, %struct.usbhs_irq_state** %4, align 8
  %7 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %8 = call %struct.usbhsh_hpriv* @usbhsh_priv_to_hpriv(%struct.usbhs_priv* %7)
  store %struct.usbhsh_hpriv* %8, %struct.usbhsh_hpriv** %5, align 8
  %9 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %10 = call %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv* %9)
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = call i32 @dev_dbg(%struct.device* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.usbhsh_hpriv*, %struct.usbhsh_hpriv** %5, align 8
  %14 = getelementptr inbounds %struct.usbhsh_hpriv, %struct.usbhsh_hpriv* %13, i32 0, i32 0
  %15 = call i32 @complete(i32* %14)
  ret i32 0
}

declare dso_local %struct.usbhsh_hpriv* @usbhsh_priv_to_hpriv(%struct.usbhs_priv*) #1

declare dso_local %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
