; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_gadget_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_gadget_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.usb_gadget_driver = type { i64, i32 }
%struct.usbhsg_gpriv = type { %struct.usb_gadget_driver*, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usbhs_priv = type { i32 }
%struct.device = type { i32 }

@USB_SPEED_FULL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: can't bind to transceiver\0A\00", align 1
@USBHSG_STATUS_REGISTERD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, %struct.usb_gadget_driver*)* @usbhsg_gadget_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsg_gadget_start(%struct.usb_gadget* %0, %struct.usb_gadget_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_gadget*, align 8
  %5 = alloca %struct.usb_gadget_driver*, align 8
  %6 = alloca %struct.usbhsg_gpriv*, align 8
  %7 = alloca %struct.usbhs_priv*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %4, align 8
  store %struct.usb_gadget_driver* %1, %struct.usb_gadget_driver** %5, align 8
  %10 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %11 = call %struct.usbhsg_gpriv* @usbhsg_gadget_to_gpriv(%struct.usb_gadget* %10)
  store %struct.usbhsg_gpriv* %11, %struct.usbhsg_gpriv** %6, align 8
  %12 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %6, align 8
  %13 = call %struct.usbhs_priv* @usbhsg_gpriv_to_priv(%struct.usbhsg_gpriv* %12)
  store %struct.usbhs_priv* %13, %struct.usbhs_priv** %7, align 8
  %14 = load %struct.usbhs_priv*, %struct.usbhs_priv** %7, align 8
  %15 = call %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv* %14)
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %17 = icmp ne %struct.usb_gadget_driver* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %20 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %25 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @USB_SPEED_FULL, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %18, %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %67

32:                                               ; preds = %23
  %33 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %6, align 8
  %34 = getelementptr inbounds %struct.usbhsg_gpriv, %struct.usbhsg_gpriv* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = call i32 @IS_ERR_OR_NULL(%struct.TYPE_4__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %60, label %38

38:                                               ; preds = %32
  %39 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %6, align 8
  %40 = getelementptr inbounds %struct.usbhsg_gpriv, %struct.usbhsg_gpriv* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %6, align 8
  %45 = getelementptr inbounds %struct.usbhsg_gpriv, %struct.usbhsg_gpriv* %44, i32 0, i32 1
  %46 = call i32 @otg_set_peripheral(i32 %43, %struct.TYPE_3__* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %38
  %50 = load %struct.device*, %struct.device** %8, align 8
  %51 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %6, align 8
  %52 = getelementptr inbounds %struct.usbhsg_gpriv, %struct.usbhsg_gpriv* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %3, align 4
  br label %67

57:                                               ; preds = %38
  %58 = load %struct.usbhs_priv*, %struct.usbhs_priv** %7, align 8
  %59 = call i32 @usbhs_mod_phy_mode(%struct.usbhs_priv* %58)
  br label %60

60:                                               ; preds = %57, %32
  %61 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %62 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %6, align 8
  %63 = getelementptr inbounds %struct.usbhsg_gpriv, %struct.usbhsg_gpriv* %62, i32 0, i32 0
  store %struct.usb_gadget_driver* %61, %struct.usb_gadget_driver** %63, align 8
  %64 = load %struct.usbhs_priv*, %struct.usbhs_priv** %7, align 8
  %65 = load i32, i32* @USBHSG_STATUS_REGISTERD, align 4
  %66 = call i32 @usbhsg_try_start(%struct.usbhs_priv* %64, i32 %65)
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %60, %49, %29
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.usbhsg_gpriv* @usbhsg_gadget_to_gpriv(%struct.usb_gadget*) #1

declare dso_local %struct.usbhs_priv* @usbhsg_gpriv_to_priv(%struct.usbhsg_gpriv*) #1

declare dso_local %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.TYPE_4__*) #1

declare dso_local i32 @otg_set_peripheral(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @usbhs_mod_phy_mode(%struct.usbhs_priv*) #1

declare dso_local i32 @usbhsg_try_start(%struct.usbhs_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
