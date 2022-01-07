; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"phy poweron failed --> %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_power_on(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.phy*, %struct.phy** %3, align 8
  %6 = icmp ne %struct.phy* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %91

8:                                                ; preds = %1
  %9 = load %struct.phy*, %struct.phy** %3, align 8
  %10 = getelementptr inbounds %struct.phy, %struct.phy* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load %struct.phy*, %struct.phy** %3, align 8
  %15 = getelementptr inbounds %struct.phy, %struct.phy* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @regulator_enable(i64 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %91

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %8
  %23 = load %struct.phy*, %struct.phy** %3, align 8
  %24 = call i32 @phy_pm_runtime_get_sync(%struct.phy* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @ENOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %80

33:                                               ; preds = %27, %22
  store i32 0, i32* %4, align 4
  %34 = load %struct.phy*, %struct.phy** %3, align 8
  %35 = getelementptr inbounds %struct.phy, %struct.phy* %34, i32 0, i32 2
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.phy*, %struct.phy** %3, align 8
  %38 = getelementptr inbounds %struct.phy, %struct.phy* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %33
  %42 = load %struct.phy*, %struct.phy** %3, align 8
  %43 = getelementptr inbounds %struct.phy, %struct.phy* %42, i32 0, i32 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = bitcast {}** %45 to i32 (%struct.phy*)**
  %47 = load i32 (%struct.phy*)*, i32 (%struct.phy*)** %46, align 8
  %48 = icmp ne i32 (%struct.phy*)* %47, null
  br i1 %48, label %49, label %66

49:                                               ; preds = %41
  %50 = load %struct.phy*, %struct.phy** %3, align 8
  %51 = getelementptr inbounds %struct.phy, %struct.phy* %50, i32 0, i32 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = bitcast {}** %53 to i32 (%struct.phy*)**
  %55 = load i32 (%struct.phy*)*, i32 (%struct.phy*)** %54, align 8
  %56 = load %struct.phy*, %struct.phy** %3, align 8
  %57 = call i32 %55(%struct.phy* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %49
  %61 = load %struct.phy*, %struct.phy** %3, align 8
  %62 = getelementptr inbounds %struct.phy, %struct.phy* %61, i32 0, i32 3
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @dev_err(i32* %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %74

65:                                               ; preds = %49
  br label %66

66:                                               ; preds = %65, %41, %33
  %67 = load %struct.phy*, %struct.phy** %3, align 8
  %68 = getelementptr inbounds %struct.phy, %struct.phy* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  %71 = load %struct.phy*, %struct.phy** %3, align 8
  %72 = getelementptr inbounds %struct.phy, %struct.phy* %71, i32 0, i32 2
  %73 = call i32 @mutex_unlock(i32* %72)
  store i32 0, i32* %2, align 4
  br label %93

74:                                               ; preds = %60
  %75 = load %struct.phy*, %struct.phy** %3, align 8
  %76 = getelementptr inbounds %struct.phy, %struct.phy* %75, i32 0, i32 2
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load %struct.phy*, %struct.phy** %3, align 8
  %79 = call i32 @phy_pm_runtime_put_sync(%struct.phy* %78)
  br label %80

80:                                               ; preds = %74, %32
  %81 = load %struct.phy*, %struct.phy** %3, align 8
  %82 = getelementptr inbounds %struct.phy, %struct.phy* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.phy*, %struct.phy** %3, align 8
  %87 = getelementptr inbounds %struct.phy, %struct.phy* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @regulator_disable(i64 %88)
  br label %90

90:                                               ; preds = %85, %80
  br label %91

91:                                               ; preds = %90, %20, %7
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %66
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @phy_pm_runtime_get_sync(%struct.phy*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @phy_pm_runtime_put_sync(%struct.phy*) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
