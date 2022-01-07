; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-tegra.c_tegra_xusb_powerdomain_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-tegra.c_tegra_xusb_powerdomain_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tegra_xusb = type { i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.tegra_xusb*)* @tegra_xusb_powerdomain_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_xusb_powerdomain_remove(%struct.device* %0, %struct.tegra_xusb* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.tegra_xusb*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.tegra_xusb* %1, %struct.tegra_xusb** %4, align 8
  %5 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %6 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %11 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @device_link_del(i64 %12)
  br label %14

14:                                               ; preds = %9, %2
  %15 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %16 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %21 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @device_link_del(i64 %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %26 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @IS_ERR_OR_NULL(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %32 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_pm_domain_detach(i32 %33, i32 1)
  br label %35

35:                                               ; preds = %30, %24
  %36 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %37 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @IS_ERR_OR_NULL(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %43 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_pm_domain_detach(i32 %44, i32 1)
  br label %46

46:                                               ; preds = %41, %35
  ret void
}

declare dso_local i32 @device_link_del(i64) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @dev_pm_domain_detach(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
