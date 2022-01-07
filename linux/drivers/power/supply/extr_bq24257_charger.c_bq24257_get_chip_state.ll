; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24257_charger.c_bq24257_get_chip_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24257_charger.c_bq24257_get_chip_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq24257_device = type { i64 }
%struct.bq24257_state = type { i32, i32, i32 }

@F_STAT = common dso_local global i32 0, align 4
@F_FAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq24257_device*, %struct.bq24257_state*)* @bq24257_get_chip_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24257_get_chip_state(%struct.bq24257_device* %0, %struct.bq24257_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bq24257_device*, align 8
  %5 = alloca %struct.bq24257_state*, align 8
  %6 = alloca i32, align 4
  store %struct.bq24257_device* %0, %struct.bq24257_device** %4, align 8
  store %struct.bq24257_state* %1, %struct.bq24257_state** %5, align 8
  %7 = load %struct.bq24257_device*, %struct.bq24257_device** %4, align 8
  %8 = load i32, i32* @F_STAT, align 4
  %9 = call i32 @bq24257_field_read(%struct.bq24257_device* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %55

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.bq24257_state*, %struct.bq24257_state** %5, align 8
  %17 = getelementptr inbounds %struct.bq24257_state, %struct.bq24257_state* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.bq24257_device*, %struct.bq24257_device** %4, align 8
  %19 = load i32, i32* @F_FAULT, align 4
  %20 = call i32 @bq24257_field_read(%struct.bq24257_device* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %55

25:                                               ; preds = %14
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.bq24257_state*, %struct.bq24257_state** %5, align 8
  %28 = getelementptr inbounds %struct.bq24257_state, %struct.bq24257_state* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.bq24257_device*, %struct.bq24257_device** %4, align 8
  %30 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %25
  %34 = load %struct.bq24257_device*, %struct.bq24257_device** %4, align 8
  %35 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @gpiod_get_value_cansleep(i64 %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = load %struct.bq24257_state*, %struct.bq24257_state** %5, align 8
  %42 = getelementptr inbounds %struct.bq24257_state, %struct.bq24257_state* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  br label %54

43:                                               ; preds = %25
  %44 = load %struct.bq24257_state*, %struct.bq24257_state** %5, align 8
  %45 = getelementptr inbounds %struct.bq24257_state, %struct.bq24257_state* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %50 [
    i32 129, label %47
    i32 128, label %47
    i32 130, label %47
  ]

47:                                               ; preds = %43, %43, %43
  %48 = load %struct.bq24257_state*, %struct.bq24257_state** %5, align 8
  %49 = getelementptr inbounds %struct.bq24257_state, %struct.bq24257_state* %48, i32 0, i32 2
  store i32 0, i32* %49, align 4
  br label %53

50:                                               ; preds = %43
  %51 = load %struct.bq24257_state*, %struct.bq24257_state** %5, align 8
  %52 = getelementptr inbounds %struct.bq24257_state, %struct.bq24257_state* %51, i32 0, i32 2
  store i32 1, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %47
  br label %54

54:                                               ; preds = %53, %33
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %23, %12
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @bq24257_field_read(%struct.bq24257_device*, i32) #1

declare dso_local i32 @gpiod_get_value_cansleep(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
