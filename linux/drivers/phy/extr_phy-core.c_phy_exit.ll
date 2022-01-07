; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_phy_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_phy_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"phy exit failed --> %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_exit(%struct.phy* %0) #0 {
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
  %10 = call i32 @phy_pm_runtime_get_sync(%struct.phy* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @ENOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  %17 = icmp ne i32 %14, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %65

20:                                               ; preds = %13, %8
  store i32 0, i32* %4, align 4
  %21 = load %struct.phy*, %struct.phy** %3, align 8
  %22 = getelementptr inbounds %struct.phy, %struct.phy* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.phy*, %struct.phy** %3, align 8
  %25 = getelementptr inbounds %struct.phy, %struct.phy* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %53

28:                                               ; preds = %20
  %29 = load %struct.phy*, %struct.phy** %3, align 8
  %30 = getelementptr inbounds %struct.phy, %struct.phy* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = bitcast {}** %32 to i32 (%struct.phy*)**
  %34 = load i32 (%struct.phy*)*, i32 (%struct.phy*)** %33, align 8
  %35 = icmp ne i32 (%struct.phy*)* %34, null
  br i1 %35, label %36, label %53

36:                                               ; preds = %28
  %37 = load %struct.phy*, %struct.phy** %3, align 8
  %38 = getelementptr inbounds %struct.phy, %struct.phy* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = bitcast {}** %40 to i32 (%struct.phy*)**
  %42 = load i32 (%struct.phy*)*, i32 (%struct.phy*)** %41, align 8
  %43 = load %struct.phy*, %struct.phy** %3, align 8
  %44 = call i32 %42(%struct.phy* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %36
  %48 = load %struct.phy*, %struct.phy** %3, align 8
  %49 = getelementptr inbounds %struct.phy, %struct.phy* %48, i32 0, i32 2
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %58

52:                                               ; preds = %36
  br label %53

53:                                               ; preds = %52, %28, %20
  %54 = load %struct.phy*, %struct.phy** %3, align 8
  %55 = getelementptr inbounds %struct.phy, %struct.phy* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %53, %47
  %59 = load %struct.phy*, %struct.phy** %3, align 8
  %60 = getelementptr inbounds %struct.phy, %struct.phy* %59, i32 0, i32 1
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load %struct.phy*, %struct.phy** %3, align 8
  %63 = call i32 @phy_pm_runtime_put(%struct.phy* %62)
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %58, %18, %7
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @phy_pm_runtime_get_sync(%struct.phy*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @phy_pm_runtime_put(%struct.phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
