; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_find_usb2_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_find_usb2_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb_usb2_port = type { i32 }
%struct.tegra_xusb_padctl = type { i32 }
%struct.tegra_xusb_port = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"usb2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tegra_xusb_usb2_port* @tegra_xusb_find_usb2_port(%struct.tegra_xusb_padctl* %0, i32 %1) #0 {
  %3 = alloca %struct.tegra_xusb_usb2_port*, align 8
  %4 = alloca %struct.tegra_xusb_padctl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra_xusb_port*, align 8
  store %struct.tegra_xusb_padctl* %0, %struct.tegra_xusb_padctl** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.tegra_xusb_port* @tegra_xusb_find_port(%struct.tegra_xusb_padctl* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %8)
  store %struct.tegra_xusb_port* %9, %struct.tegra_xusb_port** %6, align 8
  %10 = load %struct.tegra_xusb_port*, %struct.tegra_xusb_port** %6, align 8
  %11 = icmp ne %struct.tegra_xusb_port* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.tegra_xusb_port*, %struct.tegra_xusb_port** %6, align 8
  %14 = call %struct.tegra_xusb_usb2_port* @to_usb2_port(%struct.tegra_xusb_port* %13)
  store %struct.tegra_xusb_usb2_port* %14, %struct.tegra_xusb_usb2_port** %3, align 8
  br label %16

15:                                               ; preds = %2
  store %struct.tegra_xusb_usb2_port* null, %struct.tegra_xusb_usb2_port** %3, align 8
  br label %16

16:                                               ; preds = %15, %12
  %17 = load %struct.tegra_xusb_usb2_port*, %struct.tegra_xusb_usb2_port** %3, align 8
  ret %struct.tegra_xusb_usb2_port* %17
}

declare dso_local %struct.tegra_xusb_port* @tegra_xusb_find_port(%struct.tegra_xusb_padctl*, i8*, i32) #1

declare dso_local %struct.tegra_xusb_usb2_port* @to_usb2_port(%struct.tegra_xusb_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
