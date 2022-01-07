; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_fan2_get_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_fan2_get_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fan_status_access_mode = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@fan_rpm_offset = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @fan2_get_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan2_get_speed(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32, i32* @fan_status_access_mode, align 4
  switch i32 %7, label %48 [
    i32 128, label %8
  ]

8:                                                ; preds = %1
  %9 = call i32 (...) @fan_select_fan2()
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @unlikely(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %52

18:                                               ; preds = %8
  %19 = load i32, i32* @fan_rpm_offset, align 4
  %20 = call i32 @acpi_ec_read(i32 %19, i32* %5)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32, i32* @fan_rpm_offset, align 4
  %24 = add nsw i32 %23, 1
  %25 = call i32 @acpi_ec_read(i32 %24, i32* %4)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %22, %18
  %29 = phi i1 [ true, %18 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %6, align 4
  %31 = call i32 (...) @fan_select_fan1()
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %52

37:                                               ; preds = %28
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @likely(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = shl i32 %42, 8
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %43, %44
  %46 = load i32*, i32** %3, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %41, %37
  br label %51

48:                                               ; preds = %1
  %49 = load i32, i32* @ENXIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %52

51:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %48, %34, %15
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @fan_select_fan2(...) #1

declare dso_local i32 @acpi_ec_read(i32, i32*) #1

declare dso_local i32 @fan_select_fan1(...) #1

declare dso_local i32 @likely(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
