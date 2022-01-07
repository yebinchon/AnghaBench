; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_ideapad-laptop.c_ideapad_acpi_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_ideapad-laptop.c_ideapad_acpi_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ideapad_private = type { i32 }

@VPCCMD_R_VPC1 = common dso_local global i32 0, align 4
@VPCCMD_R_VPC2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Unknown event: %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @ideapad_acpi_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ideapad_acpi_notify(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ideapad_private*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.ideapad_private*
  store %struct.ideapad_private* %12, %struct.ideapad_private** %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @VPCCMD_R_VPC1, align 4
  %15 = call i64 @read_ec_data(i32 %13, i32 %14, i64* %8)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %69

18:                                               ; preds = %3
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @VPCCMD_R_VPC2, align 4
  %21 = call i64 @read_ec_data(i32 %19, i32 %20, i64* %9)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %69

24:                                               ; preds = %18
  %25 = load i64, i64* %9, align 8
  %26 = shl i64 %25, 8
  %27 = load i64, i64* %8, align 8
  %28 = or i64 %26, %27
  store i64 %28, i64* %8, align 8
  store i64 0, i64* %10, align 8
  br label %29

29:                                               ; preds = %66, %24
  %30 = load i64, i64* %10, align 8
  %31 = icmp ult i64 %30, 16
  br i1 %31, label %32, label %69

32:                                               ; preds = %29
  %33 = load i64, i64* %10, align 8
  %34 = call i64 @test_bit(i64 %33, i64* %8)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8
  switch i64 %37, label %61 [
    i64 9, label %38
    i64 13, label %41
    i64 11, label %41
    i64 8, label %41
    i64 7, label %41
    i64 6, label %41
    i64 5, label %45
    i64 4, label %48
    i64 3, label %51
    i64 2, label %54
    i64 0, label %57
    i64 1, label %60
  ]

38:                                               ; preds = %36
  %39 = load %struct.ideapad_private*, %struct.ideapad_private** %7, align 8
  %40 = call i32 @ideapad_sync_rfk_state(%struct.ideapad_private* %39)
  br label %64

41:                                               ; preds = %36, %36, %36, %36, %36
  %42 = load %struct.ideapad_private*, %struct.ideapad_private** %7, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @ideapad_input_report(%struct.ideapad_private* %42, i64 %43)
  br label %64

45:                                               ; preds = %36
  %46 = load %struct.ideapad_private*, %struct.ideapad_private** %7, align 8
  %47 = call i32 @ideapad_sync_touchpad_state(%struct.ideapad_private* %46)
  br label %64

48:                                               ; preds = %36
  %49 = load %struct.ideapad_private*, %struct.ideapad_private** %7, align 8
  %50 = call i32 @ideapad_backlight_notify_brightness(%struct.ideapad_private* %49)
  br label %64

51:                                               ; preds = %36
  %52 = load %struct.ideapad_private*, %struct.ideapad_private** %7, align 8
  %53 = call i32 @ideapad_input_novokey(%struct.ideapad_private* %52)
  br label %64

54:                                               ; preds = %36
  %55 = load %struct.ideapad_private*, %struct.ideapad_private** %7, align 8
  %56 = call i32 @ideapad_backlight_notify_power(%struct.ideapad_private* %55)
  br label %64

57:                                               ; preds = %36
  %58 = load %struct.ideapad_private*, %struct.ideapad_private** %7, align 8
  %59 = call i32 @ideapad_check_special_buttons(%struct.ideapad_private* %58)
  br label %64

60:                                               ; preds = %36
  br label %64

61:                                               ; preds = %36
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %62)
  br label %64

64:                                               ; preds = %61, %60, %57, %54, %51, %48, %45, %41, %38
  br label %65

65:                                               ; preds = %64, %32
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %10, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %10, align 8
  br label %29

69:                                               ; preds = %17, %23, %29
  ret void
}

declare dso_local i64 @read_ec_data(i32, i32, i64*) #1

declare dso_local i64 @test_bit(i64, i64*) #1

declare dso_local i32 @ideapad_sync_rfk_state(%struct.ideapad_private*) #1

declare dso_local i32 @ideapad_input_report(%struct.ideapad_private*, i64) #1

declare dso_local i32 @ideapad_sync_touchpad_state(%struct.ideapad_private*) #1

declare dso_local i32 @ideapad_backlight_notify_brightness(%struct.ideapad_private*) #1

declare dso_local i32 @ideapad_input_novokey(%struct.ideapad_private*) #1

declare dso_local i32 @ideapad_backlight_notify_power(%struct.ideapad_private*) #1

declare dso_local i32 @ideapad_check_special_buttons(%struct.ideapad_private*) #1

declare dso_local i32 @pr_info(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
