; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-generic.c_usb_gen_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-generic.c_usb_gen_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_phy = type { i32 }
%struct.usb_phy_generic = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Failed to enable power\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_gen_phy_init(%struct.usb_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_phy*, align 8
  %4 = alloca %struct.usb_phy_generic*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_phy* %0, %struct.usb_phy** %3, align 8
  %6 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %7 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.usb_phy_generic* @dev_get_drvdata(i32 %8)
  store %struct.usb_phy_generic* %9, %struct.usb_phy_generic** %4, align 8
  %10 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %4, align 8
  %11 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @IS_ERR(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %1
  %16 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %4, align 8
  %17 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @regulator_enable(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %23 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %21, %15
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %4, align 8
  %29 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @IS_ERR(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %27
  %34 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %4, align 8
  %35 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @clk_prepare_enable(i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %46

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %27
  %44 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %4, align 8
  %45 = call i32 @nop_reset(%struct.usb_phy_generic* %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.usb_phy_generic* @dev_get_drvdata(i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i64 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @nop_reset(%struct.usb_phy_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
