; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-tegra.c_tegra_xusb_clk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-tegra.c_tegra_xusb_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@TEGRA_XHCI_SS_HIGH_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_xusb*)* @tegra_xusb_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_xusb_clk_enable(%struct.tegra_xusb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_xusb*, align 8
  %4 = alloca i32, align 4
  store %struct.tegra_xusb* %0, %struct.tegra_xusb** %3, align 8
  %5 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %6 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @clk_prepare_enable(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %100

13:                                               ; preds = %1
  %14 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %15 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clk_prepare_enable(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %94

21:                                               ; preds = %13
  %22 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %23 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @clk_prepare_enable(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %89

29:                                               ; preds = %21
  %30 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %31 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @clk_prepare_enable(i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %84

37:                                               ; preds = %29
  %38 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %39 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @clk_prepare_enable(i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %79

45:                                               ; preds = %37
  %46 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %47 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @clk_prepare_enable(i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %74

53:                                               ; preds = %45
  %54 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %55 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %54, i32 0, i32 6
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %53
  %61 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %62 = load i32, i32* @TEGRA_XHCI_SS_HIGH_SPEED, align 4
  %63 = call i32 @tegra_xusb_set_ss_clk(%struct.tegra_xusb* %61, i32 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %69

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %53
  store i32 0, i32* %2, align 4
  br label %100

69:                                               ; preds = %66
  %70 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %71 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @clk_disable_unprepare(i32 %72)
  br label %74

74:                                               ; preds = %69, %52
  %75 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %76 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @clk_disable_unprepare(i32 %77)
  br label %79

79:                                               ; preds = %74, %44
  %80 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %81 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @clk_disable_unprepare(i32 %82)
  br label %84

84:                                               ; preds = %79, %36
  %85 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %86 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @clk_disable_unprepare(i32 %87)
  br label %89

89:                                               ; preds = %84, %28
  %90 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %91 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @clk_disable_unprepare(i32 %92)
  br label %94

94:                                               ; preds = %89, %20
  %95 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %96 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @clk_disable_unprepare(i32 %97)
  %99 = load i32, i32* %4, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %94, %68, %11
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @tegra_xusb_set_ss_clk(%struct.tegra_xusb*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
