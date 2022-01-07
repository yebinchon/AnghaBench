; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_charger.c_pm860x_init_charger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_charger.c_pm860x_init_charger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm860x_charger_info = type { i32, i32, i32, i32, i32 }

@PM8607_STATUS_2 = common dso_local global i32 0, align 4
@FSM_INIT = common dso_local global i32 0, align 4
@STATUS2_CHG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm860x_charger_info*)* @pm860x_init_charger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm860x_init_charger(%struct.pm860x_charger_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm860x_charger_info*, align 8
  %4 = alloca i32, align 4
  store %struct.pm860x_charger_info* %0, %struct.pm860x_charger_info** %3, align 8
  %5 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %3, align 8
  %6 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @PM8607_STATUS_2, align 4
  %9 = call i32 @pm860x_reg_read(i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %41

14:                                               ; preds = %1
  %15 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %3, align 8
  %16 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %15, i32 0, i32 2
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i32, i32* @FSM_INIT, align 4
  %19 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %3, align 8
  %20 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @STATUS2_CHG, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %14
  %26 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %3, align 8
  %27 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %3, align 8
  %29 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  br label %35

30:                                               ; preds = %14
  %31 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %3, align 8
  %32 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  %33 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %3, align 8
  %34 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %3, align 8
  %37 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %36, i32 0, i32 2
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %3, align 8
  %40 = call i32 @set_charging_fsm(%struct.pm860x_charger_info* %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %35, %12
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @pm860x_reg_read(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_charging_fsm(%struct.pm860x_charger_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
