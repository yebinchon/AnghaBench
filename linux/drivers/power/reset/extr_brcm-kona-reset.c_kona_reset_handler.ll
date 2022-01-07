; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/reset/extr_brcm-kona-reset.c_kona_reset_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/reset/extr_brcm-kona-reset.c_kona_reset_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }

@RSTMGR_WR_PASSWORD = common dso_local global i32 0, align 4
@RSTMGR_WR_PASSWORD_SHIFT = common dso_local global i32 0, align 4
@RSTMGR_WR_ACCESS_ENABLE = common dso_local global i32 0, align 4
@kona_reset_base = common dso_local global i64 0, align 8
@RSTMGR_REG_WR_ACCESS_OFFSET = common dso_local global i64 0, align 8
@RSTMGR_REG_CHIP_SOFT_RST_OFFSET = common dso_local global i64 0, align 8
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @kona_reset_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kona_reset_handler(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* @RSTMGR_WR_PASSWORD, align 4
  %8 = load i32, i32* @RSTMGR_WR_PASSWORD_SHIFT, align 4
  %9 = shl i32 %7, %8
  %10 = load i32, i32* @RSTMGR_WR_ACCESS_ENABLE, align 4
  %11 = or i32 %9, %10
  %12 = load i64, i64* @kona_reset_base, align 8
  %13 = load i64, i64* @RSTMGR_REG_WR_ACCESS_OFFSET, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel(i32 %11, i64 %14)
  %16 = load i64, i64* @kona_reset_base, align 8
  %17 = load i64, i64* @RSTMGR_REG_CHIP_SOFT_RST_OFFSET, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 0, i64 %18)
  %20 = load i32, i32* @NOTIFY_DONE, align 4
  ret i32 %20
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
