; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun4i-usb.c_sun4i_usb_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun4i-usb.c_sun4i_usb_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.sun4i_usb_phy = type { i32, i64, i32 }
%struct.sun4i_usb_phy_data = type { i32, i64 }

@.str = private unnamed_addr constant [51 x i8] c"External vbus detected, not enabling our own vbus\0A\00", align 1
@system_wq = common dso_local global i32 0, align 4
@DEBOUNCE_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @sun4i_usb_phy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_usb_phy_power_on(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.sun4i_usb_phy*, align 8
  %5 = alloca %struct.sun4i_usb_phy_data*, align 8
  %6 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %7 = load %struct.phy*, %struct.phy** %3, align 8
  %8 = call %struct.sun4i_usb_phy* @phy_get_drvdata(%struct.phy* %7)
  store %struct.sun4i_usb_phy* %8, %struct.sun4i_usb_phy** %4, align 8
  %9 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %4, align 8
  %10 = call %struct.sun4i_usb_phy_data* @to_sun4i_usb_phy_data(%struct.sun4i_usb_phy* %9)
  store %struct.sun4i_usb_phy_data* %10, %struct.sun4i_usb_phy_data** %5, align 8
  %11 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %4, align 8
  %12 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %4, align 8
  %17 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %1
  store i32 0, i32* %2, align 4
  br label %66

21:                                               ; preds = %15
  %22 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %4, align 8
  %23 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %5, align 8
  %28 = call i64 @sun4i_usb_phy0_have_vbus_det(%struct.sun4i_usb_phy_data* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %5, align 8
  %32 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.phy*, %struct.phy** %3, align 8
  %37 = getelementptr inbounds %struct.phy, %struct.phy* %36, i32 0, i32 0
  %38 = call i32 @dev_warn(i32* %37, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %66

39:                                               ; preds = %30, %26, %21
  %40 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %4, align 8
  %41 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @regulator_enable(i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %66

48:                                               ; preds = %39
  %49 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %4, align 8
  %50 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %4, align 8
  %52 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %48
  %56 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %5, align 8
  %57 = call i64 @sun4i_usb_phy0_poll(%struct.sun4i_usb_phy_data* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i32, i32* @system_wq, align 4
  %61 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %5, align 8
  %62 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %61, i32 0, i32 0
  %63 = load i32, i32* @DEBOUNCE_TIME, align 4
  %64 = call i32 @mod_delayed_work(i32 %60, i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %55, %48
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %46, %35, %20
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.sun4i_usb_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.sun4i_usb_phy_data* @to_sun4i_usb_phy_data(%struct.sun4i_usb_phy*) #1

declare dso_local i64 @sun4i_usb_phy0_have_vbus_det(%struct.sun4i_usb_phy_data*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i64 @sun4i_usb_phy0_poll(%struct.sun4i_usb_phy_data*) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
