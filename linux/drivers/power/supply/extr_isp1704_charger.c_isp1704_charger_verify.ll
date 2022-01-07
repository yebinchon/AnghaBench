; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_isp1704_charger.c_isp1704_charger_verify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_isp1704_charger.c_isp1704_charger_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1704_charger = type { i32 }

@ULPI_FUNC_CTRL = common dso_local global i32 0, align 4
@ULPI_FUNC_CTRL_RESET = common dso_local global i32 0, align 4
@ULPI_FUNC_CTRL_OPMODE_MASK = common dso_local global i32 0, align 4
@ULPI_OTG_CTRL_DP_PULLDOWN = common dso_local global i32 0, align 4
@ULPI_OTG_CTRL_DM_PULLDOWN = common dso_local global i32 0, align 4
@ULPI_OTG_CTRL = common dso_local global i32 0, align 4
@ULPI_FUNC_CTRL_TERMSELECT = common dso_local global i32 0, align 4
@ULPI_DEBUG = common dso_local global i32 0, align 4
@ISP1704_PWR_CTRL = common dso_local global i32 0, align 4
@ISP1704_PWR_CTRL_DP_WKPU_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp1704_charger*)* @isp1704_charger_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp1704_charger_verify(%struct.isp1704_charger* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isp1704_charger*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.isp1704_charger* %0, %struct.isp1704_charger** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.isp1704_charger*, %struct.isp1704_charger** %3, align 8
  %7 = load i32, i32* @ULPI_FUNC_CTRL, align 4
  %8 = call i32 @isp1704_read(%struct.isp1704_charger* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @ULPI_FUNC_CTRL_RESET, align 4
  %10 = load i32, i32* %5, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %5, align 4
  %12 = load %struct.isp1704_charger*, %struct.isp1704_charger** %3, align 8
  %13 = load i32, i32* @ULPI_FUNC_CTRL, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @isp1704_write(%struct.isp1704_charger* %12, i32 %13, i32 %14)
  %16 = call i32 @usleep_range(i32 1000, i32 2000)
  %17 = load i32, i32* @ULPI_FUNC_CTRL_RESET, align 4
  %18 = load i32, i32* @ULPI_FUNC_CTRL_OPMODE_MASK, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.isp1704_charger*, %struct.isp1704_charger** %3, align 8
  %24 = load i32, i32* @ULPI_FUNC_CTRL, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @isp1704_write(%struct.isp1704_charger* %23, i32 %24, i32 %25)
  %27 = load i32, i32* @ULPI_OTG_CTRL_DP_PULLDOWN, align 4
  %28 = load i32, i32* @ULPI_OTG_CTRL_DM_PULLDOWN, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %5, align 4
  %30 = load %struct.isp1704_charger*, %struct.isp1704_charger** %3, align 8
  %31 = load i32, i32* @ULPI_OTG_CTRL, align 4
  %32 = call i32 @ULPI_CLR(i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @isp1704_write(%struct.isp1704_charger* %30, i32 %32, i32 %33)
  %35 = load i32, i32* @ULPI_FUNC_CTRL_TERMSELECT, align 4
  %36 = load i32, i32* @ULPI_FUNC_CTRL_RESET, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %5, align 4
  %38 = load %struct.isp1704_charger*, %struct.isp1704_charger** %3, align 8
  %39 = load i32, i32* @ULPI_FUNC_CTRL, align 4
  %40 = call i32 @ULPI_SET(i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @isp1704_write(%struct.isp1704_charger* %38, i32 %40, i32 %41)
  %43 = call i32 @usleep_range(i32 1000, i32 2000)
  %44 = load %struct.isp1704_charger*, %struct.isp1704_charger** %3, align 8
  %45 = load i32, i32* @ULPI_DEBUG, align 4
  %46 = call i32 @isp1704_read(%struct.isp1704_charger* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %1
  %49 = load %struct.isp1704_charger*, %struct.isp1704_charger** %3, align 8
  %50 = load i32, i32* @ULPI_FUNC_CTRL, align 4
  %51 = call i32 @ULPI_CLR(i32 %50)
  %52 = load i32, i32* @ULPI_FUNC_CTRL_TERMSELECT, align 4
  %53 = call i32 @isp1704_write(%struct.isp1704_charger* %49, i32 %51, i32 %52)
  store i32 1, i32* %2, align 4
  br label %82

54:                                               ; preds = %1
  %55 = load %struct.isp1704_charger*, %struct.isp1704_charger** %3, align 8
  %56 = load i32, i32* @ISP1704_PWR_CTRL, align 4
  %57 = call i32 @ULPI_SET(i32 %56)
  %58 = load i32, i32* @ISP1704_PWR_CTRL_DP_WKPU_EN, align 4
  %59 = call i32 @isp1704_write(%struct.isp1704_charger* %55, i32 %57, i32 %58)
  %60 = load %struct.isp1704_charger*, %struct.isp1704_charger** %3, align 8
  %61 = load i32, i32* @ULPI_FUNC_CTRL, align 4
  %62 = call i32 @ULPI_CLR(i32 %61)
  %63 = load i32, i32* @ULPI_FUNC_CTRL_TERMSELECT, align 4
  %64 = call i32 @isp1704_write(%struct.isp1704_charger* %60, i32 %62, i32 %63)
  %65 = load %struct.isp1704_charger*, %struct.isp1704_charger** %3, align 8
  %66 = load i32, i32* @ULPI_OTG_CTRL, align 4
  %67 = call i32 @ULPI_SET(i32 %66)
  %68 = load i32, i32* @ULPI_OTG_CTRL_DM_PULLDOWN, align 4
  %69 = call i32 @isp1704_write(%struct.isp1704_charger* %65, i32 %67, i32 %68)
  %70 = load %struct.isp1704_charger*, %struct.isp1704_charger** %3, align 8
  %71 = load i32, i32* @ULPI_DEBUG, align 4
  %72 = call i32 @isp1704_read(%struct.isp1704_charger* %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %54
  %76 = load %struct.isp1704_charger*, %struct.isp1704_charger** %3, align 8
  %77 = load i32, i32* @ISP1704_PWR_CTRL, align 4
  %78 = call i32 @ULPI_CLR(i32 %77)
  %79 = load i32, i32* @ISP1704_PWR_CTRL_DP_WKPU_EN, align 4
  %80 = call i32 @isp1704_write(%struct.isp1704_charger* %76, i32 %78, i32 %79)
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %75, %48
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @isp1704_read(%struct.isp1704_charger*, i32) #1

declare dso_local i32 @isp1704_write(%struct.isp1704_charger*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ULPI_CLR(i32) #1

declare dso_local i32 @ULPI_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
