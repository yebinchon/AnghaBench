; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_fan_get_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_fan_get_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fan_status_access_mode = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@fan_rpm_offset = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @fan_get_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_get_speed(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @fan_status_access_mode, align 4
  switch i32 %6, label %46 [
    i32 128, label %7
  ]

7:                                                ; preds = %1
  %8 = call i32 (...) @fan_select_fan1()
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @unlikely(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %50

17:                                               ; preds = %7
  %18 = load i32, i32* @fan_rpm_offset, align 4
  %19 = call i32 @acpi_ec_read(i32 %18, i32* %5)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* @fan_rpm_offset, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i32 @acpi_ec_read(i32 %23, i32* %4)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %21, %17
  %28 = phi i1 [ true, %17 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @unlikely(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %50

35:                                               ; preds = %27
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @likely(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = shl i32 %40, 8
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %41, %42
  %44 = load i32*, i32** %3, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %39, %35
  br label %49

46:                                               ; preds = %1
  %47 = load i32, i32* @ENXIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %46, %32, %14
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @fan_select_fan1(...) #1

declare dso_local i32 @acpi_ec_read(i32, i32*) #1

declare dso_local i32 @likely(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
