; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ab8500-usb.c_ab8500_usb_phy_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ab8500-usb.c_ab8500_usb_phy_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_usb = type { i32, i32, i32, i32 }

@AB8500_BIT_PHY_CTRL_HOST_EN = common dso_local global i32 0, align 4
@AB8500_BIT_PHY_CTRL_DEVICE_EN = common dso_local global i32 0, align 4
@AB8500_USB = common dso_local global i32 0, align 4
@AB8500_USB_PHY_CTRL_REG = common dso_local global i32 0, align 4
@PINCTRL_STATE_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not get sleep pinstate\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"could not set pins to sleep state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ab8500_usb*, i32)* @ab8500_usb_phy_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ab8500_usb_phy_disable(%struct.ab8500_usb* %0, i32 %1) #0 {
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
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @ab8500_usb_wd_linkstatus(%struct.ab8500_usb* %14, i32 %15)
  %17 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %18 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @AB8500_USB, align 4
  %21 = load i32, i32* @AB8500_USB_PHY_CTRL_REG, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @abx500_mask_and_set_register_interruptible(i32 %19, i32 %20, i32 %21, i32 %22, i32 0)
  %24 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %25 = call i32 @ab8500_usb_wd_workaround(%struct.ab8500_usb* %24)
  %26 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %27 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @clk_disable_unprepare(i32 %28)
  %30 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %31 = call i32 @ab8500_usb_regulator_disable(%struct.ab8500_usb* %30)
  %32 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %33 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @IS_ERR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %75, label %37

37:                                               ; preds = %12
  %38 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %39 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PINCTRL_STATE_SLEEP, align 4
  %42 = call i32 @pinctrl_lookup_state(i32 %40, i32 %41)
  %43 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %44 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %46 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %37
  %51 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %52 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_dbg(i32 %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %70

55:                                               ; preds = %37
  %56 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %57 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %60 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @pinctrl_select_state(i32 %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %55
  %65 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %66 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %64, %55
  br label %70

70:                                               ; preds = %69, %50
  %71 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %72 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @pinctrl_put(i32 %73)
  br label %75

75:                                               ; preds = %70, %12
  ret void
}

declare dso_local i32 @ab8500_usb_wd_linkstatus(%struct.ab8500_usb*, i32) #1

declare dso_local i32 @abx500_mask_and_set_register_interruptible(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ab8500_usb_wd_workaround(%struct.ab8500_usb*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @ab8500_usb_regulator_disable(%struct.ab8500_usb*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pinctrl_lookup_state(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i64 @pinctrl_select_state(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @pinctrl_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
