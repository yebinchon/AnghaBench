; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-tegra-usb.c_utmip_pad_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-tegra-usb.c_utmip_pad_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_usb_phy = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Failed to enable UTMI-pads clock: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to assert UTMI-pads reset: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_usb_phy*)* @utmip_pad_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utmip_pad_close(%struct.tegra_usb_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_usb_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.tegra_usb_phy* %0, %struct.tegra_usb_phy** %3, align 8
  %5 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %6 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @clk_prepare_enable(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %13 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %40

19:                                               ; preds = %1
  %20 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %21 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @reset_control_assert(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %28 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %26, %19
  %34 = call i32 @udelay(i32 1)
  %35 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %36 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @clk_disable_unprepare(i32 %37)
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %33, %11
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
