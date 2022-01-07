; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ltv350qv.c_ltv350qv_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ltv350qv.c_ltv350qv_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltv350qv = type { i32 }

@LTV_PWRCTL1 = common dso_local global i32 0, align 4
@LTV_VCOM_DISABLE = common dso_local global i32 0, align 4
@LTV_GATECTL2 = common dso_local global i32 0, align 4
@LTV_NW_INV_1LINE = common dso_local global i32 0, align 4
@LTV_PWRCTL2 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ltv350qv*)* @ltv350qv_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltv350qv_power_off(%struct.ltv350qv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ltv350qv*, align 8
  %4 = alloca i32, align 4
  store %struct.ltv350qv* %0, %struct.ltv350qv** %3, align 8
  %5 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %6 = load i32, i32* @LTV_PWRCTL1, align 4
  %7 = load i32, i32* @LTV_VCOM_DISABLE, align 4
  %8 = call i32 @LTV_DRIVE_CURRENT(i32 5)
  %9 = or i32 %7, %8
  %10 = call i32 @LTV_SUPPLY_CURRENT(i32 5)
  %11 = or i32 %9, %10
  %12 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %5, i32 %6, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %14 = load i32, i32* @LTV_GATECTL2, align 4
  %15 = load i32, i32* @LTV_NW_INV_1LINE, align 4
  %16 = call i32 @LTV_FWI(i32 3)
  %17 = or i32 %15, %16
  %18 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %13, i32 %14, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %22 = load i32, i32* @LTV_PWRCTL2, align 4
  %23 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %21, i32 %22, i32 0)
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = call i32 @usleep_range(i32 1000, i32 1100)
  %27 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %28 = load i32, i32* @LTV_PWRCTL1, align 4
  %29 = load i32, i32* @LTV_VCOM_DISABLE, align 4
  %30 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %27, i32 %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %1
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @ltv350qv_write_reg(%struct.ltv350qv*, i32, i32) #1

declare dso_local i32 @LTV_DRIVE_CURRENT(i32) #1

declare dso_local i32 @LTV_SUPPLY_CURRENT(i32) #1

declare dso_local i32 @LTV_FWI(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
