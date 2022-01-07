; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_dr.c_ssusb_mode_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_dr.c_ssusb_mode_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssusb_mtk = type { %struct.otg_switch_mtk }
%struct.otg_switch_mtk = type { i32 }

@MTU3_DR_FORCE_HOST = common dso_local global i32 0, align 4
@MTU3_VBUS_OFF = common dso_local global i32 0, align 4
@MTU3_ID_GROUND = common dso_local global i32 0, align 4
@MTU3_DR_FORCE_DEVICE = common dso_local global i32 0, align 4
@MTU3_ID_FLOAT = common dso_local global i32 0, align 4
@MTU3_VBUS_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssusb_mode_switch(%struct.ssusb_mtk* %0, i32 %1) #0 {
  %3 = alloca %struct.ssusb_mtk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.otg_switch_mtk*, align 8
  store %struct.ssusb_mtk* %0, %struct.ssusb_mtk** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %7 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %6, i32 0, i32 0
  store %struct.otg_switch_mtk* %7, %struct.otg_switch_mtk** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %12 = load i32, i32* @MTU3_DR_FORCE_HOST, align 4
  %13 = call i32 @ssusb_set_force_mode(%struct.ssusb_mtk* %11, i32 %12)
  %14 = load %struct.otg_switch_mtk*, %struct.otg_switch_mtk** %5, align 8
  %15 = load i32, i32* @MTU3_VBUS_OFF, align 4
  %16 = call i32 @ssusb_set_mailbox(%struct.otg_switch_mtk* %14, i32 %15)
  %17 = load %struct.otg_switch_mtk*, %struct.otg_switch_mtk** %5, align 8
  %18 = load i32, i32* @MTU3_ID_GROUND, align 4
  %19 = call i32 @ssusb_set_mailbox(%struct.otg_switch_mtk* %17, i32 %18)
  br label %30

20:                                               ; preds = %2
  %21 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %22 = load i32, i32* @MTU3_DR_FORCE_DEVICE, align 4
  %23 = call i32 @ssusb_set_force_mode(%struct.ssusb_mtk* %21, i32 %22)
  %24 = load %struct.otg_switch_mtk*, %struct.otg_switch_mtk** %5, align 8
  %25 = load i32, i32* @MTU3_ID_FLOAT, align 4
  %26 = call i32 @ssusb_set_mailbox(%struct.otg_switch_mtk* %24, i32 %25)
  %27 = load %struct.otg_switch_mtk*, %struct.otg_switch_mtk** %5, align 8
  %28 = load i32, i32* @MTU3_VBUS_VALID, align 4
  %29 = call i32 @ssusb_set_mailbox(%struct.otg_switch_mtk* %27, i32 %28)
  br label %30

30:                                               ; preds = %20, %10
  ret void
}

declare dso_local i32 @ssusb_set_force_mode(%struct.ssusb_mtk*, i32) #1

declare dso_local i32 @ssusb_set_mailbox(%struct.otg_switch_mtk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
