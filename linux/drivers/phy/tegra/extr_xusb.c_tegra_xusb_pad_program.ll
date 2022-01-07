; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_pad_program.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_pad_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb_pad = type { i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tegra_xusb_lane = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_xusb_pad*)* @tegra_xusb_pad_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_xusb_pad_program(%struct.tegra_xusb_pad* %0) #0 {
  %2 = alloca %struct.tegra_xusb_pad*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_xusb_lane*, align 8
  store %struct.tegra_xusb_pad* %0, %struct.tegra_xusb_pad** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %34, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %2, align 8
  %8 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ult i32 %6, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %5
  %14 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %2, align 8
  %15 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %13
  %23 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %2, align 8
  %24 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.tegra_xusb_lane* @phy_get_drvdata(i64 %29)
  store %struct.tegra_xusb_lane* %30, %struct.tegra_xusb_lane** %4, align 8
  %31 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %4, align 8
  %32 = call i32 @tegra_xusb_lane_program(%struct.tegra_xusb_lane* %31)
  br label %33

33:                                               ; preds = %22, %13
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %5

37:                                               ; preds = %5
  ret void
}

declare dso_local %struct.tegra_xusb_lane* @phy_get_drvdata(i64) #1

declare dso_local i32 @tegra_xusb_lane_program(%struct.tegra_xusb_lane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
