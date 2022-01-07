; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_phy_pm_runtime_get_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_phy_pm_runtime_get_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_pm_runtime_get_sync(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %5 = load %struct.phy*, %struct.phy** %3, align 8
  %6 = icmp ne %struct.phy* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

8:                                                ; preds = %1
  %9 = load %struct.phy*, %struct.phy** %3, align 8
  %10 = getelementptr inbounds %struct.phy, %struct.phy* %9, i32 0, i32 0
  %11 = call i32 @pm_runtime_enabled(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* @ENOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %28

16:                                               ; preds = %8
  %17 = load %struct.phy*, %struct.phy** %3, align 8
  %18 = getelementptr inbounds %struct.phy, %struct.phy* %17, i32 0, i32 0
  %19 = call i32 @pm_runtime_get_sync(i32* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.phy*, %struct.phy** %3, align 8
  %24 = getelementptr inbounds %struct.phy, %struct.phy* %23, i32 0, i32 0
  %25 = call i32 @pm_runtime_put_sync(i32* %24)
  br label %26

26:                                               ; preds = %22, %16
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %13, %7
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @pm_runtime_enabled(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
