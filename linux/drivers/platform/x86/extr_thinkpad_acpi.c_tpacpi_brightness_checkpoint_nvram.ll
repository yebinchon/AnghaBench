; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_tpacpi_brightness_checkpoint_nvram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_tpacpi_brightness_checkpoint_nvram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@brightness_mode = common dso_local global i64 0, align 8
@TPACPI_BRGHT_MODE_ECNVRAM = common dso_local global i64 0, align 8
@TPACPI_DBG_BRGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"trying to checkpoint backlight level to NVRAM...\0A\00", align 1
@brightness_mutex = common dso_local global i32 0, align 4
@TP_EC_BACKLIGHT = common dso_local global i32 0, align 4
@TP_EC_BACKLIGHT_LVLMSK = common dso_local global i32 0, align 4
@TP_NVRAM_ADDR_BRIGHTNESS = common dso_local global i32 0, align 4
@TP_NVRAM_MASK_LEVEL_BRIGHTNESS = common dso_local global i32 0, align 4
@TP_NVRAM_POS_LEVEL_BRIGHTNESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"updated NVRAM backlight level to %u (0x%02x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"NVRAM backlight level already is %u (0x%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tpacpi_brightness_checkpoint_nvram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpacpi_brightness_checkpoint_nvram() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = load i64, i64* @brightness_mode, align 8
  %4 = load i64, i64* @TPACPI_BRGHT_MODE_ECNVRAM, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %60

7:                                                ; preds = %0
  %8 = load i32, i32* @TPACPI_DBG_BRGHT, align 4
  %9 = call i32 (i32, i8*, ...) @vdbg_printk(i32 %8, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %10 = call i64 @mutex_lock_killable(i32* @brightness_mutex)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %60

13:                                               ; preds = %7
  %14 = load i32, i32* @TP_EC_BACKLIGHT, align 4
  %15 = call i32 @acpi_ec_read(i32 %14, i32* %1)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %58

22:                                               ; preds = %13
  %23 = load i32, i32* @TP_EC_BACKLIGHT_LVLMSK, align 4
  %24 = load i32, i32* %1, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* @TP_NVRAM_ADDR_BRIGHTNESS, align 4
  %27 = call i32 @nvram_read_byte(i32 %26)
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @TP_NVRAM_MASK_LEVEL_BRIGHTNESS, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @TP_NVRAM_POS_LEVEL_BRIGHTNESS, align 4
  %33 = ashr i32 %31, %32
  %34 = icmp ne i32 %28, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %22
  %36 = load i32, i32* @TP_NVRAM_MASK_LEVEL_BRIGHTNESS, align 4
  %37 = load i32, i32* @TP_NVRAM_POS_LEVEL_BRIGHTNESS, align 4
  %38 = shl i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %2, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %2, align 4
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* %2, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @TP_NVRAM_ADDR_BRIGHTNESS, align 4
  %47 = call i32 @nvram_write_byte(i32 %45, i32 %46)
  %48 = load i32, i32* @TPACPI_DBG_BRGHT, align 4
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @dbg_printk(i32 %48, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %50)
  br label %57

52:                                               ; preds = %22
  %53 = load i32, i32* @TPACPI_DBG_BRGHT, align 4
  %54 = load i32, i32* %1, align 4
  %55 = load i32, i32* %2, align 4
  %56 = call i32 (i32, i8*, ...) @vdbg_printk(i32 %53, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %35
  br label %58

58:                                               ; preds = %57, %21
  %59 = call i32 @mutex_unlock(i32* @brightness_mutex)
  br label %60

60:                                               ; preds = %58, %12, %6
  ret void
}

declare dso_local i32 @vdbg_printk(i32, i8*, ...) #1

declare dso_local i64 @mutex_lock_killable(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @acpi_ec_read(i32, i32*) #1

declare dso_local i32 @nvram_read_byte(i32) #1

declare dso_local i32 @nvram_write_byte(i32, i32) #1

declare dso_local i32 @dbg_printk(i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
