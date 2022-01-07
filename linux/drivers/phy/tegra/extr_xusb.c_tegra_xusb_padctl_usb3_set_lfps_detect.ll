; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_padctl_usb3_set_lfps_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_padctl_usb3_set_lfps_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb_padctl = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_xusb_padctl_usb3_set_lfps_detect(%struct.tegra_xusb_padctl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_xusb_padctl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tegra_xusb_padctl* %0, %struct.tegra_xusb_padctl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %5, align 8
  %9 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i32 (%struct.tegra_xusb_padctl*, i32, i32)**
  %15 = load i32 (%struct.tegra_xusb_padctl*, i32, i32)*, i32 (%struct.tegra_xusb_padctl*, i32, i32)** %14, align 8
  %16 = icmp ne i32 (%struct.tegra_xusb_padctl*, i32, i32)* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %3
  %18 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %5, align 8
  %19 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.tegra_xusb_padctl*, i32, i32)**
  %25 = load i32 (%struct.tegra_xusb_padctl*, i32, i32)*, i32 (%struct.tegra_xusb_padctl*, i32, i32)** %24, align 8
  %26 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 %25(%struct.tegra_xusb_padctl* %26, i32 %27, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @ENOSYS, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %17
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
