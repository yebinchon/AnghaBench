; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_phy_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_phy_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 (%struct.phy*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phy_put(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  store %struct.phy* %0, %struct.phy** %2, align 8
  %3 = load %struct.phy*, %struct.phy** %2, align 8
  %4 = icmp ne %struct.phy* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct.phy*, %struct.phy** %2, align 8
  %7 = call i64 @IS_ERR(%struct.phy* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5, %1
  br label %41

10:                                               ; preds = %5
  %11 = load %struct.phy*, %struct.phy** %2, align 8
  %12 = getelementptr inbounds %struct.phy, %struct.phy* %11, i32 0, i32 2
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.phy*, %struct.phy** %2, align 8
  %15 = getelementptr inbounds %struct.phy, %struct.phy* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32 (%struct.phy*)*, i32 (%struct.phy*)** %17, align 8
  %19 = icmp ne i32 (%struct.phy*)* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %10
  %21 = load %struct.phy*, %struct.phy** %2, align 8
  %22 = getelementptr inbounds %struct.phy, %struct.phy* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32 (%struct.phy*)*, i32 (%struct.phy*)** %24, align 8
  %26 = load %struct.phy*, %struct.phy** %2, align 8
  %27 = call i32 %25(%struct.phy* %26)
  br label %28

28:                                               ; preds = %20, %10
  %29 = load %struct.phy*, %struct.phy** %2, align 8
  %30 = getelementptr inbounds %struct.phy, %struct.phy* %29, i32 0, i32 2
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load %struct.phy*, %struct.phy** %2, align 8
  %33 = getelementptr inbounds %struct.phy, %struct.phy* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @module_put(i32 %36)
  %38 = load %struct.phy*, %struct.phy** %2, align 8
  %39 = getelementptr inbounds %struct.phy, %struct.phy* %38, i32 0, i32 0
  %40 = call i32 @put_device(i32* %39)
  br label %41

41:                                               ; preds = %28, %9
  ret void
}

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
