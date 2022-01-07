; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ab8500-usb.c_ab8500_usb_phy_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ab8500-usb.c_ab8500_usb_phy_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_usb = type { i32, i32, i32 }

@AB8500_BIT_PHY_CTRL_HOST_EN = common dso_local global i32 0, align 4
@AB8500_BIT_PHY_CTRL_DEVICE_EN = common dso_local global i32 0, align 4
@PINCTRL_STATE_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not get/set default pinstate\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"can't prepare/enable clock\0A\00", align 1
@AB8500_USB = common dso_local global i32 0, align 4
@AB8500_USB_PHY_CTRL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ab8500_usb*, i32)* @ab8500_usb_phy_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ab8500_usb_phy_enable(%struct.ab8500_usb* %0, i32 %1) #0 {
  %3 = alloca %struct.ab8500_usb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ab8500_usb* %0, %struct.ab8500_usb** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @AB8500_BIT_PHY_CTRL_HOST_EN, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @AB8500_BIT_PHY_CTRL_DEVICE_EN, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  store i32 %13, i32* %5, align 4
  %14 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %15 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PINCTRL_STATE_DEFAULT, align 4
  %18 = call i32 @pinctrl_get_select(i32 %16, i32 %17)
  %19 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %20 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %22 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @IS_ERR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %12
  %27 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %28 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %26, %12
  %32 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %33 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @clk_prepare_enable(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %39 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %31
  %43 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %44 = call i32 @ab8500_usb_regulator_enable(%struct.ab8500_usb* %43)
  %45 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %46 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AB8500_USB, align 4
  %49 = load i32, i32* @AB8500_USB_PHY_CTRL_REG, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @abx500_mask_and_set_register_interruptible(i32 %47, i32 %48, i32 %49, i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @pinctrl_get_select(i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @clk_prepare_enable(i32) #1

declare dso_local i32 @ab8500_usb_regulator_enable(%struct.ab8500_usb*) #1

declare dso_local i32 @abx500_mask_and_set_register_interruptible(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
