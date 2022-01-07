; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_host.c_usbhsh_hub_status_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_host.c_usbhsh_hub_status_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usbhsh_hpriv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, i8*)* @usbhsh_hub_status_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsh_hub_status_data(%struct.usb_hcd* %0, i8* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.usbhsh_hpriv*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %8 = call %struct.usbhsh_hpriv* @usbhsh_hcd_to_hpriv(%struct.usb_hcd* %7)
  store %struct.usbhsh_hpriv* %8, %struct.usbhsh_hpriv** %5, align 8
  store i32 1, i32* %6, align 4
  %9 = load %struct.usbhsh_hpriv*, %struct.usbhsh_hpriv** %5, align 8
  %10 = call i32 @usbhsh_port_stat_get(%struct.usbhsh_hpriv* %9)
  %11 = and i32 %10, -65536
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = shl i32 1, %14
  %16 = trunc i32 %15 to i8
  %17 = load i8*, i8** %4, align 8
  store i8 %16, i8* %17, align 1
  br label %20

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  store i8 0, i8* %19, align 1
  br label %20

20:                                               ; preds = %18, %13
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  ret i32 %26
}

declare dso_local %struct.usbhsh_hpriv* @usbhsh_hcd_to_hpriv(%struct.usb_hcd*) #1

declare dso_local i32 @usbhsh_port_stat_get(%struct.usbhsh_hpriv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
