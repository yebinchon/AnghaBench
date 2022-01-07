; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun4i-usb.c_sun4i_usb_phy_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun4i-usb.c_sun4i_usb_phy_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.sun4i_usb_phy = type { i32, i64, i32 }
%struct.sun4i_usb_phy_data = type { i32 }

@system_wq = common dso_local global i32 0, align 4
@POLL_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @sun4i_usb_phy_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_usb_phy_power_off(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.sun4i_usb_phy*, align 8
  %5 = alloca %struct.sun4i_usb_phy_data*, align 8
  store %struct.phy* %0, %struct.phy** %3, align 8
  %6 = load %struct.phy*, %struct.phy** %3, align 8
  %7 = call %struct.sun4i_usb_phy* @phy_get_drvdata(%struct.phy* %6)
  store %struct.sun4i_usb_phy* %7, %struct.sun4i_usb_phy** %4, align 8
  %8 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %4, align 8
  %9 = call %struct.sun4i_usb_phy_data* @to_sun4i_usb_phy_data(%struct.sun4i_usb_phy* %8)
  store %struct.sun4i_usb_phy_data* %9, %struct.sun4i_usb_phy_data** %5, align 8
  %10 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %4, align 8
  %11 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %4, align 8
  %16 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %1
  store i32 0, i32* %2, align 4
  br label %42

20:                                               ; preds = %14
  %21 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %4, align 8
  %22 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @regulator_disable(i32 %23)
  %25 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %4, align 8
  %26 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %4, align 8
  %28 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %20
  %32 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %5, align 8
  %33 = call i32 @sun4i_usb_phy0_poll(%struct.sun4i_usb_phy_data* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @system_wq, align 4
  %37 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %5, align 8
  %38 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %37, i32 0, i32 0
  %39 = load i32, i32* @POLL_TIME, align 4
  %40 = call i32 @mod_delayed_work(i32 %36, i32* %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %31, %20
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %19
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.sun4i_usb_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.sun4i_usb_phy_data* @to_sun4i_usb_phy_data(%struct.sun4i_usb_phy*) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @sun4i_usb_phy0_poll(%struct.sun4i_usb_phy_data*) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
