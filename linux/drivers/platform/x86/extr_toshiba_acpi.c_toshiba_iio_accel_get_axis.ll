; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_toshiba_iio_accel_get_axis.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_toshiba_iio_accel_get_axis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@toshiba_acpi = common dso_local global i32 0, align 4
@HCI_ACCEL_DIRECTION_MASK = common dso_local global i32 0, align 4
@HCI_ACCEL_MASK = common dso_local global i32 0, align 4
@HCI_MISC_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @toshiba_iio_accel_get_axis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toshiba_iio_accel_get_axis(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @toshiba_acpi, align 4
  %8 = call i32 @toshiba_accelerometer_get(i32 %7, i32* %4, i32* %5)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %71

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  switch i32 %14, label %69 [
    i32 130, label %15
    i32 129, label %31
    i32 128, label %53
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @HCI_ACCEL_DIRECTION_MASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @HCI_ACCEL_MASK, align 4
  %23 = and i32 %21, %22
  %24 = sub nsw i32 0, %23
  br label %29

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @HCI_ACCEL_MASK, align 4
  %28 = and i32 %26, %27
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi i32 [ %24, %20 ], [ %28, %25 ]
  store i32 %30, i32* %2, align 4
  br label %71

31:                                               ; preds = %13
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @HCI_MISC_SHIFT, align 4
  %34 = ashr i32 %32, %33
  %35 = load i32, i32* @HCI_ACCEL_DIRECTION_MASK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @HCI_MISC_SHIFT, align 4
  %41 = ashr i32 %39, %40
  %42 = load i32, i32* @HCI_ACCEL_MASK, align 4
  %43 = and i32 %41, %42
  %44 = sub nsw i32 0, %43
  br label %51

45:                                               ; preds = %31
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @HCI_MISC_SHIFT, align 4
  %48 = ashr i32 %46, %47
  %49 = load i32, i32* @HCI_ACCEL_MASK, align 4
  %50 = and i32 %48, %49
  br label %51

51:                                               ; preds = %45, %38
  %52 = phi i32 [ %44, %38 ], [ %50, %45 ]
  store i32 %52, i32* %2, align 4
  br label %71

53:                                               ; preds = %13
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @HCI_ACCEL_DIRECTION_MASK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @HCI_ACCEL_MASK, align 4
  %61 = and i32 %59, %60
  %62 = sub nsw i32 0, %61
  br label %67

63:                                               ; preds = %53
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @HCI_ACCEL_MASK, align 4
  %66 = and i32 %64, %65
  br label %67

67:                                               ; preds = %63, %58
  %68 = phi i32 [ %62, %58 ], [ %66, %63 ]
  store i32 %68, i32* %2, align 4
  br label %71

69:                                               ; preds = %13
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %67, %51, %29, %11
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @toshiba_accelerometer_get(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
