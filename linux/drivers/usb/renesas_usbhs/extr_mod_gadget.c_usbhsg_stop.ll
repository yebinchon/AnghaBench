; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_priv = type { i32 }
%struct.usbhsg_gpriv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*)* }

@USBHSG_STATUS_STARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_priv*)* @usbhsg_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsg_stop(%struct.usbhs_priv* %0) #0 {
  %2 = alloca %struct.usbhs_priv*, align 8
  %3 = alloca %struct.usbhsg_gpriv*, align 8
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %2, align 8
  %4 = load %struct.usbhs_priv*, %struct.usbhs_priv** %2, align 8
  %5 = call %struct.usbhsg_gpriv* @usbhsg_priv_to_gpriv(%struct.usbhs_priv* %4)
  store %struct.usbhsg_gpriv* %5, %struct.usbhsg_gpriv** %3, align 8
  %6 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %3, align 8
  %7 = getelementptr inbounds %struct.usbhsg_gpriv, %struct.usbhsg_gpriv* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %3, align 8
  %12 = getelementptr inbounds %struct.usbhsg_gpriv, %struct.usbhsg_gpriv* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (i32*)*, i32 (i32*)** %14, align 8
  %16 = icmp ne i32 (i32*)* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %10
  %18 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %3, align 8
  %19 = getelementptr inbounds %struct.usbhsg_gpriv, %struct.usbhsg_gpriv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (i32*)*, i32 (i32*)** %21, align 8
  %23 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %3, align 8
  %24 = getelementptr inbounds %struct.usbhsg_gpriv, %struct.usbhsg_gpriv* %23, i32 0, i32 0
  %25 = call i32 %22(i32* %24)
  br label %26

26:                                               ; preds = %17, %10, %1
  %27 = load %struct.usbhs_priv*, %struct.usbhs_priv** %2, align 8
  %28 = load i32, i32* @USBHSG_STATUS_STARTED, align 4
  %29 = call i32 @usbhsg_try_stop(%struct.usbhs_priv* %27, i32 %28)
  ret i32 %29
}

declare dso_local %struct.usbhsg_gpriv* @usbhsg_priv_to_gpriv(%struct.usbhs_priv*) #1

declare dso_local i32 @usbhsg_try_stop(%struct.usbhs_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
