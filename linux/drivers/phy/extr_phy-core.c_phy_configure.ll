; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_phy_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_phy_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%union.phy_configure_opts = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_configure(%struct.phy* %0, %union.phy_configure_opts* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy*, align 8
  %5 = alloca %union.phy_configure_opts*, align 8
  %6 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %4, align 8
  store %union.phy_configure_opts* %1, %union.phy_configure_opts** %5, align 8
  %7 = load %struct.phy*, %struct.phy** %4, align 8
  %8 = icmp ne %struct.phy* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %40

12:                                               ; preds = %2
  %13 = load %struct.phy*, %struct.phy** %4, align 8
  %14 = getelementptr inbounds %struct.phy, %struct.phy* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.phy*, %union.phy_configure_opts*)**
  %18 = load i32 (%struct.phy*, %union.phy_configure_opts*)*, i32 (%struct.phy*, %union.phy_configure_opts*)** %17, align 8
  %19 = icmp ne i32 (%struct.phy*, %union.phy_configure_opts*)* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %12
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %40

23:                                               ; preds = %12
  %24 = load %struct.phy*, %struct.phy** %4, align 8
  %25 = getelementptr inbounds %struct.phy, %struct.phy* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.phy*, %struct.phy** %4, align 8
  %28 = getelementptr inbounds %struct.phy, %struct.phy* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = bitcast {}** %30 to i32 (%struct.phy*, %union.phy_configure_opts*)**
  %32 = load i32 (%struct.phy*, %union.phy_configure_opts*)*, i32 (%struct.phy*, %union.phy_configure_opts*)** %31, align 8
  %33 = load %struct.phy*, %struct.phy** %4, align 8
  %34 = load %union.phy_configure_opts*, %union.phy_configure_opts** %5, align 8
  %35 = call i32 %32(%struct.phy* %33, %union.phy_configure_opts* %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.phy*, %struct.phy** %4, align 8
  %37 = getelementptr inbounds %struct.phy, %struct.phy* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %23, %20, %9
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
