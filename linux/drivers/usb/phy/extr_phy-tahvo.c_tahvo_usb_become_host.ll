; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-tahvo.c_tahvo_usb_become_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-tahvo.c_tahvo_usb_become_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tahvo_usb = type { %struct.TYPE_8__, i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.retu_dev = type { i32 }

@EXTCON_USB_HOST = common dso_local global i32 0, align 4
@TAHVO_REG_USBR = common dso_local global i32 0, align 4
@USBR_REGOUT = common dso_local global i32 0, align 4
@USBR_NSUSPEND = common dso_local global i32 0, align 4
@USBR_MASTER_SW2 = common dso_local global i32 0, align 4
@USBR_MASTER_SW1 = common dso_local global i32 0, align 4
@OTG_STATE_A_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tahvo_usb*)* @tahvo_usb_become_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tahvo_usb_become_host(%struct.tahvo_usb* %0) #0 {
  %2 = alloca %struct.tahvo_usb*, align 8
  %3 = alloca %struct.retu_dev*, align 8
  store %struct.tahvo_usb* %0, %struct.tahvo_usb** %2, align 8
  %4 = load %struct.tahvo_usb*, %struct.tahvo_usb** %2, align 8
  %5 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %4, i32 0, i32 2
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.retu_dev* @dev_get_drvdata(i32 %9)
  store %struct.retu_dev* %10, %struct.retu_dev** %3, align 8
  %11 = load %struct.tahvo_usb*, %struct.tahvo_usb** %2, align 8
  %12 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @EXTCON_USB_HOST, align 4
  %15 = call i32 @extcon_set_state_sync(i32 %13, i32 %14, i32 1)
  %16 = load %struct.retu_dev*, %struct.retu_dev** %3, align 8
  %17 = load i32, i32* @TAHVO_REG_USBR, align 4
  %18 = load i32, i32* @USBR_REGOUT, align 4
  %19 = load i32, i32* @USBR_NSUSPEND, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @USBR_MASTER_SW2, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @USBR_MASTER_SW1, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @retu_write(%struct.retu_dev* %16, i32 %17, i32 %24)
  %26 = load i32, i32* @OTG_STATE_A_IDLE, align 4
  %27 = load %struct.tahvo_usb*, %struct.tahvo_usb** %2, align 8
  %28 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 %26, i32* %31, align 4
  %32 = load %struct.tahvo_usb*, %struct.tahvo_usb** %2, align 8
  %33 = call i32 @check_vbus_state(%struct.tahvo_usb* %32)
  ret void
}

declare dso_local %struct.retu_dev* @dev_get_drvdata(i32) #1

declare dso_local i32 @extcon_set_state_sync(i32, i32, i32) #1

declare dso_local i32 @retu_write(%struct.retu_dev*, i32, i32) #1

declare dso_local i32 @check_vbus_state(%struct.tahvo_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
