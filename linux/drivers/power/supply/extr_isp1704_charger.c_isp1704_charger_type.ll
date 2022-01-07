; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_isp1704_charger.c_isp1704_charger_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_isp1704_charger.c_isp1704_charger_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1704_charger = type { i32 }

@POWER_SUPPLY_TYPE_USB_DCP = common dso_local global i32 0, align 4
@ULPI_FUNC_CTRL = common dso_local global i32 0, align 4
@ULPI_OTG_CTRL = common dso_local global i32 0, align 4
@ULPI_OTG_CTRL_DM_PULLDOWN = common dso_local global i32 0, align 4
@ULPI_OTG_CTRL_DP_PULLDOWN = common dso_local global i32 0, align 4
@ULPI_FUNC_CTRL_XCVRSEL_MASK = common dso_local global i32 0, align 4
@ULPI_FUNC_CTRL_FULL_SPEED = common dso_local global i32 0, align 4
@ULPI_FUNC_CTRL_TERMSELECT = common dso_local global i32 0, align 4
@ULPI_FUNC_CTRL_RESET = common dso_local global i32 0, align 4
@ULPI_DEBUG = common dso_local global i32 0, align 4
@POWER_SUPPLY_TYPE_USB_CDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp1704_charger*)* @isp1704_charger_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp1704_charger_type(%struct.isp1704_charger* %0) #0 {
  %2 = alloca %struct.isp1704_charger*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.isp1704_charger* %0, %struct.isp1704_charger** %2, align 8
  %7 = load i32, i32* @POWER_SUPPLY_TYPE_USB_DCP, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.isp1704_charger*, %struct.isp1704_charger** %2, align 8
  %9 = load i32, i32* @ULPI_FUNC_CTRL, align 4
  %10 = call i32 @isp1704_read(%struct.isp1704_charger* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.isp1704_charger*, %struct.isp1704_charger** %2, align 8
  %12 = load i32, i32* @ULPI_OTG_CTRL, align 4
  %13 = call i32 @isp1704_read(%struct.isp1704_charger* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @ULPI_OTG_CTRL_DM_PULLDOWN, align 4
  %15 = load i32, i32* @ULPI_OTG_CTRL_DP_PULLDOWN, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %3, align 4
  %17 = load %struct.isp1704_charger*, %struct.isp1704_charger** %2, align 8
  %18 = load i32, i32* @ULPI_OTG_CTRL, align 4
  %19 = call i32 @ULPI_CLR(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @isp1704_write(%struct.isp1704_charger* %17, i32 %19, i32 %20)
  %22 = load %struct.isp1704_charger*, %struct.isp1704_charger** %2, align 8
  %23 = load i32, i32* @ULPI_FUNC_CTRL, align 4
  %24 = call i32 @ULPI_CLR(i32 %23)
  %25 = load i32, i32* @ULPI_FUNC_CTRL_XCVRSEL_MASK, align 4
  %26 = call i32 @isp1704_write(%struct.isp1704_charger* %22, i32 %24, i32 %25)
  %27 = load %struct.isp1704_charger*, %struct.isp1704_charger** %2, align 8
  %28 = load i32, i32* @ULPI_FUNC_CTRL, align 4
  %29 = call i32 @ULPI_SET(i32 %28)
  %30 = load i32, i32* @ULPI_FUNC_CTRL_FULL_SPEED, align 4
  %31 = call i32 @isp1704_write(%struct.isp1704_charger* %27, i32 %29, i32 %30)
  %32 = load i32, i32* @ULPI_FUNC_CTRL_TERMSELECT, align 4
  %33 = load i32, i32* @ULPI_FUNC_CTRL_RESET, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %3, align 4
  %35 = load %struct.isp1704_charger*, %struct.isp1704_charger** %2, align 8
  %36 = load i32, i32* @ULPI_FUNC_CTRL, align 4
  %37 = call i32 @ULPI_SET(i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @isp1704_write(%struct.isp1704_charger* %35, i32 %37, i32 %38)
  %40 = call i32 @usleep_range(i32 1000, i32 2000)
  %41 = load %struct.isp1704_charger*, %struct.isp1704_charger** %2, align 8
  %42 = load i32, i32* @ULPI_DEBUG, align 4
  %43 = call i32 @isp1704_read(%struct.isp1704_charger* %41, i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %44, 3
  %46 = icmp ne i32 %45, 3
  br i1 %46, label %47, label %49

47:                                               ; preds = %1
  %48 = load i32, i32* @POWER_SUPPLY_TYPE_USB_CDP, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %47, %1
  %50 = load %struct.isp1704_charger*, %struct.isp1704_charger** %2, align 8
  %51 = load i32, i32* @ULPI_FUNC_CTRL, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @isp1704_write(%struct.isp1704_charger* %50, i32 %51, i32 %52)
  %54 = load %struct.isp1704_charger*, %struct.isp1704_charger** %2, align 8
  %55 = load i32, i32* @ULPI_OTG_CTRL, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @isp1704_write(%struct.isp1704_charger* %54, i32 %55, i32 %56)
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @isp1704_read(%struct.isp1704_charger*, i32) #1

declare dso_local i32 @isp1704_write(%struct.isp1704_charger*, i32, i32) #1

declare dso_local i32 @ULPI_CLR(i32) #1

declare dso_local i32 @ULPI_SET(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
