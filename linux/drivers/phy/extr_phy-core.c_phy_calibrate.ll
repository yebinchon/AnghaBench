; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_phy_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_phy_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_calibrate(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %5 = load %struct.phy*, %struct.phy** %3, align 8
  %6 = icmp ne %struct.phy* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.phy*, %struct.phy** %3, align 8
  %9 = getelementptr inbounds %struct.phy, %struct.phy* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.phy*)**
  %13 = load i32 (%struct.phy*)*, i32 (%struct.phy*)** %12, align 8
  %14 = icmp ne i32 (%struct.phy*)* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %7, %1
  store i32 0, i32* %2, align 4
  br label %32

16:                                               ; preds = %7
  %17 = load %struct.phy*, %struct.phy** %3, align 8
  %18 = getelementptr inbounds %struct.phy, %struct.phy* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.phy*, %struct.phy** %3, align 8
  %21 = getelementptr inbounds %struct.phy, %struct.phy* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.phy*)**
  %25 = load i32 (%struct.phy*)*, i32 (%struct.phy*)** %24, align 8
  %26 = load %struct.phy*, %struct.phy** %3, align 8
  %27 = call i32 %25(%struct.phy* %26)
  store i32 %27, i32* %4, align 4
  %28 = load %struct.phy*, %struct.phy** %3, align 8
  %29 = getelementptr inbounds %struct.phy, %struct.phy* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %16, %15
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
