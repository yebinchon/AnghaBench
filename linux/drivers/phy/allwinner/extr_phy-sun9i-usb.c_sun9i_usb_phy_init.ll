; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun9i-usb.c_sun9i_usb_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun9i-usb.c_sun9i_usb_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.sun9i_usb_phy = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @sun9i_usb_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun9i_usb_phy_init(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.sun9i_usb_phy*, align 8
  %5 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %6 = load %struct.phy*, %struct.phy** %3, align 8
  %7 = call %struct.sun9i_usb_phy* @phy_get_drvdata(%struct.phy* %6)
  store %struct.sun9i_usb_phy* %7, %struct.sun9i_usb_phy** %4, align 8
  %8 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %9 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_prepare_enable(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %44

15:                                               ; preds = %1
  %16 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %17 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clk_prepare_enable(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %39

23:                                               ; preds = %15
  %24 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %25 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @reset_control_deassert(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %34

31:                                               ; preds = %23
  %32 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %33 = call i32 @sun9i_usb_phy_passby(%struct.sun9i_usb_phy* %32, i32 1)
  store i32 0, i32* %2, align 4
  br label %46

34:                                               ; preds = %30
  %35 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %36 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @clk_disable_unprepare(i32 %37)
  br label %39

39:                                               ; preds = %34, %22
  %40 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %41 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @clk_disable_unprepare(i32 %42)
  br label %44

44:                                               ; preds = %39, %14
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %31
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.sun9i_usb_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @sun9i_usb_phy_passby(%struct.sun9i_usb_phy*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
