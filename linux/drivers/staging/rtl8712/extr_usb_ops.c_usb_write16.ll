; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_ops.c_usb_write16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_ops.c_usb_write16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intf_hdl = type { %struct.intf_priv* }
%struct.intf_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intf_hdl*, i32, i32)* @usb_write16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_write16(%struct.intf_hdl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.intf_hdl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.intf_priv*, align 8
  store %struct.intf_hdl* %0, %struct.intf_hdl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.intf_hdl*, %struct.intf_hdl** %4, align 8
  %15 = getelementptr inbounds %struct.intf_hdl, %struct.intf_hdl* %14, i32 0, i32 0
  %16 = load %struct.intf_priv*, %struct.intf_priv** %15, align 8
  store %struct.intf_priv* %16, %struct.intf_priv** %13, align 8
  store i32 5, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 65535
  store i32 %18, i32* %9, align 4
  store i32 2, i32* %11, align 4
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 65535
  %21 = call i32 @cpu_to_le32(i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load %struct.intf_priv*, %struct.intf_priv** %13, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @r8712_usbctrl_vendorreq(%struct.intf_priv* %22, i32 %23, i32 %24, i32 %25, i32* %12, i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @r8712_usbctrl_vendorreq(%struct.intf_priv*, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
