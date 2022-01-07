; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_dr.c_ssusb_otg_switch_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_dr.c_ssusb_otg_switch_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssusb_mtk = type { %struct.otg_switch_mtk }
%struct.otg_switch_mtk = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssusb_otg_switch_exit(%struct.ssusb_mtk* %0) #0 {
  %2 = alloca %struct.ssusb_mtk*, align 8
  %3 = alloca %struct.otg_switch_mtk*, align 8
  store %struct.ssusb_mtk* %0, %struct.ssusb_mtk** %2, align 8
  %4 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %2, align 8
  %5 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %4, i32 0, i32 0
  store %struct.otg_switch_mtk* %5, %struct.otg_switch_mtk** %3, align 8
  %6 = load %struct.otg_switch_mtk*, %struct.otg_switch_mtk** %3, align 8
  %7 = getelementptr inbounds %struct.otg_switch_mtk, %struct.otg_switch_mtk* %6, i32 0, i32 2
  %8 = call i32 @cancel_work_sync(i32* %7)
  %9 = load %struct.otg_switch_mtk*, %struct.otg_switch_mtk** %3, align 8
  %10 = getelementptr inbounds %struct.otg_switch_mtk, %struct.otg_switch_mtk* %9, i32 0, i32 1
  %11 = call i32 @cancel_work_sync(i32* %10)
  %12 = load %struct.otg_switch_mtk*, %struct.otg_switch_mtk** %3, align 8
  %13 = getelementptr inbounds %struct.otg_switch_mtk, %struct.otg_switch_mtk* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @usb_role_switch_unregister(i32 %14)
  ret void
}

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @usb_role_switch_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
