; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/reset/extr_gemini-poweroff.c_gemini_poweroff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/reset/extr_gemini-poweroff.c_gemini_poweroff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gemini_powercon = type { i64, i32 }

@gpw_poweroff = common dso_local global %struct.gemini_powercon* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"Gemini power off\0A\00", align 1
@GEMINI_PWC_CTRLREG = common dso_local global i64 0, align 8
@GEMINI_CTRL_ENABLE = common dso_local global i32 0, align 4
@GEMINI_CTRL_IRQ_CLR = common dso_local global i32 0, align 4
@GEMINI_CTRL_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gemini_poweroff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gemini_poweroff() #0 {
  %1 = alloca %struct.gemini_powercon*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.gemini_powercon*, %struct.gemini_powercon** @gpw_poweroff, align 8
  store %struct.gemini_powercon* %3, %struct.gemini_powercon** %1, align 8
  %4 = load %struct.gemini_powercon*, %struct.gemini_powercon** %1, align 8
  %5 = getelementptr inbounds %struct.gemini_powercon, %struct.gemini_powercon* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @dev_crit(i32 %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.gemini_powercon*, %struct.gemini_powercon** %1, align 8
  %9 = getelementptr inbounds %struct.gemini_powercon, %struct.gemini_powercon* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @GEMINI_PWC_CTRLREG, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* @GEMINI_CTRL_ENABLE, align 4
  %15 = load i32, i32* @GEMINI_CTRL_IRQ_CLR, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %2, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load %struct.gemini_powercon*, %struct.gemini_powercon** %1, align 8
  %21 = getelementptr inbounds %struct.gemini_powercon, %struct.gemini_powercon* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @GEMINI_PWC_CTRLREG, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  %26 = load i32, i32* @GEMINI_CTRL_ENABLE, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %2, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* @GEMINI_CTRL_SHUTDOWN, align 4
  %31 = load i32, i32* %2, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  %34 = load %struct.gemini_powercon*, %struct.gemini_powercon** %1, align 8
  %35 = getelementptr inbounds %struct.gemini_powercon, %struct.gemini_powercon* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @GEMINI_PWC_CTRLREG, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
  ret void
}

declare dso_local i32 @dev_crit(i32, i8*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
