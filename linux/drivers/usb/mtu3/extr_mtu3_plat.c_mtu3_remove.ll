; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_plat.c_mtu3_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_plat.c_mtu3_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ssusb_mtk = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtu3_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtu3_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ssusb_mtk*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = call %struct.ssusb_mtk* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.ssusb_mtk* %6, %struct.ssusb_mtk** %4, align 8
  %7 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %4, align 8
  %8 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %23 [
    i32 128, label %10
    i32 130, label %13
    i32 129, label %16
  ]

10:                                               ; preds = %1
  %11 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %4, align 8
  %12 = call i32 @ssusb_gadget_exit(%struct.ssusb_mtk* %11)
  br label %26

13:                                               ; preds = %1
  %14 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %4, align 8
  %15 = call i32 @ssusb_host_exit(%struct.ssusb_mtk* %14)
  br label %26

16:                                               ; preds = %1
  %17 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %4, align 8
  %18 = call i32 @ssusb_otg_switch_exit(%struct.ssusb_mtk* %17)
  %19 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %4, align 8
  %20 = call i32 @ssusb_gadget_exit(%struct.ssusb_mtk* %19)
  %21 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %4, align 8
  %22 = call i32 @ssusb_host_exit(%struct.ssusb_mtk* %21)
  br label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %37

26:                                               ; preds = %16, %13, %10
  %27 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %4, align 8
  %28 = call i32 @ssusb_rscs_exit(%struct.ssusb_mtk* %27)
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 @pm_runtime_put_sync(i32* %30)
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i32 @pm_runtime_disable(i32* %33)
  %35 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %4, align 8
  %36 = call i32 @ssusb_debugfs_remove_root(%struct.ssusb_mtk* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %26, %23
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.ssusb_mtk* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @ssusb_gadget_exit(%struct.ssusb_mtk*) #1

declare dso_local i32 @ssusb_host_exit(%struct.ssusb_mtk*) #1

declare dso_local i32 @ssusb_otg_switch_exit(%struct.ssusb_mtk*) #1

declare dso_local i32 @ssusb_rscs_exit(%struct.ssusb_mtk*) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @ssusb_debugfs_remove_root(%struct.ssusb_mtk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
