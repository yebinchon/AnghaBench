; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_simple_check_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_simple_check_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtest_dev = type { i32 }
%struct.urb = type { i32, i32, i32, i64* }

@pattern = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"buf[%d] = %d (not %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtest_dev*, %struct.urb*)* @simple_check_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_check_buf(%struct.usbtest_dev* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbtest_dev*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usbtest_dev* %0, %struct.usbtest_dev** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %12 = load %struct.urb*, %struct.urb** %5, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 3
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %8, align 8
  %15 = load %struct.urb*, %struct.urb** %5, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load %struct.urb*, %struct.urb** %5, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.urb*, %struct.urb** %5, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @get_maxpacket(i32 %20, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %26 = load %struct.urb*, %struct.urb** %5, align 8
  %27 = call i32 @check_guard_bytes(%struct.usbtest_dev* %25, %struct.urb* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %3, align 4
  br label %74

32:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %68, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %73

37:                                               ; preds = %33
  %38 = load i32, i32* @pattern, align 4
  switch i32 %38, label %46 [
    i32 0, label %39
    i32 1, label %40
  ]

39:                                               ; preds = %37
  store i64 0, i64* %7, align 8
  br label %53

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %10, align 4
  %43 = urem i32 %41, %42
  %44 = urem i32 %43, 63
  %45 = zext i32 %44 to i64
  store i64 %45, i64* %7, align 8
  br label %53

46:                                               ; preds = %37
  %47 = load i64*, i64** %8, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %7, align 8
  br label %53

53:                                               ; preds = %46, %40, %39
  %54 = load i64*, i64** %8, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %68

59:                                               ; preds = %53
  %60 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i64*, i64** %8, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @ERROR(%struct.usbtest_dev* %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %61, i64 %63, i64 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %74

68:                                               ; preds = %58
  %69 = load i32, i32* %6, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %6, align 4
  %71 = load i64*, i64** %8, align 8
  %72 = getelementptr inbounds i64, i64* %71, i32 1
  store i64* %72, i64** %8, align 8
  br label %33

73:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %59, %30
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @get_maxpacket(i32, i32) #1

declare dso_local i32 @check_guard_bytes(%struct.usbtest_dev*, %struct.urb*) #1

declare dso_local i32 @ERROR(%struct.usbtest_dev*, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
