; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_apr.c_apr_device_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_apr.c_apr_device_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.apr_device = type { i64, i64 }
%struct.apr_driver = type { %struct.apr_device_id* }
%struct.apr_device_id = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @apr_device_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apr_device_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.apr_device*, align 8
  %7 = alloca %struct.apr_driver*, align 8
  %8 = alloca %struct.apr_device_id*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.apr_device* @to_apr_device(%struct.device* %9)
  store %struct.apr_device* %10, %struct.apr_device** %6, align 8
  %11 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %12 = call %struct.apr_driver* @to_apr_driver(%struct.device_driver* %11)
  store %struct.apr_driver* %12, %struct.apr_driver** %7, align 8
  %13 = load %struct.apr_driver*, %struct.apr_driver** %7, align 8
  %14 = getelementptr inbounds %struct.apr_driver, %struct.apr_driver* %13, i32 0, i32 0
  %15 = load %struct.apr_device_id*, %struct.apr_device_id** %14, align 8
  store %struct.apr_device_id* %15, %struct.apr_device_id** %8, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %18 = call i64 @of_driver_match_device(%struct.device* %16, %struct.device_driver* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %59

21:                                               ; preds = %2
  %22 = load %struct.apr_device_id*, %struct.apr_device_id** %8, align 8
  %23 = icmp ne %struct.apr_device_id* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %59

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %55, %25
  %27 = load %struct.apr_device_id*, %struct.apr_device_id** %8, align 8
  %28 = getelementptr inbounds %struct.apr_device_id, %struct.apr_device_id* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.apr_device_id*, %struct.apr_device_id** %8, align 8
  %33 = getelementptr inbounds %struct.apr_device_id, %struct.apr_device_id* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi i1 [ true, %26 ], [ %35, %31 ]
  br i1 %37, label %38, label %58

38:                                               ; preds = %36
  %39 = load %struct.apr_device_id*, %struct.apr_device_id** %8, align 8
  %40 = getelementptr inbounds %struct.apr_device_id, %struct.apr_device_id* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.apr_device*, %struct.apr_device** %6, align 8
  %43 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %38
  %47 = load %struct.apr_device_id*, %struct.apr_device_id** %8, align 8
  %48 = getelementptr inbounds %struct.apr_device_id, %struct.apr_device_id* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.apr_device*, %struct.apr_device** %6, align 8
  %51 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %59

55:                                               ; preds = %46, %38
  %56 = load %struct.apr_device_id*, %struct.apr_device_id** %8, align 8
  %57 = getelementptr inbounds %struct.apr_device_id, %struct.apr_device_id* %56, i32 1
  store %struct.apr_device_id* %57, %struct.apr_device_id** %8, align 8
  br label %26

58:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %54, %24, %20
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.apr_device* @to_apr_device(%struct.device*) #1

declare dso_local %struct.apr_driver* @to_apr_driver(%struct.device_driver*) #1

declare dso_local i64 @of_driver_match_device(%struct.device*, %struct.device_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
