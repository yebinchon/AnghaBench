; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-twl4030-usb.c_twl4030_i2c_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-twl4030-usb.c_twl4030_i2c_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_usb = type { i32 }

@PHY_CLK_CTRL = common dso_local global i32 0, align 4
@REQ_PHY_DPLL_CLK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@PHY_CLK_CTRL_STS = common dso_local global i32 0, align 4
@PHY_DPLL_CLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Timeout setting T2 HSUSB PHY DPLL clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.twl4030_usb*, i32)* @twl4030_i2c_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twl4030_i2c_access(%struct.twl4030_usb* %0, i32 %1) #0 {
  %3 = alloca %struct.twl4030_usb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.twl4030_usb* %0, %struct.twl4030_usb** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %8 = load i32, i32* @PHY_CLK_CTRL, align 4
  %9 = call i32 @twl4030_usb_read(%struct.twl4030_usb* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %71

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %58

15:                                               ; preds = %12
  %16 = load i32, i32* @REQ_PHY_DPLL_CLK, align 4
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %20 = load i32, i32* @PHY_CLK_CTRL, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @twl4030_usb_write_verify(%struct.twl4030_usb* %19, i32 %20, i32 %21)
  %23 = icmp slt i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = load i64, i64* @jiffies, align 8
  %27 = load i64, i64* @HZ, align 8
  %28 = add i64 %26, %27
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %43, %15
  %30 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %31 = load i32, i32* @PHY_CLK_CTRL_STS, align 4
  %32 = call i32 @twl4030_usb_read(%struct.twl4030_usb* %30, i32 %31)
  %33 = load i32, i32* @PHY_DPLL_CLK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = load i64, i64* @jiffies, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @time_before(i64 %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %36, %29
  %42 = phi i1 [ false, %29 ], [ %40, %36 ]
  br i1 %42, label %43, label %45

43:                                               ; preds = %41
  %44 = call i32 @udelay(i32 10)
  br label %29

45:                                               ; preds = %41
  %46 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %47 = load i32, i32* @PHY_CLK_CTRL_STS, align 4
  %48 = call i32 @twl4030_usb_read(%struct.twl4030_usb* %46, i32 %47)
  %49 = load i32, i32* @PHY_DPLL_CLK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %45
  %53 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %54 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %52, %45
  br label %70

58:                                               ; preds = %12
  %59 = load i32, i32* @REQ_PHY_DPLL_CLK, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %64 = load i32, i32* @PHY_CLK_CTRL, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i64 @twl4030_usb_write_verify(%struct.twl4030_usb* %63, i32 %64, i32 %65)
  %67 = icmp slt i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @WARN_ON(i32 %68)
  br label %70

70:                                               ; preds = %58, %57
  br label %71

71:                                               ; preds = %70, %2
  ret void
}

declare dso_local i32 @twl4030_usb_read(%struct.twl4030_usb*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @twl4030_usb_write_verify(%struct.twl4030_usb*, i32, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
