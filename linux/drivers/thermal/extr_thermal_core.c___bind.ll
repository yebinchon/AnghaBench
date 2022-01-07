; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_core.c___bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_core.c___bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i32 }
%struct.thermal_cooling_device = type { i32 }

@THERMAL_NO_LIMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thermal_zone_device*, i32, %struct.thermal_cooling_device*, i64*, i32)* @__bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bind(%struct.thermal_zone_device* %0, i32 %1, %struct.thermal_cooling_device* %2, i64* %3, i32 %4) #0 {
  %6 = alloca %struct.thermal_zone_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.thermal_cooling_device*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.thermal_cooling_device* %2, %struct.thermal_cooling_device** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %63, %5
  %16 = load i32, i32* %11, align 4
  %17 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %6, align 8
  %18 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %66

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %11, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %62

27:                                               ; preds = %21
  %28 = load i64, i64* @THERMAL_NO_LIMIT, align 8
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* @THERMAL_NO_LIMIT, align 8
  store i64 %29, i64* %14, align 8
  %30 = load i64*, i64** %9, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load i64*, i64** %9, align 8
  %34 = load i32, i32* %11, align 4
  %35 = mul nsw i32 %34, 2
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %33, i64 %36
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %14, align 8
  %39 = load i64*, i64** %9, align 8
  %40 = load i32, i32* %11, align 4
  %41 = mul nsw i32 %40, 2
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %39, i64 %43
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %13, align 8
  br label %46

46:                                               ; preds = %32, %27
  %47 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %6, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %8, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* %14, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @thermal_zone_bind_cooling_device(%struct.thermal_zone_device* %47, i32 %48, %struct.thermal_cooling_device* %49, i64 %50, i64 %51, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %6, align 8
  %58 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %8, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @print_bind_err_msg(%struct.thermal_zone_device* %57, %struct.thermal_cooling_device* %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %46
  br label %62

62:                                               ; preds = %61, %21
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %15

66:                                               ; preds = %15
  ret void
}

declare dso_local i32 @thermal_zone_bind_cooling_device(%struct.thermal_zone_device*, i32, %struct.thermal_cooling_device*, i64, i64, i32) #1

declare dso_local i32 @print_bind_err_msg(%struct.thermal_zone_device*, %struct.thermal_cooling_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
