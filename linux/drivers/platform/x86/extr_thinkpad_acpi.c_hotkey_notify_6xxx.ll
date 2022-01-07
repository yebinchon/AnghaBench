; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_hotkey_notify_6xxx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_hotkey_notify_6xxx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"EC reports: Thermal Table has changed\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"EC reports: Thermal Control Command set completed (DYTC)\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"EC reports: Thermal Transformation changed (GMTS)\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"THERMAL ALARM: battery is too hot!\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"THERMAL EMERGENCY: battery is extremely hot!\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"THERMAL ALARM: a sensor reports something is too hot!\0A\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"THERMAL EMERGENCY: a sensor reports something is extremely hot!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @hotkey_notify_6xxx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hotkey_notify_6xxx(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %6, align 8
  store i32 1, i32* %8, align 4
  %9 = load i32*, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %33 [
    i32 129, label %11
    i32 130, label %13
    i32 128, label %15
    i32 140, label %17
    i32 139, label %19
    i32 138, label %21
    i32 137, label %23
    i32 141, label %25
    i32 134, label %25
    i32 136, label %25
    i32 135, label %25
    i32 131, label %28
    i32 133, label %32
    i32 132, label %32
  ]

11:                                               ; preds = %3
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %36

13:                                               ; preds = %3
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %36

15:                                               ; preds = %3
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %36

17:                                               ; preds = %3
  %18 = call i32 @pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %34

19:                                               ; preds = %3
  %20 = call i32 @pr_alert(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %34

21:                                               ; preds = %3
  %22 = call i32 @pr_crit(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  br label %34

23:                                               ; preds = %3
  %24 = call i32 @pr_alert(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0))
  br label %34

25:                                               ; preds = %3, %3, %3, %3
  %26 = load i32*, i32** %6, align 8
  store i32 0, i32* %26, align 4
  %27 = load i32*, i32** %7, align 8
  store i32 1, i32* %27, align 4
  store i32 1, i32* %4, align 4
  br label %36

28:                                               ; preds = %3
  %29 = call i32 (...) @tpacpi_input_send_tabletsw()
  %30 = call i32 (...) @hotkey_tablet_mode_notify_change()
  %31 = load i32*, i32** %6, align 8
  store i32 0, i32* %31, align 4
  store i32 1, i32* %4, align 4
  br label %36

32:                                               ; preds = %3, %3
  store i32 1, i32* %4, align 4
  br label %36

33:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

34:                                               ; preds = %23, %21, %19, %17
  %35 = call i32 (...) @thermal_dump_all_sensors()
  store i32 1, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %33, %32, %28, %25, %15, %13, %11
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @pr_crit(i8*) #1

declare dso_local i32 @pr_alert(i8*) #1

declare dso_local i32 @tpacpi_input_send_tabletsw(...) #1

declare dso_local i32 @hotkey_tablet_mode_notify_change(...) #1

declare dso_local i32 @thermal_dump_all_sensors(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
