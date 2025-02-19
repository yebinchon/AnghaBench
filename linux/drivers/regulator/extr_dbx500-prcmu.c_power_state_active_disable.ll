; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_dbx500-prcmu.c_power_state_active_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_dbx500-prcmu.c_power_state_active_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@power_state_active_lock = common dso_local global i32 0, align 4
@power_state_active_cnt = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"power state: unbalanced enable/disable calls\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @power_state_active_disable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %3 = load i64, i64* %2, align 8
  %4 = call i32 @spin_lock_irqsave(i32* @power_state_active_lock, i64 %3)
  %5 = load i64, i64* @power_state_active_cnt, align 8
  %6 = icmp sle i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %1, align 4
  br label %14

11:                                               ; preds = %0
  %12 = load i64, i64* @power_state_active_cnt, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* @power_state_active_cnt, align 8
  br label %14

14:                                               ; preds = %11, %7
  %15 = load i64, i64* %2, align 8
  %16 = call i32 @spin_unlock_irqrestore(i32* @power_state_active_lock, i64 %15)
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
