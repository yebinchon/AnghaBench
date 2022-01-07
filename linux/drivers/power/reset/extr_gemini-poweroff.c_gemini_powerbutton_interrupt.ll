; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/reset/extr_gemini-poweroff.c_gemini_powerbutton_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/reset/extr_gemini-poweroff.c_gemini_powerbutton_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gemini_powercon = type { i32, i64 }

@GEMINI_PWC_CTRLREG = common dso_local global i64 0, align 8
@GEMINI_CTRL_IRQ_CLR = common dso_local global i32 0, align 4
@GEMINI_PWC_STATREG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"infrared poweroff - ignored\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"RTC poweroff\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"poweroff button pressed\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"other power management IRQ\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gemini_powerbutton_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gemini_powerbutton_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gemini_powercon*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.gemini_powercon*
  store %struct.gemini_powercon* %8, %struct.gemini_powercon** %5, align 8
  %9 = load %struct.gemini_powercon*, %struct.gemini_powercon** %5, align 8
  %10 = getelementptr inbounds %struct.gemini_powercon, %struct.gemini_powercon* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @GEMINI_PWC_CTRLREG, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @GEMINI_CTRL_IRQ_CLR, align 4
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.gemini_powercon*, %struct.gemini_powercon** %5, align 8
  %20 = getelementptr inbounds %struct.gemini_powercon, %struct.gemini_powercon* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @GEMINI_PWC_CTRLREG, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 %18, i64 %23)
  %25 = load %struct.gemini_powercon*, %struct.gemini_powercon** %5, align 8
  %26 = getelementptr inbounds %struct.gemini_powercon, %struct.gemini_powercon* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @GEMINI_PWC_STATREG, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @readl(i64 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 112
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  switch i32 %33, label %51 [
    i32 130, label %34
    i32 128, label %39
    i32 129, label %45
  ]

34:                                               ; preds = %2
  %35 = load %struct.gemini_powercon*, %struct.gemini_powercon** %5, align 8
  %36 = getelementptr inbounds %struct.gemini_powercon, %struct.gemini_powercon* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_info(i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %56

39:                                               ; preds = %2
  %40 = load %struct.gemini_powercon*, %struct.gemini_powercon** %5, align 8
  %41 = getelementptr inbounds %struct.gemini_powercon, %struct.gemini_powercon* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_info(i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %44 = call i32 @orderly_poweroff(i32 1)
  br label %56

45:                                               ; preds = %2
  %46 = load %struct.gemini_powercon*, %struct.gemini_powercon** %5, align 8
  %47 = getelementptr inbounds %struct.gemini_powercon, %struct.gemini_powercon* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_info(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %50 = call i32 @orderly_poweroff(i32 1)
  br label %56

51:                                               ; preds = %2
  %52 = load %struct.gemini_powercon*, %struct.gemini_powercon** %5, align 8
  %53 = getelementptr inbounds %struct.gemini_powercon, %struct.gemini_powercon* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dev_info(i32 %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %51, %45, %39, %34
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %57
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @orderly_poweroff(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
