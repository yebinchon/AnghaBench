; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_host.c_usbhsh_hub_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_host.c_usbhsh_hub_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usbhsh_hpriv = type { i32 }
%struct.usbhs_priv = type { i32 }
%struct.device = type { i32 }

@EPIPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"typeReq = %x, ret = %d, port_stat = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, i32, i32, i32, i8*, i32)* @usbhsh_hub_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsh_hub_control(%struct.usb_hcd* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.usb_hcd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.usbhsh_hpriv*, align 8
  %14 = alloca %struct.usbhs_priv*, align 8
  %15 = alloca %struct.device*, align 8
  %16 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %18 = call %struct.usbhsh_hpriv* @usbhsh_hcd_to_hpriv(%struct.usb_hcd* %17)
  store %struct.usbhsh_hpriv* %18, %struct.usbhsh_hpriv** %13, align 8
  %19 = load %struct.usbhsh_hpriv*, %struct.usbhsh_hpriv** %13, align 8
  %20 = call %struct.usbhs_priv* @usbhsh_hpriv_to_priv(%struct.usbhsh_hpriv* %19)
  store %struct.usbhs_priv* %20, %struct.usbhs_priv** %14, align 8
  %21 = load %struct.usbhs_priv*, %struct.usbhs_priv** %14, align 8
  %22 = call %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv* %21)
  store %struct.device* %22, %struct.device** %15, align 8
  %23 = load i32, i32* @EPIPE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %8, align 4
  switch i32 %25, label %50 [
    i32 134, label %26
    i32 129, label %26
    i32 128, label %34
    i32 133, label %34
    i32 131, label %42
    i32 130, label %42
    i32 132, label %42
  ]

26:                                               ; preds = %6, %6
  %27 = load %struct.usbhsh_hpriv*, %struct.usbhsh_hpriv** %13, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @__usbhsh_hub_hub_feature(%struct.usbhsh_hpriv* %27, i32 %28, i32 %29, i32 %30, i8* %31, i32 %32)
  store i32 %33, i32* %16, align 4
  br label %50

34:                                               ; preds = %6, %6
  %35 = load %struct.usbhsh_hpriv*, %struct.usbhsh_hpriv** %13, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i8*, i8** %11, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @__usbhsh_hub_port_feature(%struct.usbhsh_hpriv* %35, i32 %36, i32 %37, i32 %38, i8* %39, i32 %40)
  store i32 %41, i32* %16, align 4
  br label %50

42:                                               ; preds = %6, %6, %6
  %43 = load %struct.usbhsh_hpriv*, %struct.usbhsh_hpriv** %13, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @__usbhsh_hub_get_status(%struct.usbhsh_hpriv* %43, i32 %44, i32 %45, i32 %46, i8* %47, i32 %48)
  store i32 %49, i32* %16, align 4
  br label %50

50:                                               ; preds = %6, %42, %34, %26
  %51 = load %struct.device*, %struct.device** %15, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load %struct.usbhsh_hpriv*, %struct.usbhsh_hpriv** %13, align 8
  %55 = call i32 @usbhsh_port_stat_get(%struct.usbhsh_hpriv* %54)
  %56 = call i32 @dev_dbg(%struct.device* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53, i32 %55)
  %57 = load i32, i32* %16, align 4
  ret i32 %57
}

declare dso_local %struct.usbhsh_hpriv* @usbhsh_hcd_to_hpriv(%struct.usb_hcd*) #1

declare dso_local %struct.usbhs_priv* @usbhsh_hpriv_to_priv(%struct.usbhsh_hpriv*) #1

declare dso_local %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv*) #1

declare dso_local i32 @__usbhsh_hub_hub_feature(%struct.usbhsh_hpriv*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @__usbhsh_hub_port_feature(%struct.usbhsh_hpriv*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @__usbhsh_hub_get_status(%struct.usbhsh_hpriv*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @usbhsh_port_stat_get(%struct.usbhsh_hpriv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
