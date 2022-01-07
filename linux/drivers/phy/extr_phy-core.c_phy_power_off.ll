; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_phy_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_phy_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@.str = private unnamed_addr constant [28 x i8] c"phy poweroff failed --> %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_power_off(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %5 = load %struct.phy*, %struct.phy** %3, align 8
  %6 = icmp ne %struct.phy* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

8:                                                ; preds = %1
  %9 = load %struct.phy*, %struct.phy** %3, align 8
  %10 = getelementptr inbounds %struct.phy, %struct.phy* %9, i32 0, i32 2
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.phy*, %struct.phy** %3, align 8
  %13 = getelementptr inbounds %struct.phy, %struct.phy* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %45

16:                                               ; preds = %8
  %17 = load %struct.phy*, %struct.phy** %3, align 8
  %18 = getelementptr inbounds %struct.phy, %struct.phy* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.phy*)**
  %22 = load i32 (%struct.phy*)*, i32 (%struct.phy*)** %21, align 8
  %23 = icmp ne i32 (%struct.phy*)* %22, null
  br i1 %23, label %24, label %45

24:                                               ; preds = %16
  %25 = load %struct.phy*, %struct.phy** %3, align 8
  %26 = getelementptr inbounds %struct.phy, %struct.phy* %25, i32 0, i32 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i32 (%struct.phy*)**
  %30 = load i32 (%struct.phy*)*, i32 (%struct.phy*)** %29, align 8
  %31 = load %struct.phy*, %struct.phy** %3, align 8
  %32 = call i32 %30(%struct.phy* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %24
  %36 = load %struct.phy*, %struct.phy** %3, align 8
  %37 = getelementptr inbounds %struct.phy, %struct.phy* %36, i32 0, i32 3
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.phy*, %struct.phy** %3, align 8
  %41 = getelementptr inbounds %struct.phy, %struct.phy* %40, i32 0, i32 2
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %65

44:                                               ; preds = %24
  br label %45

45:                                               ; preds = %44, %16, %8
  %46 = load %struct.phy*, %struct.phy** %3, align 8
  %47 = getelementptr inbounds %struct.phy, %struct.phy* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %47, align 8
  %50 = load %struct.phy*, %struct.phy** %3, align 8
  %51 = getelementptr inbounds %struct.phy, %struct.phy* %50, i32 0, i32 2
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load %struct.phy*, %struct.phy** %3, align 8
  %54 = call i32 @phy_pm_runtime_put(%struct.phy* %53)
  %55 = load %struct.phy*, %struct.phy** %3, align 8
  %56 = getelementptr inbounds %struct.phy, %struct.phy* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %45
  %60 = load %struct.phy*, %struct.phy** %3, align 8
  %61 = getelementptr inbounds %struct.phy, %struct.phy* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @regulator_disable(i64 %62)
  br label %64

64:                                               ; preds = %59, %45
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %35, %7
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @phy_pm_runtime_put(%struct.phy*) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
