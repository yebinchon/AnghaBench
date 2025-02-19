; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun4i-usb.c_sun4i_usb_phy_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun4i-usb.c_sun4i_usb_phy_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.sun4i_usb_phy = type { i64 }
%struct.sun4i_usb_phy_data = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@USB_DR_MODE_HOST = common dso_local global i32 0, align 4
@USB_DR_MODE_PERIPHERAL = common dso_local global i32 0, align 4
@USB_DR_MODE_OTG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Changing dr_mode to %d\0A\00", align 1
@system_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*, i32, i32)* @sun4i_usb_phy_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_usb_phy_set_mode(%struct.phy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sun4i_usb_phy*, align 8
  %9 = alloca %struct.sun4i_usb_phy_data*, align 8
  %10 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.phy*, %struct.phy** %5, align 8
  %12 = call %struct.sun4i_usb_phy* @phy_get_drvdata(%struct.phy* %11)
  store %struct.sun4i_usb_phy* %12, %struct.sun4i_usb_phy** %8, align 8
  %13 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %8, align 8
  %14 = call %struct.sun4i_usb_phy_data* @to_sun4i_usb_phy_data(%struct.sun4i_usb_phy* %13)
  store %struct.sun4i_usb_phy_data* %14, %struct.sun4i_usb_phy_data** %9, align 8
  %15 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %8, align 8
  %16 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 129
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %60

23:                                               ; preds = %19
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %60

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %34 [
    i32 129, label %28
    i32 130, label %30
    i32 128, label %32
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* @USB_DR_MODE_HOST, align 4
  store i32 %29, i32* %10, align 4
  br label %37

30:                                               ; preds = %26
  %31 = load i32, i32* @USB_DR_MODE_PERIPHERAL, align 4
  store i32 %31, i32* %10, align 4
  br label %37

32:                                               ; preds = %26
  %33 = load i32, i32* @USB_DR_MODE_OTG, align 4
  store i32 %33, i32* %10, align 4
  br label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %60

37:                                               ; preds = %32, %30, %28
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %9, align 8
  %40 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.phy*, %struct.phy** %5, align 8
  %45 = getelementptr inbounds %struct.phy, %struct.phy* %44, i32 0, i32 0
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @dev_info(i32* %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %9, align 8
  %50 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %43, %37
  %52 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %9, align 8
  %53 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %52, i32 0, i32 1
  store i32 -1, i32* %53, align 4
  %54 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %9, align 8
  %55 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %54, i32 0, i32 2
  store i32 1, i32* %55, align 4
  %56 = load i32, i32* @system_wq, align 4
  %57 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %9, align 8
  %58 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %57, i32 0, i32 3
  %59 = call i32 @queue_delayed_work(i32 %56, i32* %58, i32 0)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %51, %34, %23, %22
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.sun4i_usb_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.sun4i_usb_phy_data* @to_sun4i_usb_phy_data(%struct.sun4i_usb_phy*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
