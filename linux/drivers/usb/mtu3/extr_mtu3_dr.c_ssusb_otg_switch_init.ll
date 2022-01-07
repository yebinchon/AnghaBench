; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_dr.c_ssusb_otg_switch_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_dr.c_ssusb_otg_switch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssusb_mtk = type { %struct.otg_switch_mtk }
%struct.otg_switch_mtk = type { i64, i64, i32, i32 }

@ssusb_id_work = common dso_local global i32 0, align 4
@ssusb_vbus_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssusb_otg_switch_init(%struct.ssusb_mtk* %0) #0 {
  %2 = alloca %struct.ssusb_mtk*, align 8
  %3 = alloca %struct.otg_switch_mtk*, align 8
  %4 = alloca i32, align 4
  store %struct.ssusb_mtk* %0, %struct.ssusb_mtk** %2, align 8
  %5 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %2, align 8
  %6 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %5, i32 0, i32 0
  store %struct.otg_switch_mtk* %6, %struct.otg_switch_mtk** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.otg_switch_mtk*, %struct.otg_switch_mtk** %3, align 8
  %8 = getelementptr inbounds %struct.otg_switch_mtk, %struct.otg_switch_mtk* %7, i32 0, i32 3
  %9 = load i32, i32* @ssusb_id_work, align 4
  %10 = call i32 @INIT_WORK(i32* %8, i32 %9)
  %11 = load %struct.otg_switch_mtk*, %struct.otg_switch_mtk** %3, align 8
  %12 = getelementptr inbounds %struct.otg_switch_mtk, %struct.otg_switch_mtk* %11, i32 0, i32 2
  %13 = load i32, i32* @ssusb_vbus_work, align 4
  %14 = call i32 @INIT_WORK(i32* %12, i32 %13)
  %15 = load %struct.otg_switch_mtk*, %struct.otg_switch_mtk** %3, align 8
  %16 = getelementptr inbounds %struct.otg_switch_mtk, %struct.otg_switch_mtk* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %2, align 8
  %21 = call i32 @ssusb_dr_debugfs_init(%struct.ssusb_mtk* %20)
  br label %34

22:                                               ; preds = %1
  %23 = load %struct.otg_switch_mtk*, %struct.otg_switch_mtk** %3, align 8
  %24 = getelementptr inbounds %struct.otg_switch_mtk, %struct.otg_switch_mtk* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.otg_switch_mtk*, %struct.otg_switch_mtk** %3, align 8
  %29 = call i32 @ssusb_role_sw_register(%struct.otg_switch_mtk* %28)
  store i32 %29, i32* %4, align 4
  br label %33

30:                                               ; preds = %22
  %31 = load %struct.otg_switch_mtk*, %struct.otg_switch_mtk** %3, align 8
  %32 = call i32 @ssusb_extcon_register(%struct.otg_switch_mtk* %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %27
  br label %34

34:                                               ; preds = %33, %19
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @ssusb_dr_debugfs_init(%struct.ssusb_mtk*) #1

declare dso_local i32 @ssusb_role_sw_register(%struct.otg_switch_mtk*) #1

declare dso_local i32 @ssusb_extcon_register(%struct.otg_switch_mtk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
