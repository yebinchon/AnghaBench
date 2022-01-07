; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_bw_notification.c_pcie_bandwidth_notification_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_bw_notification.c_pcie_bandwidth_notification_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_device = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@pcie_bw_notification_irq = common dso_local global i32 0, align 4
@pcie_bw_notification_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"PCIe BW notif\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcie_device*)* @pcie_bandwidth_notification_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie_bandwidth_notification_probe(%struct.pcie_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcie_device*, align 8
  %4 = alloca i32, align 4
  store %struct.pcie_device* %0, %struct.pcie_device** %3, align 8
  %5 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %6 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @pcie_link_bandwidth_notification_supported(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %31

13:                                               ; preds = %1
  %14 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %15 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @pcie_bw_notification_irq, align 4
  %18 = load i32, i32* @pcie_bw_notification_handler, align 4
  %19 = load i32, i32* @IRQF_SHARED, align 4
  %20 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %21 = call i32 @request_threaded_irq(i32 %16, i32 %17, i32 %18, i32 %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.pcie_device* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %13
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %31

26:                                               ; preds = %13
  %27 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %28 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pcie_enable_link_bandwidth_notification(i32 %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %26, %24, %10
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @pcie_link_bandwidth_notification_supported(i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i32, i8*, %struct.pcie_device*) #1

declare dso_local i32 @pcie_enable_link_bandwidth_notification(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
