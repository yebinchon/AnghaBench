; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_core.c_ci_usb_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_core.c_ci_usb_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@CI_HDRC_OVERRIDE_PHY_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ci_hdrc*)* @ci_usb_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_usb_phy_init(%struct.ci_hdrc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ci_hdrc*, align 8
  %4 = alloca i32, align 4
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %3, align 8
  %5 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %6 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CI_HDRC_OVERRIDE_PHY_CONTROL, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

14:                                               ; preds = %1
  %15 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %16 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %42 [
    i32 129, label %20
    i32 128, label %20
    i32 132, label %20
    i32 130, label %32
    i32 131, label %32
  ]

20:                                               ; preds = %14, %14, %14
  %21 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %22 = call i32 @_ci_usb_phy_init(%struct.ci_hdrc* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = call i32 (...) @hw_wait_phy_stable()
  br label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %52

29:                                               ; preds = %25
  %30 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %31 = call i32 @hw_phymode_configure(%struct.ci_hdrc* %30)
  br label %50

32:                                               ; preds = %14, %14
  %33 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %34 = call i32 @hw_phymode_configure(%struct.ci_hdrc* %33)
  %35 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %36 = call i32 @_ci_usb_phy_init(%struct.ci_hdrc* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %52

41:                                               ; preds = %32
  br label %50

42:                                               ; preds = %14
  %43 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %44 = call i32 @_ci_usb_phy_init(%struct.ci_hdrc* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = call i32 (...) @hw_wait_phy_stable()
  br label %49

49:                                               ; preds = %47, %42
  br label %50

50:                                               ; preds = %49, %41, %29
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %39, %27, %13
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @_ci_usb_phy_init(%struct.ci_hdrc*) #1

declare dso_local i32 @hw_wait_phy_stable(...) #1

declare dso_local i32 @hw_phymode_configure(%struct.ci_hdrc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
