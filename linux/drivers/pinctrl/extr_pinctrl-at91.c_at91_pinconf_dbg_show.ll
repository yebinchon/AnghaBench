; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91.c_at91_pinconf_dbg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91.c_at91_pinconf_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.seq_file = type { i32 }

@MULTI_DRIVE = common dso_local global i64 0, align 8
@PULL_UP = common dso_local global i64 0, align 8
@PULL_DOWN = common dso_local global i64 0, align 8
@DIS_SCHMIT = common dso_local global i64 0, align 8
@DEGLITCH = common dso_local global i64 0, align 8
@DRIVE_STRENGTH = common dso_local global i32 0, align 4
@LOW = common dso_local global i32 0, align 4
@DRIVE_STRENGTH_LOW = common dso_local global i32 0, align 4
@MED = common dso_local global i32 0, align 4
@DRIVE_STRENGTH_MED = common dso_local global i32 0, align 4
@HI = common dso_local global i32 0, align 4
@DRIVE_STRENGTH_HI = common dso_local global i32 0, align 4
@SLEWRATE = common dso_local global i64 0, align 8
@DEBOUNCE = common dso_local global i64 0, align 8
@DEBOUNCE_VAL_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pinctrl_dev*, %struct.seq_file*, i32)* @at91_pinconf_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_pinconf_dbg_show(%struct.pinctrl_dev* %0, %struct.seq_file* %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @at91_pinconf_get(%struct.pinctrl_dev* %10, i32 %11, i64* %7)
  %13 = load i64, i64* @MULTI_DRIVE, align 8
  %14 = call i32 @DBG_SHOW_FLAG(i64 %13)
  %15 = load i64, i64* @PULL_UP, align 8
  %16 = call i32 @DBG_SHOW_FLAG(i64 %15)
  %17 = load i64, i64* @PULL_DOWN, align 8
  %18 = call i32 @DBG_SHOW_FLAG(i64 %17)
  %19 = load i64, i64* @DIS_SCHMIT, align 8
  %20 = call i32 @DBG_SHOW_FLAG(i64 %19)
  %21 = load i64, i64* @DEGLITCH, align 8
  %22 = call i32 @DBG_SHOW_FLAG(i64 %21)
  %23 = load i32, i32* @DRIVE_STRENGTH, align 4
  %24 = load i32, i32* @LOW, align 4
  %25 = call i32 @DRIVE_STRENGTH_BIT_MSK(i32 %24)
  %26 = load i32, i32* @DRIVE_STRENGTH_LOW, align 4
  %27 = call i32 @DBG_SHOW_FLAG_MASKED(i32 %23, i32 %25, i32 %26)
  %28 = load i32, i32* @DRIVE_STRENGTH, align 4
  %29 = load i32, i32* @MED, align 4
  %30 = call i32 @DRIVE_STRENGTH_BIT_MSK(i32 %29)
  %31 = load i32, i32* @DRIVE_STRENGTH_MED, align 4
  %32 = call i32 @DBG_SHOW_FLAG_MASKED(i32 %28, i32 %30, i32 %31)
  %33 = load i32, i32* @DRIVE_STRENGTH, align 4
  %34 = load i32, i32* @HI, align 4
  %35 = call i32 @DRIVE_STRENGTH_BIT_MSK(i32 %34)
  %36 = load i32, i32* @DRIVE_STRENGTH_HI, align 4
  %37 = call i32 @DBG_SHOW_FLAG_MASKED(i32 %33, i32 %35, i32 %36)
  %38 = load i64, i64* @SLEWRATE, align 8
  %39 = call i32 @DBG_SHOW_FLAG(i64 %38)
  %40 = load i64, i64* @DEBOUNCE, align 8
  %41 = call i32 @DBG_SHOW_FLAG(i64 %40)
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @DEBOUNCE, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %3
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @DEBOUNCE_VAL_SHIFT, align 8
  %49 = lshr i64 %47, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %8, align 4
  %51 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @seq_printf(%struct.seq_file* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %46, %3
  ret void
}

declare dso_local i32 @at91_pinconf_get(%struct.pinctrl_dev*, i32, i64*) #1

declare dso_local i32 @DBG_SHOW_FLAG(i64) #1

declare dso_local i32 @DBG_SHOW_FLAG_MASKED(i32, i32, i32) #1

declare dso_local i32 @DRIVE_STRENGTH_BIT_MSK(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
