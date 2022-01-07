; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdrtas.c_wdrtas_register_devs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdrtas.c_wdrtas_register_devs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wdrtas_miscdev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"couldn't register watchdog misc device. Terminating watchdog code.\0A\00", align 1
@wdrtas_token_get_sensor_state = common dso_local global i64 0, align 8
@RTAS_UNKNOWN_SERVICE = common dso_local global i64 0, align 8
@wdrtas_tempdev = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [93 x i8] c"couldn't register watchdog temperature misc device. Continuing without temperature support.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @wdrtas_register_devs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdrtas_register_devs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @misc_register(i32* @wdrtas_miscdev)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = call i32 @pr_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* %1, align 4
  br label %22

9:                                                ; preds = %0
  %10 = load i64, i64* @wdrtas_token_get_sensor_state, align 8
  %11 = load i64, i64* @RTAS_UNKNOWN_SERVICE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = call i32 @misc_register(i32* @wdrtas_tempdev)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = call i32 @pr_warn(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i64, i64* @RTAS_UNKNOWN_SERVICE, align 8
  store i64 %19, i64* @wdrtas_token_get_sensor_state, align 8
  br label %20

20:                                               ; preds = %17, %13
  br label %21

21:                                               ; preds = %20, %9
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %21, %6
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local i32 @misc_register(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
