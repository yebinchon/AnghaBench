; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_core.c_ssusb_gadget_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_core.c_ssusb_gadget_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssusb_mtk = type { i32, %struct.mtu3* }
%struct.mtu3 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssusb_gadget_exit(%struct.ssusb_mtk* %0) #0 {
  %2 = alloca %struct.ssusb_mtk*, align 8
  %3 = alloca %struct.mtu3*, align 8
  store %struct.ssusb_mtk* %0, %struct.ssusb_mtk** %2, align 8
  %4 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %2, align 8
  %5 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %4, i32 0, i32 1
  %6 = load %struct.mtu3*, %struct.mtu3** %5, align 8
  store %struct.mtu3* %6, %struct.mtu3** %3, align 8
  %7 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %8 = call i32 @mtu3_gadget_cleanup(%struct.mtu3* %7)
  %9 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %2, align 8
  %10 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @device_init_wakeup(i32 %11, i32 0)
  %13 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %14 = call i32 @mtu3_hw_exit(%struct.mtu3* %13)
  ret void
}

declare dso_local i32 @mtu3_gadget_cleanup(%struct.mtu3*) #1

declare dso_local i32 @device_init_wakeup(i32, i32) #1

declare dso_local i32 @mtu3_hw_exit(%struct.mtu3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
