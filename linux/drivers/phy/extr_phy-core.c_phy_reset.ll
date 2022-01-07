; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_phy_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_reset(%struct.phy* %0) #0 {
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
  br label %46

16:                                               ; preds = %7
  %17 = load %struct.phy*, %struct.phy** %3, align 8
  %18 = call i32 @phy_pm_runtime_get_sync(%struct.phy* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @ENOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %46

28:                                               ; preds = %21, %16
  %29 = load %struct.phy*, %struct.phy** %3, align 8
  %30 = getelementptr inbounds %struct.phy, %struct.phy* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.phy*, %struct.phy** %3, align 8
  %33 = getelementptr inbounds %struct.phy, %struct.phy* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = bitcast {}** %35 to i32 (%struct.phy*)**
  %37 = load i32 (%struct.phy*)*, i32 (%struct.phy*)** %36, align 8
  %38 = load %struct.phy*, %struct.phy** %3, align 8
  %39 = call i32 %37(%struct.phy* %38)
  store i32 %39, i32* %4, align 4
  %40 = load %struct.phy*, %struct.phy** %3, align 8
  %41 = getelementptr inbounds %struct.phy, %struct.phy* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load %struct.phy*, %struct.phy** %3, align 8
  %44 = call i32 @phy_pm_runtime_put(%struct.phy* %43)
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %28, %26, %15
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @phy_pm_runtime_get_sync(%struct.phy*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @phy_pm_runtime_put(%struct.phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
