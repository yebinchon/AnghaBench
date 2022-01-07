; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_phy_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_phy_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.phy*, i32, i32, %union.phy_configure_opts*)* }
%union.phy_configure_opts = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_validate(%struct.phy* %0, i32 %1, i32 %2, %union.phy_configure_opts* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.phy_configure_opts*, align 8
  %10 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %union.phy_configure_opts* %3, %union.phy_configure_opts** %9, align 8
  %11 = load %struct.phy*, %struct.phy** %6, align 8
  %12 = icmp ne %struct.phy* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %44

16:                                               ; preds = %4
  %17 = load %struct.phy*, %struct.phy** %6, align 8
  %18 = getelementptr inbounds %struct.phy, %struct.phy* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.phy*, i32, i32, %union.phy_configure_opts*)*, i32 (%struct.phy*, i32, i32, %union.phy_configure_opts*)** %20, align 8
  %22 = icmp ne i32 (%struct.phy*, i32, i32, %union.phy_configure_opts*)* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %44

26:                                               ; preds = %16
  %27 = load %struct.phy*, %struct.phy** %6, align 8
  %28 = getelementptr inbounds %struct.phy, %struct.phy* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.phy*, %struct.phy** %6, align 8
  %31 = getelementptr inbounds %struct.phy, %struct.phy* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.phy*, i32, i32, %union.phy_configure_opts*)*, i32 (%struct.phy*, i32, i32, %union.phy_configure_opts*)** %33, align 8
  %35 = load %struct.phy*, %struct.phy** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %union.phy_configure_opts*, %union.phy_configure_opts** %9, align 8
  %39 = call i32 %34(%struct.phy* %35, i32 %36, i32 %37, %union.phy_configure_opts* %38)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.phy*, %struct.phy** %6, align 8
  %41 = getelementptr inbounds %struct.phy, %struct.phy* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %26, %23, %13
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
