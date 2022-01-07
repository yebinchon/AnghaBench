; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_mute_led_on_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_mute_led_on_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tp_led_table = type { i32, i32, i32, i32 }

@hkey_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Thinkpad ACPI has no %s interface.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"dd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tp_led_table*, i32)* @mute_led_on_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mute_led_on_off(%struct.tp_led_table* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tp_led_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tp_led_table* %0, %struct.tp_led_table** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @hkey_handle, align 4
  %9 = load %struct.tp_led_table*, %struct.tp_led_table** %4, align 8
  %10 = getelementptr inbounds %struct.tp_led_table, %struct.tp_led_table* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @acpi_get_handle(i32 %8, i32 %11, i32* %6)
  %13 = call i64 @ACPI_FAILURE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.tp_led_table*, %struct.tp_led_table** %4, align 8
  %17 = getelementptr inbounds %struct.tp_led_table, %struct.tp_led_table* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %49

22:                                               ; preds = %2
  %23 = load i32, i32* @hkey_handle, align 4
  %24 = load %struct.tp_led_table*, %struct.tp_led_table** %4, align 8
  %25 = getelementptr inbounds %struct.tp_led_table, %struct.tp_led_table* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.tp_led_table*, %struct.tp_led_table** %4, align 8
  %31 = getelementptr inbounds %struct.tp_led_table, %struct.tp_led_table* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  br label %37

33:                                               ; preds = %22
  %34 = load %struct.tp_led_table*, %struct.tp_led_table** %4, align 8
  %35 = getelementptr inbounds %struct.tp_led_table, %struct.tp_led_table* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i32 [ %32, %29 ], [ %36, %33 ]
  %39 = call i32 @acpi_evalf(i32 %23, i32* %7, i32 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %49

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.tp_led_table*, %struct.tp_led_table** %4, align 8
  %47 = getelementptr inbounds %struct.tp_led_table, %struct.tp_led_table* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %44, %41, %15
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_get_handle(i32, i32, i32*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @acpi_evalf(i32, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
