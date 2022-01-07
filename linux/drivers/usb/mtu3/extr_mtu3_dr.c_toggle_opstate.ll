; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_dr.c_toggle_opstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_dr.c_toggle_opstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssusb_mtk = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@U3D_DEVICE_CONTROL = common dso_local global i32 0, align 4
@DC_SESSION = common dso_local global i32 0, align 4
@U3D_POWER_MANAGEMENT = common dso_local global i32 0, align 4
@SOFT_CONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssusb_mtk*)* @toggle_opstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toggle_opstate(%struct.ssusb_mtk* %0) #0 {
  %2 = alloca %struct.ssusb_mtk*, align 8
  store %struct.ssusb_mtk* %0, %struct.ssusb_mtk** %2, align 8
  %3 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %2, align 8
  %4 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %2, align 8
  %10 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @U3D_DEVICE_CONTROL, align 4
  %13 = load i32, i32* @DC_SESSION, align 4
  %14 = call i32 @mtu3_setbits(i32 %11, i32 %12, i32 %13)
  %15 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %2, align 8
  %16 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @U3D_POWER_MANAGEMENT, align 4
  %19 = load i32, i32* @SOFT_CONN, align 4
  %20 = call i32 @mtu3_setbits(i32 %17, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @mtu3_setbits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
