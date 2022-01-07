; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_isp1704_charger.c_isp1704_charger_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_isp1704_charger.c_isp1704_charger_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1704_charger = type { i64 }

@ISP1704_PWR_CTRL = common dso_local global i32 0, align 4
@ISP1704_PWR_CTRL_SWCTRL = common dso_local global i32 0, align 4
@ISP1704_PWR_CTRL_DPVSRC_EN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ISP1704_PWR_CTRL_VDAT_DET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp1704_charger*)* @isp1704_charger_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp1704_charger_detect(%struct.isp1704_charger* %0) #0 {
  %2 = alloca %struct.isp1704_charger*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.isp1704_charger* %0, %struct.isp1704_charger** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.isp1704_charger*, %struct.isp1704_charger** %2, align 8
  %7 = load i32, i32* @ISP1704_PWR_CTRL, align 4
  %8 = call i32 @isp1704_read(%struct.isp1704_charger* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.isp1704_charger*, %struct.isp1704_charger** %2, align 8
  %10 = load i32, i32* @ISP1704_PWR_CTRL, align 4
  %11 = load i32, i32* @ISP1704_PWR_CTRL_SWCTRL, align 4
  %12 = call i32 @isp1704_write(%struct.isp1704_charger* %9, i32 %10, i32 %11)
  %13 = load %struct.isp1704_charger*, %struct.isp1704_charger** %2, align 8
  %14 = load i32, i32* @ISP1704_PWR_CTRL, align 4
  %15 = call i32 @ULPI_SET(i32 %14)
  %16 = load i32, i32* @ISP1704_PWR_CTRL_SWCTRL, align 4
  %17 = load i32, i32* @ISP1704_PWR_CTRL_DPVSRC_EN, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @isp1704_write(%struct.isp1704_charger* %13, i32 %15, i32 %18)
  %20 = call i32 @usleep_range(i32 1000, i32 2000)
  %21 = load i64, i64* @jiffies, align 8
  %22 = call i64 @msecs_to_jiffies(i32 300)
  %23 = add i64 %21, %22
  store i64 %23, i64* %3, align 8
  br label %24

24:                                               ; preds = %45, %1
  %25 = load %struct.isp1704_charger*, %struct.isp1704_charger** %2, align 8
  %26 = load i32, i32* @ISP1704_PWR_CTRL, align 4
  %27 = call i32 @isp1704_read(%struct.isp1704_charger* %25, i32 %26)
  %28 = load i32, i32* @ISP1704_PWR_CTRL_VDAT_DET, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.isp1704_charger*, %struct.isp1704_charger** %2, align 8
  %33 = call i32 @isp1704_charger_verify(%struct.isp1704_charger* %32)
  store i32 %33, i32* %5, align 4
  br label %47

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* @jiffies, align 8
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @time_after(i64 %36, i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.isp1704_charger*, %struct.isp1704_charger** %2, align 8
  %42 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %40, %35
  %46 = phi i1 [ false, %35 ], [ %44, %40 ]
  br i1 %46, label %24, label %47

47:                                               ; preds = %45, %31
  %48 = load %struct.isp1704_charger*, %struct.isp1704_charger** %2, align 8
  %49 = load i32, i32* @ISP1704_PWR_CTRL, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @isp1704_write(%struct.isp1704_charger* %48, i32 %49, i32 %50)
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @isp1704_read(%struct.isp1704_charger*, i32) #1

declare dso_local i32 @isp1704_write(%struct.isp1704_charger*, i32, i32) #1

declare dso_local i32 @ULPI_SET(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @isp1704_charger_verify(%struct.isp1704_charger*) #1

declare dso_local i32 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
