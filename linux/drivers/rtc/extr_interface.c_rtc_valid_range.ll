; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c_rtc_valid_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c_rtc_valid_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_device = type { i64, i64, i64, i64 }
%struct.rtc_time = type { i32 }

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtc_device*, %struct.rtc_time*)* @rtc_valid_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_valid_range(%struct.rtc_device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.rtc_device* %0, %struct.rtc_device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %9 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %10 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %13 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %16, label %66

16:                                               ; preds = %2
  %17 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %18 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %17)
  store i64 %18, i64* %6, align 8
  %19 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %20 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %25 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  br label %31

27:                                               ; preds = %16
  %28 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %29 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i64 [ %26, %23 ], [ %30, %27 ]
  store i64 %32, i64* %7, align 8
  %33 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %34 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %39 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %42 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %46 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  br label %53

49:                                               ; preds = %31
  %50 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %51 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  br label %53

53:                                               ; preds = %49, %37
  %54 = phi i64 [ %48, %37 ], [ %52, %49 ]
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58, %53
  %63 = load i32, i32* @ERANGE, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %67

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %2
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %62
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @rtc_tm_to_time64(%struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
