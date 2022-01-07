; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_chip.c_zd_chip_set_rts_cts_rate_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_chip.c_zd_chip_set_rts_cts_rate_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_chip = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"preamble=%x\0A\00", align 1
@RTSCTS_SH_RTS_PMB_TYPE = common dso_local global i32 0, align 4
@RTSCTS_SH_CTS_PMB_TYPE = common dso_local global i32 0, align 4
@ZD_CCK_RATE_11M = common dso_local global i32 0, align 4
@RTSCTS_SH_RTS_RATE = common dso_local global i32 0, align 4
@ZD_RX_CCK = common dso_local global i32 0, align 4
@RTSCTS_SH_RTS_MOD_TYPE = common dso_local global i32 0, align 4
@RTSCTS_SH_CTS_RATE = common dso_local global i32 0, align 4
@RTSCTS_SH_CTS_MOD_TYPE = common dso_local global i32 0, align 4
@CR_RTS_CTS_RATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_chip_set_rts_cts_rate_locked(%struct.zd_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.zd_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.zd_chip* %0, %struct.zd_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %7 = call i32 @zd_chip_dev(%struct.zd_chip* %6)
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @dev_dbg_f(i32 %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @RTSCTS_SH_RTS_PMB_TYPE, align 4
  %12 = shl i32 %10, %11
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @RTSCTS_SH_CTS_PMB_TYPE, align 4
  %17 = shl i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @ZD_CCK_RATE_11M, align 4
  %21 = call i32 @ZD_PURE_RATE(i32 %20)
  %22 = load i32, i32* @RTSCTS_SH_RTS_RATE, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @ZD_RX_CCK, align 4
  %27 = load i32, i32* @RTSCTS_SH_RTS_MOD_TYPE, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @ZD_CCK_RATE_11M, align 4
  %32 = call i32 @ZD_PURE_RATE(i32 %31)
  %33 = load i32, i32* @RTSCTS_SH_CTS_RATE, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @ZD_RX_CCK, align 4
  %38 = load i32, i32* @RTSCTS_SH_CTS_MOD_TYPE, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @CR_RTS_CTS_RATE, align 4
  %45 = call i32 @zd_iowrite32_locked(%struct.zd_chip* %42, i32 %43, i32 %44)
  ret i32 %45
}

declare dso_local i32 @dev_dbg_f(i32, i8*, i32) #1

declare dso_local i32 @zd_chip_dev(%struct.zd_chip*) #1

declare dso_local i32 @ZD_PURE_RATE(i32) #1

declare dso_local i32 @zd_iowrite32_locked(%struct.zd_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
