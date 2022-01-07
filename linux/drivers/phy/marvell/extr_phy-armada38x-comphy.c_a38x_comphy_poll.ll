; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-armada38x-comphy.c_a38x_comphy_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-armada38x-comphy.c_a38x_comphy_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a38x_comphy_lane = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"comphy%u: timed out waiting for status\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.a38x_comphy_lane*, i32, i32, i32)* @a38x_comphy_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a38x_comphy_poll(%struct.a38x_comphy_lane* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.a38x_comphy_lane*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.a38x_comphy_lane* %0, %struct.a38x_comphy_lane** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.a38x_comphy_lane*, %struct.a38x_comphy_lane** %5, align 8
  %12 = getelementptr inbounds %struct.a38x_comphy_lane, %struct.a38x_comphy_lane* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @readl_relaxed_poll_timeout_atomic(i64 %16, i32 %17, i32 %23, i32 1000, i32 150000)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %4
  %28 = load %struct.a38x_comphy_lane*, %struct.a38x_comphy_lane** %5, align 8
  %29 = getelementptr inbounds %struct.a38x_comphy_lane, %struct.a38x_comphy_lane* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.a38x_comphy_lane*, %struct.a38x_comphy_lane** %5, align 8
  %34 = getelementptr inbounds %struct.a38x_comphy_lane, %struct.a38x_comphy_lane* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %27, %4
  %38 = load i32, i32* %10, align 4
  ret i32 %38
}

declare dso_local i32 @readl_relaxed_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
