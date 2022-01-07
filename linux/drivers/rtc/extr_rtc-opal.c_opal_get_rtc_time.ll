; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-opal.c_opal_get_rtc_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-opal.c_opal_get_rtc_time.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @opal_get_rtc_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_get_rtc_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %12 = load i64, i64* @OPAL_BUSY, align 8
  store i64 %12, i64* %6, align 8
  store i32 10, i32* %7, align 4
  br label %13

13:                                               ; preds = %57, %2
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @OPAL_BUSY, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @OPAL_BUSY_EVENT, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i1 [ true, %13 ], [ %20, %17 ]
  br i1 %22, label %23, label %58

23:                                               ; preds = %21
  %24 = call i64 @opal_rtc_read(i32* %10, i32* %11)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @OPAL_BUSY_EVENT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @OPAL_BUSY_DELAY_MS, align 4
  %30 = call i32 @msleep(i32 %29)
  %31 = call i32 @opal_poll_events(i32* null)
  br label %57

32:                                               ; preds = %23
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @OPAL_BUSY, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @OPAL_BUSY_DELAY_MS, align 4
  %38 = call i32 @msleep(i32 %37)
  br label %56

39:                                               ; preds = %32
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @OPAL_HARDWARE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @OPAL_INTERNAL_ERROR, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43, %39
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %7, align 4
  %50 = icmp ne i32 %48, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = call i32 @msleep(i32 10)
  %53 = load i64, i64* @OPAL_BUSY, align 8
  store i64 %53, i64* %6, align 8
  br label %54

54:                                               ; preds = %51, %47
  br label %55

55:                                               ; preds = %54, %43
  br label %56

56:                                               ; preds = %55, %36
  br label %57

57:                                               ; preds = %56, %28
  br label %13

58:                                               ; preds = %21
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @OPAL_SUCCESS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %74

65:                                               ; preds = %58
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @be32_to_cpu(i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @be64_to_cpu(i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %73 = call i32 @opal_to_tm(i32 %70, i32 %71, %struct.rtc_time* %72)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %65, %62
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @opal_rtc_read(i32*, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @opal_poll_events(i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @opal_to_tm(i32, i32, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
