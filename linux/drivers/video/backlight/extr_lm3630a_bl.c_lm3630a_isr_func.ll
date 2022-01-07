; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3630a_bl.c_lm3630a_isr_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3630a_bl.c_lm3630a_isr_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3630a_chip = type { i32, i32, i32 }

@INT_DEBOUNCE_MSEC = common dso_local global i32 0, align 4
@REG_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"i2c failed to access register\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lm3630a_isr_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3630a_isr_func(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lm3630a_chip*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.lm3630a_chip*
  store %struct.lm3630a_chip* %10, %struct.lm3630a_chip** %7, align 8
  %11 = load i32, i32* @INT_DEBOUNCE_MSEC, align 4
  %12 = call i64 @msecs_to_jiffies(i32 %11)
  store i64 %12, i64* %8, align 8
  %13 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %7, align 8
  %14 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %7, align 8
  %17 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %16, i32 0, i32 1
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @queue_delayed_work(i32 %15, i32* %17, i64 %18)
  %20 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %7, align 8
  %21 = load i32, i32* @REG_CTRL, align 4
  %22 = call i32 @lm3630a_update(%struct.lm3630a_chip* %20, i32 %21, i32 128, i32 0)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %7, align 8
  %27 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @IRQ_NONE, align 4
  store i32 %30, i32* %3, align 4
  br label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %25
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i64) #1

declare dso_local i32 @lm3630a_update(%struct.lm3630a_chip*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
