; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-opal.c_opal_set_rtc_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-opal.c_opal_set_rtc_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }

@OPAL_BUSY = common dso_local global i64 0, align 8
@OPAL_BUSY_EVENT = common dso_local global i64 0, align 8
@OPAL_BUSY_DELAY_MS = common dso_local global i32 0, align 4
@OPAL_HARDWARE = common dso_local global i64 0, align 8
@OPAL_INTERNAL_ERROR = common dso_local global i64 0, align 8
@OPAL_SUCCESS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @opal_set_rtc_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_set_rtc_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %9 = load i64, i64* @OPAL_BUSY, align 8
  store i64 %9, i64* %5, align 8
  store i32 10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %11 = call i32 @tm_to_opal(%struct.rtc_time* %10, i32* %7, i32* %8)
  br label %12

12:                                               ; preds = %58, %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @OPAL_BUSY, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @OPAL_BUSY_EVENT, align 8
  %19 = icmp eq i64 %17, %18
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i1 [ true, %12 ], [ %19, %16 ]
  br i1 %21, label %22, label %59

22:                                               ; preds = %20
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @opal_rtc_write(i32 %23, i32 %24)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @OPAL_BUSY_EVENT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i32, i32* @OPAL_BUSY_DELAY_MS, align 4
  %31 = call i32 @msleep(i32 %30)
  %32 = call i32 @opal_poll_events(i32* null)
  br label %58

33:                                               ; preds = %22
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @OPAL_BUSY, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @OPAL_BUSY_DELAY_MS, align 4
  %39 = call i32 @msleep(i32 %38)
  br label %57

40:                                               ; preds = %33
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @OPAL_HARDWARE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @OPAL_INTERNAL_ERROR, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44, %40
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %6, align 4
  %51 = icmp ne i32 %49, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = call i32 @msleep(i32 10)
  %54 = load i64, i64* @OPAL_BUSY, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %52, %48
  br label %56

56:                                               ; preds = %55, %44
  br label %57

57:                                               ; preds = %56, %37
  br label %58

58:                                               ; preds = %57, %29
  br label %12

59:                                               ; preds = %20
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* @OPAL_SUCCESS, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  br label %67

67:                                               ; preds = %64, %63
  %68 = phi i32 [ 0, %63 ], [ %66, %64 ]
  ret i32 %68
}

declare dso_local i32 @tm_to_opal(%struct.rtc_time*, i32*, i32*) #1

declare dso_local i64 @opal_rtc_write(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @opal_poll_events(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
