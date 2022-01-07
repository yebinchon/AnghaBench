; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_hotkey_user_mask_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_hotkey_user_mask_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@tp_warned = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [77 x i8] c"setting the hotkey mask to 0x%08x is likely not the best way to go about it\0A\00", align 1
@.str.1 = private unnamed_addr constant [96 x i8] c"please consider using the driver defaults, and refer to up-to-date thinkpad-acpi documentation\0A\00", align 1
@hotkey_driver_mask = common dso_local global i32 0, align 4
@hotkey_source_mask = common dso_local global i32 0, align 4
@hotkey_acpi_mask = common dso_local global i32 0, align 4
@hotkey_user_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hotkey_user_mask_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hotkey_user_mask_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tp_warned, i32 0, i32 0), align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp eq i32 %7, 65535
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = icmp eq i32 %10, 16777215
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %12, %9, %6
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tp_warned, i32 0, i32 0), align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %15, %12, %1
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @hotkey_driver_mask, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @hotkey_source_mask, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = call i32 @hotkey_mask_set(i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @hotkey_acpi_mask, align 4
  %29 = load i32, i32* @hotkey_source_mask, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  store i32 %31, i32* @hotkey_user_mask, align 4
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @pr_notice(i8*, ...) #1

declare dso_local i32 @hotkey_mask_set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
