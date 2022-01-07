; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-lpc18xx.c_lpc18xx_rgu_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-lpc18xx.c_lpc18xx_rgu_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i32 }
%struct.lpc18xx_rgu_data = type { i32 }

@LPC18XX_RGU_ACTIVE_STATUS0 = common dso_local global i32 0, align 4
@LPC18XX_RGU_RESETS_PER_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i64)* @lpc18xx_rgu_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_rgu_status(%struct.reset_controller_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.reset_controller_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.lpc18xx_rgu_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %3, align 8
  %9 = call %struct.lpc18xx_rgu_data* @to_rgu_data(%struct.reset_controller_dev* %8)
  store %struct.lpc18xx_rgu_data* %9, %struct.lpc18xx_rgu_data** %5, align 8
  %10 = load i32, i32* @LPC18XX_RGU_ACTIVE_STATUS0, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @LPC18XX_RGU_RESETS_PER_REG, align 8
  %13 = udiv i64 %11, %12
  %14 = mul i64 %13, 4
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 %16, %14
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @LPC18XX_RGU_RESETS_PER_REG, align 8
  %21 = urem i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = shl i32 1, %22
  store i32 %23, i32* %6, align 4
  %24 = load %struct.lpc18xx_rgu_data*, %struct.lpc18xx_rgu_data** %5, align 8
  %25 = getelementptr inbounds %struct.lpc18xx_rgu_data, %struct.lpc18xx_rgu_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %26, %27
  %29 = call i32 @readl(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare dso_local %struct.lpc18xx_rgu_data* @to_rgu_data(%struct.reset_controller_dev*) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
