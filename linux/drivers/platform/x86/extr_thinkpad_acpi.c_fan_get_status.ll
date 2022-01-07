; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_fan_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_fan_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fan_status_access_mode = common dso_local global i32 0, align 4
@gfan_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"d\00", align 1
@EIO = common dso_local global i32 0, align 4
@fan_status_offset = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @fan_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_get_status(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @fan_status_access_mode, align 4
  switch i32 %6, label %48 [
    i32 129, label %7
    i32 128, label %27
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @gfan_handle, align 4
  %9 = call i32 @acpi_evalf(i32 %8, i32* %5, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @unlikely(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %7
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %52

18:                                               ; preds = %7
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @likely(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 7
  %25 = load i32*, i32** %3, align 8
  store i32 %24, i32* %25, align 4
  br label %26

26:                                               ; preds = %22, %18
  br label %51

27:                                               ; preds = %1
  %28 = load i32, i32* @fan_status_offset, align 4
  %29 = call i32 @acpi_ec_read(i32 %28, i32* %4)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @unlikely(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %52

38:                                               ; preds = %27
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @likely(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = load i32*, i32** %3, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @fan_quirk1_handle(i32* %45)
  br label %47

47:                                               ; preds = %42, %38
  br label %51

48:                                               ; preds = %1
  %49 = load i32, i32* @ENXIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %52

51:                                               ; preds = %47, %26
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %48, %35, %15
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @acpi_evalf(i32, i32*, i32*, i8*) #1

declare dso_local i32 @likely(i32*) #1

declare dso_local i32 @acpi_ec_read(i32, i32*) #1

declare dso_local i32 @fan_quirk1_handle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
