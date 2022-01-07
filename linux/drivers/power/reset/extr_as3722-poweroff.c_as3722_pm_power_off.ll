; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/reset/extr_as3722-poweroff.c_as3722_pm_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/reset/extr_as3722-poweroff.c_as3722_pm_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@as3722_pm_poweroff = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"AS3722 poweroff is not initialised\0A\00", align 1
@AS3722_RESET_CONTROL_REG = common dso_local global i32 0, align 4
@AS3722_POWER_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"RESET_CONTROL_REG update failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @as3722_pm_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @as3722_pm_power_off() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @as3722_pm_poweroff, align 8
  %3 = icmp ne %struct.TYPE_2__* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %22

6:                                                ; preds = %0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @as3722_pm_poweroff, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @AS3722_RESET_CONTROL_REG, align 4
  %11 = load i32, i32* @AS3722_POWER_OFF, align 4
  %12 = load i32, i32* @AS3722_POWER_OFF, align 4
  %13 = call i32 @as3722_update_bits(i32 %9, i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %6
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @as3722_pm_poweroff, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %4, %16, %6
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @as3722_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
