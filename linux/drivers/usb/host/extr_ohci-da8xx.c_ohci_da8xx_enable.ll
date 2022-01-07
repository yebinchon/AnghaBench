; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-da8xx.c_ohci_da8xx_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-da8xx.c_ohci_da8xx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.da8xx_ohci_hcd = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @ohci_da8xx_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_da8xx_enable(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.da8xx_ohci_hcd*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %7 = call %struct.da8xx_ohci_hcd* @to_da8xx_ohci(%struct.usb_hcd* %6)
  store %struct.da8xx_ohci_hcd* %7, %struct.da8xx_ohci_hcd** %4, align 8
  %8 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %4, align 8
  %9 = getelementptr inbounds %struct.da8xx_ohci_hcd, %struct.da8xx_ohci_hcd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_prepare_enable(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %44

16:                                               ; preds = %1
  %17 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %4, align 8
  %18 = getelementptr inbounds %struct.da8xx_ohci_hcd, %struct.da8xx_ohci_hcd* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @phy_init(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %38

24:                                               ; preds = %16
  %25 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %4, align 8
  %26 = getelementptr inbounds %struct.da8xx_ohci_hcd, %struct.da8xx_ohci_hcd* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @phy_power_on(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %33

32:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %44

33:                                               ; preds = %31
  %34 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %4, align 8
  %35 = getelementptr inbounds %struct.da8xx_ohci_hcd, %struct.da8xx_ohci_hcd* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @phy_exit(i32 %36)
  br label %38

38:                                               ; preds = %33, %23
  %39 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %4, align 8
  %40 = getelementptr inbounds %struct.da8xx_ohci_hcd, %struct.da8xx_ohci_hcd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clk_disable_unprepare(i32 %41)
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %38, %32, %14
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.da8xx_ohci_hcd* @to_da8xx_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @phy_init(i32) #1

declare dso_local i32 @phy_power_on(i32) #1

declare dso_local i32 @phy_exit(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
