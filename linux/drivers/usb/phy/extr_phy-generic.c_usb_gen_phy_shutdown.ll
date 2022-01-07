; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-generic.c_usb_gen_phy_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-generic.c_usb_gen_phy_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_phy = type { i32 }
%struct.usb_phy_generic = type { i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Failed to disable power\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_gen_phy_shutdown(%struct.usb_phy* %0) #0 {
  %2 = alloca %struct.usb_phy*, align 8
  %3 = alloca %struct.usb_phy_generic*, align 8
  store %struct.usb_phy* %0, %struct.usb_phy** %2, align 8
  %4 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %5 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.usb_phy_generic* @dev_get_drvdata(i32 %6)
  store %struct.usb_phy_generic* %7, %struct.usb_phy_generic** %3, align 8
  %8 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %3, align 8
  %9 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @gpiod_set_value_cansleep(i32 %10, i32 1)
  %12 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %3, align 8
  %13 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @IS_ERR(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %3, align 8
  %19 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @clk_disable_unprepare(i32 %20)
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %3, align 8
  %24 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @IS_ERR(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %22
  %29 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %3, align 8
  %30 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @regulator_disable(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %36 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %34, %28
  br label %40

40:                                               ; preds = %39, %22
  ret void
}

declare dso_local %struct.usb_phy_generic* @dev_get_drvdata(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i64 @regulator_disable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
