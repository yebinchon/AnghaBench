; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-omap-usb2.c_omap_usb2_enable_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-omap-usb2.c_omap_usb2_enable_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_usb = type { i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to enable wkupclk %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to enable optclk %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_usb*)* @omap_usb2_enable_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_usb2_enable_clocks(%struct.omap_usb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_usb*, align 8
  %4 = alloca i32, align 4
  store %struct.omap_usb* %0, %struct.omap_usb** %3, align 8
  %5 = load %struct.omap_usb*, %struct.omap_usb** %3, align 8
  %6 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @clk_prepare_enable(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.omap_usb*, %struct.omap_usb** %3, align 8
  %13 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %43

17:                                               ; preds = %1
  %18 = load %struct.omap_usb*, %struct.omap_usb** %3, align 8
  %19 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @IS_ERR(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %17
  %24 = load %struct.omap_usb*, %struct.omap_usb** %3, align 8
  %25 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clk_prepare_enable(i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.omap_usb*, %struct.omap_usb** %3, align 8
  %32 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %38

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36, %17
  store i32 0, i32* %2, align 4
  br label %45

38:                                               ; preds = %30
  %39 = load %struct.omap_usb*, %struct.omap_usb** %3, align 8
  %40 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clk_disable(i32 %41)
  br label %43

43:                                               ; preds = %38, %11
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %37
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
