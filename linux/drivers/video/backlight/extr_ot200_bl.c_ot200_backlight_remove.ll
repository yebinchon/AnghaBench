; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ot200_bl.c_ot200_backlight_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ot200_bl.c_ot200_backlight_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@pwm_timer = common dso_local global i32 0, align 4
@MFGPT_REG_COUNTER = common dso_local global i32 0, align 4
@MFGPT_REG_SETUP = common dso_local global i32 0, align 4
@MFGPT_SETUP_CNTEN = common dso_local global i64 0, align 8
@MFGPT_REG_CMP1 = common dso_local global i32 0, align 4
@MAX_COMP2 = common dso_local global i64 0, align 8
@dim_table = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ot200_backlight_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ot200_backlight_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %3 = load i32, i32* @pwm_timer, align 4
  %4 = load i32, i32* @MFGPT_REG_COUNTER, align 4
  %5 = call i32 @cs5535_mfgpt_write(i32 %3, i32 %4, i64 0)
  %6 = load i32, i32* @pwm_timer, align 4
  %7 = load i32, i32* @MFGPT_REG_SETUP, align 4
  %8 = load i64, i64* @MFGPT_SETUP_CNTEN, align 8
  %9 = call i32 @cs5535_mfgpt_write(i32 %6, i32 %7, i64 %8)
  %10 = load i32, i32* @pwm_timer, align 4
  %11 = load i32, i32* @MFGPT_REG_CMP1, align 4
  %12 = load i64, i64* @MAX_COMP2, align 8
  %13 = load i64*, i64** @dim_table, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 100
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %12, %15
  %17 = call i32 @cs5535_mfgpt_write(i32 %10, i32 %11, i64 %16)
  %18 = load i32, i32* @pwm_timer, align 4
  %19 = call i32 @cs5535_mfgpt_free_timer(i32 %18)
  ret i32 0
}

declare dso_local i32 @cs5535_mfgpt_write(i32, i32, i64) #1

declare dso_local i32 @cs5535_mfgpt_free_timer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
