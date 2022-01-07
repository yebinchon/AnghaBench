; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_usb_calc_bus_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_usb_calc_bus_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BW_HUB_LS_SETUP = common dso_local global i32 0, align 4
@BW_HOST_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: bogus device speed!\0A\00", align 1
@usbcore_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @usb_calc_bus_time(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %89 [
    i32 128, label %12
    i32 130, label %47
    i32 129, label %78
  ]

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %12
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @BitTime(i32 %16)
  %18 = mul nsw i64 10, %17
  %19 = add nsw i64 31, %18
  %20 = mul nsw i64 67667, %19
  %21 = sdiv i64 %20, 1000
  store i64 %21, i64* %10, align 8
  %22 = load i32, i32* @BW_HUB_LS_SETUP, align 4
  %23 = mul nsw i32 2, %22
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 64060, %24
  %26 = load i32, i32* @BW_HOST_DELAY, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = load i64, i64* %10, align 8
  %30 = add i64 %28, %29
  store i64 %30, i64* %5, align 8
  br label %92

31:                                               ; preds = %12
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @BitTime(i32 %32)
  %34 = mul nsw i64 10, %33
  %35 = add nsw i64 31, %34
  %36 = mul nsw i64 66700, %35
  %37 = sdiv i64 %36, 1000
  store i64 %37, i64* %10, align 8
  %38 = load i32, i32* @BW_HUB_LS_SETUP, align 4
  %39 = mul nsw i32 2, %38
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 64107, %40
  %42 = load i32, i32* @BW_HOST_DELAY, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %44, %45
  store i64 %46, i64* %5, align 8
  br label %92

47:                                               ; preds = %4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = call i64 @BitTime(i32 %51)
  %53 = mul nsw i64 10, %52
  %54 = add nsw i64 31, %53
  %55 = mul nsw i64 8354, %54
  %56 = sdiv i64 %55, 1000
  store i64 %56, i64* %10, align 8
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i64 7268, i64 6265
  %61 = load i32, i32* @BW_HOST_DELAY, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %63, %64
  store i64 %65, i64* %5, align 8
  br label %92

66:                                               ; preds = %47
  %67 = load i32, i32* %9, align 4
  %68 = call i64 @BitTime(i32 %67)
  %69 = mul nsw i64 10, %68
  %70 = add nsw i64 31, %69
  %71 = mul nsw i64 8354, %70
  %72 = sdiv i64 %71, 1000
  store i64 %72, i64* %10, align 8
  %73 = load i32, i32* @BW_HOST_DELAY, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 9107, %74
  %76 = load i64, i64* %10, align 8
  %77 = add i64 %75, %76
  store i64 %77, i64* %5, align 8
  br label %92

78:                                               ; preds = %4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = call i64 @HS_NSECS_ISO(i32 %82)
  store i64 %83, i64* %10, align 8
  br label %87

84:                                               ; preds = %78
  %85 = load i32, i32* %9, align 4
  %86 = call i64 @HS_NSECS(i32 %85)
  store i64 %86, i64* %10, align 8
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i64, i64* %10, align 8
  store i64 %88, i64* %5, align 8
  br label %92

89:                                               ; preds = %4
  %90 = load i32, i32* @usbcore_name, align 4
  %91 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %90)
  store i64 -1, i64* %5, align 8
  br label %92

92:                                               ; preds = %89, %87, %66, %50, %31, %15
  %93 = load i64, i64* %5, align 8
  ret i64 %93
}

declare dso_local i64 @BitTime(i32) #1

declare dso_local i64 @HS_NSECS_ISO(i32) #1

declare dso_local i64 @HS_NSECS(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
