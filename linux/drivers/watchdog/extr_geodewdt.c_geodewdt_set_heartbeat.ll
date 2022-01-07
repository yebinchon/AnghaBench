; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_geodewdt.c_geodewdt_set_heartbeat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_geodewdt.c_geodewdt_set_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GEODEWDT_MAX_SECONDS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@wdt_timer = common dso_local global i32 0, align 4
@MFGPT_REG_SETUP = common dso_local global i32 0, align 4
@MFGPT_REG_CMP2 = common dso_local global i32 0, align 4
@GEODEWDT_HZ = common dso_local global i32 0, align 4
@MFGPT_REG_COUNTER = common dso_local global i32 0, align 4
@MFGPT_SETUP_CNTEN = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @geodewdt_set_heartbeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geodewdt_set_heartbeat(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @GEODEWDT_MAX_SECONDS, align 4
  %9 = icmp sgt i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %6, %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %31

13:                                               ; preds = %6
  %14 = load i32, i32* @wdt_timer, align 4
  %15 = load i32, i32* @MFGPT_REG_SETUP, align 4
  %16 = call i32 @cs5535_mfgpt_write(i32 %14, i32 %15, i32 0)
  %17 = load i32, i32* @wdt_timer, align 4
  %18 = load i32, i32* @MFGPT_REG_CMP2, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @GEODEWDT_HZ, align 4
  %21 = mul nsw i32 %19, %20
  %22 = call i32 @cs5535_mfgpt_write(i32 %17, i32 %18, i32 %21)
  %23 = load i32, i32* @wdt_timer, align 4
  %24 = load i32, i32* @MFGPT_REG_COUNTER, align 4
  %25 = call i32 @cs5535_mfgpt_write(i32 %23, i32 %24, i32 0)
  %26 = load i32, i32* @wdt_timer, align 4
  %27 = load i32, i32* @MFGPT_REG_SETUP, align 4
  %28 = load i32, i32* @MFGPT_SETUP_CNTEN, align 4
  %29 = call i32 @cs5535_mfgpt_write(i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* %3, align 4
  store i32 %30, i32* @timeout, align 4
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %13, %10
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @cs5535_mfgpt_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
